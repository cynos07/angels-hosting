package kr.angels.core;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Vertx;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.StaticHandler;

/**
 * Created by production on 2017-04-02.
 */
public class StudyVerticle extends AbstractVerticle {

    public static final String webroot = "kr.studygram.core";

    @Override
    public void start() throws Exception {
        System.out.println("start called");
        Vertx vertx = getVertx();
        Router router = Router.router(vertx);
        router.route().handler(StaticHandler.create("WEB-INF"));
        vertx.createHttpServer().requestHandler(router::accept).listen(1234);
    }

    @Override
    public void stop() throws Exception {
        System.out.println("BasicVerticle stopped");
    }
}
