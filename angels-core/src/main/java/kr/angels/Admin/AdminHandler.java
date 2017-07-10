package kr.angels.Admin;

import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import kr.angels.Admin.RegisterCode;
import kr.angels.core.WebVerticle;
import kr.angels.utils.database.Database;
import org.bson.Document;

import java.util.Date;

/**
 * Created by cynos07 on 2017-04-17.
 */
public class AdminHandler extends WebVerticle {
    private Database database;
    private Router router;

    private void initialize() {
        database = Database.getInstance();
        router = getRouter();
    }

    public void start() {
        initialize();
        router.get("/dynamic/admin").handler(this::getInform);
//        router.post("/dynamic/admin").handler(this::addInform);
    }

    private boolean isAdmin(RoutingContext routingContext) {
        if (routingContext.getCookie("ls") != null) {
            String id = routingContext.session().get(routingContext.getCookie("ls").getValue());
            Document searchQuqery = new Document();
            searchQuqery.put("id", id);
            Database.getInstance().getCollection("accounts").find(searchQuqery).first().get("type");
            if (Database.getInstance().getCollection("accounts").find(searchQuqery).first().get("type").equals("admin")) {
                return true;
            }
        }
        return false;
    }

    private void getInform(RoutingContext routingContext) {
        HttpServerResponse response = routingContext.response();
        response.setChunked(true);

        if (isAdmin(routingContext)) {

            Document result = new Document();
            routingContext.put("registerCode", RegisterCode.getInstance().getRegisterCode());
            routingContext.next();
        }
    }
}
