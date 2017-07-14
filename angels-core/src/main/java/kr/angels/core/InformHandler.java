package kr.angels.core;

import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import kr.angels.utils.database.Database;
import org.bson.Document;

/**
 * Created by cynos07 on 2017-04-17.
 */
public class InformHandler extends WebVerticle {
    private Database database;
    private Router router;

    private void initialize() {
        database = Database.getInstance();
        router = getRouter();
    }

    public void start() {
        initialize();
        router.get("/dynamic/inform").handler(this::getInform);
    }

    private void getInform(RoutingContext routingContext) {
        HttpServerResponse response = routingContext.response();
        response.setChunked(true);

        if(routingContext.getCookie("ls") != null)
        {
            String id = routingContext.session().get(routingContext.getCookie("ls").getValue());
            if(id != null)
            {
                Document searchQuery = new Document();
                searchQuery.put("id", id);
                Document account = database.findOne("accounts", searchQuery);

                Document result = new Document();
                routingContext.put("name", account.get("id"));
                routingContext.put("uses", database.findMany("informs", searchQuery));
                routingContext.next();
            }
        }
    }
}
