package kr.angels.admin;

import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import kr.angels.core.WebVerticle;
import kr.angels.utils.database.Database;

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

    private void getInform(RoutingContext routingContext) {
        HttpServerResponse response = routingContext.response();
        response.setChunked(true);
            routingContext.put("registerCode", RegisterCode.getInstance().getRegisterCode());
            routingContext.next();
    }
}
