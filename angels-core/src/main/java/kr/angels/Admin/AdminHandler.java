package kr.angels.Admin;

import com.mongodb.client.MongoCursor;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import kr.angels.core.WebVerticle;
import kr.angels.utils.database.Database;
import kr.angels.utils.database.SecureConfig;
import org.bson.Document;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by cynos07 on 2017-04-17.
 */
public class AdminHandler extends WebVerticle {
    private Database database;
    private Router router;
    private SimpleDateFormat format;

    private void initialize() {
        database = Database.getInstance();
        router = getRouter();
        format = new SimpleDateFormat("yyyy-MM-dd");
    }

    public void start() {
        initialize();
//        router.get("/dynamic/admin").handler(this::checkAdmin);
        router.get("/dynamic/admin").handler(this::getInform);
        router.post("/admin/addComputer").handler(this::addComputer);
//        router.post("/dynamic/admin").handler(this::addInform);
    }

    private void addComputer(RoutingContext routingContext) {
        HttpServerResponse response= routingContext.response();

        JsonObject json = routingContext.getBodyAsJson();
        Calendar c = Calendar.getInstance();
        c.setTime(new Date());
        c.add(Calendar.DATE, json.getInteger("addDays"));
        String deadline = format.format(c.getTime());

        Document doc = new Document();
        doc.put("id", json.getString("id"));
        doc.put("hosting_id", json.getString("hosting_id"));
        doc.put("hosting_pw", json.getString("hosting_pw"));
        doc.put("use_port", "any");
        doc.put("use_ram", json.getInteger("use_ram"));
        doc.put("deadline", deadline);

        database.insert("informs", doc);
        response.setStatusCode(200);
        response.setChunked(true);
        response.end();
    }


    private void checkAdmin(RoutingContext routingContext) {
        System.out.println("checkADmin called!");
        if (routingContext.getCookie("ls") != null) {
            String id = routingContext.session().get(routingContext.getCookie("ls").getValue());
            if ( id != null)
            {
                Document searchQuqery = new Document();
                searchQuqery.put("id", id);
                Database.getInstance().getCollection("accounts").find(searchQuqery).first().get("type");
                if (Database.getInstance().getCollection("accounts").find(searchQuqery).first().get("type").equals("admin")) {
                    routingContext.response().setStatusCode(200);
                    routingContext.next();
                }
                else{
                    if(SecureConfig.getInstance().getString("administrator.id").equals(id))
                    {
                        routingContext.response().setStatusCode(200);
                        routingContext.next();
                    }
                }
            }
            else{
                routingContext.response().setStatusCode(400);
                routingContext.reroute("/dynamic/index");
            }

        }
        else{
            routingContext.response().setStatusCode(400);
            routingContext.reroute("/dynamic/index");
        }
    }

    private void getInform(RoutingContext routingContext) {
        System.out.println("getInform called!");

        HttpServerResponse response = routingContext.response();
        response.setChunked(true);

        MongoCursor<Document> userCursor = Database.getInstance().getCollection("accounts").find().iterator();
        JsonArray userList = new JsonArray();
        Set<String> userNameList = new HashSet<String>();
        while(userCursor.hasNext())
        {
            Document temp = userCursor.next();
            userList.add(temp.toJson());
            userNameList.add(temp.get("id").toString());
        }

        MongoCursor<Document> eventsCursor = Database.getInstance().getCollection("events").find().iterator();
        JsonArray events = new JsonArray();

        Iterator<String> userNameIterator = userNameList.iterator();
        System.out.println(userNameList);
        while(userNameIterator.hasNext())
        {
            MongoCursor<Document> eventCursor = Database.getInstance().getCollection("events").find(new Document().append("id", userNameIterator.next().toString())).iterator();
            while(eventCursor.hasNext())
            {
                events.add(eventCursor.next().toJson());
            }
        }


        routingContext.put("users", userList);
        routingContext.put("events", events);
        routingContext.put("computers", database.findMany("informs", new Document()));
        System.out.println(userList);
        System.out.println(events);
        System.out.println(database.findMany("informs", new Document()));
        routingContext.put("registerCode", RegisterCode.getInstance().getRegisterCode());
        routingContext.next();
    }
}
