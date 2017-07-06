package kr.angels.core;

import com.google.common.net.HttpHeaders;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.Cookie;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.Session;
import kr.angels.utils.database.Database;
import org.bson.Document;

/**
 * Created by cynos07 on 2017-04-17.
 */
public class LoginHandler extends WebVerticle {
    private Database database;
    private Router router;

    private void initialize() {
        database = Database.getInstance();
        router = getRouter();
    }

    public void start() {
        initialize();
        router.get("/dynamic/index").handler(this::checkLogin);
        router.get("/dynamic/inform").handler(this::checkLogin);
        router.get("/dynamic/computer").handler(this::checkLogin);
        router.get("/api/checkLogin").handler(this::checkLogin);
        router.get("/api/logout").handler(this::requestLogout);
        router.post("/api/login").handler(this::requestLogin);
    }

    private void requestLogout(RoutingContext routingContext) {
        routingContext.session().remove(routingContext.getCookie("ls").getValue());
        routingContext.removeCookie("ls");
        routingContext.reroute("/dynamic/index");
    }

    private void checkLogin(RoutingContext routingContext) {
        Session session = routingContext.session();
        if(routingContext.getCookie("ls") != null && session.get(routingContext.getCookie("ls").getValue()) != null)
        {
            routingContext.put("isLogined", true);
            routingContext.response().setStatusCode(200);
            routingContext.next();
        }
        else{
            routingContext.put("isLogined", false);
            if(!routingContext.currentRoute().getPath().equals("/dynamic/index")) {
                routingContext.response().setStatusCode(401);
                routingContext.reroute("/dynamic/index");
            }
            routingContext.response().setStatusCode(200);
            routingContext.next();
        }
    }

    private void requestLogin(RoutingContext routingContext) {
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_HEADERS, "Cookie, Origin, X-Requested-With, Content-Type");
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_METHODS, "POST, PUT, PATCH, GET, DELETE, OPTIONS, HEAD, CONNECT");
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "http://localhost:8080/*");
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "http://localhost:8080/");
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_CREDENTIALS, "true");
        routingContext.response().putHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "http://localhost:8080");

        JsonObject json = routingContext.getBodyAsJson();
        String id = json.getString("id");
        String password = json.getString("password");

        HttpServerResponse response = routingContext.response();

        response.setChunked(true);
        if(database.isExist("accounts", "id", id)) {
            if(database.isExist("accounts", "password", password)){
                response.setStatusCode(200);
                Document searchQuery = new Document();
                searchQuery.put("id", id);
                Document account = database.findOne("accounts", searchQuery);
                Session session = routingContext.session();
                session.put(session.id(), id);
                Cookie cookie = Cookie.cookie("ls", session.id());
                cookie.setPath("/");
                cookie.setMaxAge(50000);
                routingContext.addCookie(cookie);
                response.setChunked(true);
                response.end(account.toJson());
            }
            else{
                response.setStatusCode(201);
                JsonObject json_object = new JsonObject();
                json_object.put("error", "invalid password");
                response.end(json_object.toString());
            }
        }
        else{
            response.setStatusCode(202);
            JsonObject json_object = new JsonObject();
            json_object.put("error", "no account found");
            response.end(json_object.toString());
        }
    }
}
