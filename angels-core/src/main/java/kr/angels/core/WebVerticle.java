package kr.angels.core;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Vertx;
import io.vertx.ext.auth.AuthProvider;
import io.vertx.ext.auth.oauth2.providers.FacebookAuth;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.*;
import io.vertx.ext.web.sstore.ClusteredSessionStore;
import io.vertx.ext.web.sstore.LocalSessionStore;
import io.vertx.ext.web.sstore.SessionStore;
import io.vertx.ext.web.templ.FreeMarkerTemplateEngine;
import io.vertx.ext.web.templ.TemplateEngine;
import kr.angels.admin.AdminHandler;
import kr.angels.utils.database.Database;


/**
 * Created by production on 2017-04-02.
 */
public class WebVerticle extends AbstractVerticle {

    private static Vertx vertx;
    private static Router router;
    private static Database database;

    private void initialize() {
        vertx = getVertx();
        router = VertxMain.getRouter();
    }

    @Override
    public void start() throws Exception {
        initialize();
        router.route().handler(CookieHandler.create());
        router.route().handler(BodyHandler.create());
        SessionStore store = ClusteredSessionStore.create(vertx);
        router.route().handler(SessionHandler.create(LocalSessionStore.create(vertx)));

        AuthProvider authProvider = FacebookAuth.create(vertx, "1903051689966506", "f6d50c89a4acba8694c3587e4473b588");
        router.route().handler(UserSessionHandler.create(authProvider));
        AuthHandler basicAuthHandler = BasicAuthHandler.create(authProvider);
        AuthHandler redirectAuthHandler = RedirectAuthHandler.create(authProvider, "/loginpage.html");
        // All requests to paths starting with '/private/' will be protected
        router.route("/private/*").handler(redirectAuthHandler);
        router.route("/private/*").handler(StaticHandler.create().setCachingEnabled(false).setWebRoot("private"));

        // Handle the actual login
        // One of your pages must POST form login data
        router.post("/login").handler(FormLoginHandler.create(authProvider));
        router.route("/logout").handler(context -> {
            context.clearUser();
            // Redirect back to the index page
            context.response().putHeader("location", "/").setStatusCode(302).end();
        });

        router.route().handler(CorsHandler.create("*")
                .allowedMethod(io.vertx.core.http.HttpMethod.GET)
                .allowedMethod(io.vertx.core.http.HttpMethod.POST)
                .allowedMethod(io.vertx.core.http.HttpMethod.OPTIONS)
                .allowedHeader("Access-Control-Request-Method")
                .allowedHeader("Access-Control-Allow-Credentials")
                .allowedHeader("Access-Control-Allow-Origin")
                .allowedHeader("Access-Control-Allow-Headers")
                .allowedHeader("Content-Type"));

        //Add Handler
        ResourceHandler resourceHandler = new ResourceHandler();
        resourceHandler.start();
        LoginHandler loginHandler = new LoginHandler();
        loginHandler.start();

        InformHandler informHandler = new InformHandler();
        informHandler.start();

        AdminHandler adminHandler = new AdminHandler();
        adminHandler.start();

        TemplateEngine engine = FreeMarkerTemplateEngine.create();
        TemplateHandler handler = TemplateHandler.create(engine, "webroot", "text/html");
        router.get("/dynamic/*").handler(handler);
        router.route().handler(StaticHandler.create("webroot").setAllowRootFileSystemAccess(true));
    }

    @Override
    public void stop() throws Exception {
        System.out.println("BasicVerticle stopped");
    }

    public static Database getDatabase() {
        return database;
    }

    public static void setDatabase(Database database) {
        WebVerticle.database = database;
    }

    public static Router getRouter() {
        return router;
    }

    public static void setRouter(Router router) {
        WebVerticle.router = router;
    }
}
