package kr.angels.core;

import io.vertx.core.Vertx;
import io.vertx.core.VertxOptions;
import io.vertx.core.http.HttpServer;
import io.vertx.ext.web.Router;

/**
 * Created by production on 2017-03-29.
 */

public class VertxMain {
    private static Vertx vertx;
    private static HttpServer server;
    private static VertxOptions options = new VertxOptions();
    private static Router router;

    private static void initialize() {
        options.setMaxEventLoopExecuteTime(Long.MAX_VALUE);
        vertx = Vertx.vertx(options);
        server = vertx.createHttpServer();
        router = Router.router(vertx);
    }

    public static void main(String[] args) {
        initialize();
        vertx.deployVerticle(new WebVerticle()); // using static Handler, must be after other verticle deploied.
        vertx.createHttpServer().requestHandler(router::accept).listen(8085);
    }

    public static Vertx getVertx() {
        return vertx;
    }

    public static void setVertx(Vertx vertx) {
        VertxMain.vertx = vertx;
    }

    public static Router getRouter() {
        return router;
    }

    public static void setRouter(Router router) {
        VertxMain.router = router;
    }

    public static HttpServer getServer() {
        return server;
    }

    public static void setServer(HttpServer server) {
        VertxMain.server = server;
    }
}
