package kr.angels.Quartz;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mongodb.client.MongoCursor;
import kr.angels.utils.database.Database;
import org.bson.Document;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by cynos07 on 2017-07-04.
 */
public class DeadlineCheck implements Job {
    private Date deadline;
    private Date now;
    private String userName;
    private SimpleDateFormat format;

    public DeadlineCheck() {
        format = new SimpleDateFormat("yyyy-MM-dd");
    }

    public void execute(JobExecutionContext context) throws JobExecutionException {
        MongoCursor<Document> cursor = Database.getInstance().getCollection("informs").find().iterator();
        while (cursor.hasNext()) {
            try {
                JsonObject data = new JsonParser().parse(cursor.next().toJson()).getAsJsonObject();
                int checkNum = checkDate(format.parse(data.get("deadline").getAsString()), new Date());
                userName = data.get("hosting_id").getAsString();
                Thread remoteDesktopUsers;
                if (checkNum == -1) {
                    remoteDesktopUsers = new Thread(new RemoteDesktopUsers(userName, false));
                } else {
                    remoteDesktopUsers = new Thread(new RemoteDesktopUsers(userName, true));
                }
                remoteDesktopUsers.start();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    public int checkDate(Date deadline, Date now) {
        try {
            now = format.parse(format.format(now));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int compare = deadline.compareTo(now);
        if (compare < 0) {
            return -1;
        }
        return 1;
    }
}
