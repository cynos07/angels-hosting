package kr.angels.utils.database;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.result.UpdateResult;
import io.vertx.core.json.JsonArray;
import org.bson.Document;

import static com.mongodb.client.model.Filters.eq;

/**
 * Created by production on 2017-04-06.
 */
public enum Database {
    INSTANCE;
    private final String DB_URL = "mongodb://" + SecureConfig.INSTANCE.getString("database.id") + ":" + SecureConfig.INSTANCE.getString("database.password") + "@studygram-shard-00-00-csfwe.mongodb.net:27017,studygram-shard-00-01-csfwe.mongodb.net:27017,studygram-shard-00-02-csfwe.mongodb.net:27017/" + SecureConfig.INSTANCE.getString("database.name") + "?ssl=true&keepAlive=7200&replicaSet=studygram-shard-0&authSource=admin";
    private final String DEFAULT_DB_NAME = "angels-hosting";

    private MongoClientURI uri;
    private MongoClient mongoClient;
    private MongoDatabase mongoDatabase;
    private MongoCollection<Document> collection;
    private Document doc;

    Database() {
        uri = new MongoClientURI(DB_URL);
        mongoClient = new MongoClient(uri);
        mongoDatabase = mongoClient.getDatabase(DEFAULT_DB_NAME);
    }

    private void createCountCollection(String collectionName) {
        Document insertDoc = new Document();
        insertDoc.append("_id", collectionName);
        insertDoc.append("seq", 0);

        mongoDatabase.getCollection("counters").insertOne(insertDoc);
    }

    public void remove(String collection, Document doc)
    {
        mongoDatabase.getCollection(collection).deleteOne(doc);
    }

    public JsonArray findMany(String collection, Document searchQuery)
    {
        return this.findMany(collection, searchQuery, 100, 0);
    }

    public JsonArray findMany(String collection, Document searchQuery, int limit, int lastIndex)
    {
        this.collection = mongoDatabase.getCollection(collection);
        MongoCursor<Document> cursor = this.collection.find(searchQuery).skip(lastIndex).limit(limit).iterator();
        JsonArray jsonArray = new JsonArray();
        while(cursor.hasNext())
            jsonArray.add(cursor.next().toJson());
        return jsonArray;
    }

    public Document findOne(String collection, Document searchQuery)
    {
        this.collection = mongoDatabase.getCollection(collection);
        Document document = this.collection.find(searchQuery).first();
        return document;
    }

    public boolean isExist(String collection, String field, String searchKey)
    {
        Document searchQuery = new Document();
        searchQuery.put(field, searchKey);
        this.collection = mongoDatabase.getCollection(collection);
        MongoCursor<Document> cursor = this.collection.find(searchQuery).iterator();
        if(cursor.hasNext())
            return true;
        return false;
    }

    public void insert(String collection, Document doc)
    {
        this.collection = mongoDatabase.getCollection(collection);
        Document searchCounters = new Document().append("_id", collection);
        if(mongoDatabase.getCollection("counters").count(searchCounters) == 0)
        {
            createCountCollection(collection);
        }
        doc.append("_id", getNextSequence(collection));
        this.collection.insertOne(doc);
    }

    public int update(String collection, int id, Document updateQuery)
    {
        UpdateResult result = mongoDatabase.getCollection(collection).updateOne(eq("_id", id), new Document("$set", updateQuery));
        return (int) result.getModifiedCount();
    }

    public Object getNextSequence(String name)
    {
        Document searchQuery = new Document("_id", name);
        Document increase = new Document("seq", 1);
        Document updateQuery = new Document("$inc", increase);
        Document result = mongoDatabase.getCollection("counters").findOneAndUpdate(searchQuery, updateQuery);

        return result.get("seq");
    }

    public static Database getInstance()
    {
        return INSTANCE;
    }

    public MongoCollection<Document> getCollection() {
        return collection;
    }
    public MongoCollection<Document> getCollection(String collection) {
        this.collection = mongoDatabase.getCollection(collection);
        return this.collection;
    }
}