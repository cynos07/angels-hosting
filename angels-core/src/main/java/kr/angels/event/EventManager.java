package kr.angels.event;

import com.google.gson.JsonArray;
import kr.angels.utils.database.Database;
import org.bson.Document;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by cynos07 on 2017-07-10.
 */
public enum EventManager {
    INSTANCE;
    private SimpleDateFormat format;

    public void addEvent(String id, String message)
    {
        format = new SimpleDateFormat("yyyy-MM-dd");
        Database.getInstance().getCollection("events").insertOne(new Document().append("id", id).append("date", new Date()).append("log", message));
    }

    public JsonArray getEvents(String id, String message)
    {
        format = new SimpleDateFormat("yyyy-MM-dd");
        Database.getInstance().getCollection("events").find().iterator();
        return new JsonArray();
    }

    public static EventManager getInstance()
    {
        return INSTANCE;
    }
}
