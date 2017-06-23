package kr.angels.routers;

import io.vertx.core.Handler;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;

import static kr.angels.core.WebVerticle.getRouter;

/**
 * Created by cynos07 on 2017-05-10.
 */
public class ImageLookUp implements Handler<RoutingContext> {
    private Router router;

    public ImageLookUp() {
        router = getRouter();
    }

    @Override
    public void handle(RoutingContext context) {
        String fileName = context.request().getParam("filename");
        context.response().sendFile("upload-files/" + fileName);
    }
}