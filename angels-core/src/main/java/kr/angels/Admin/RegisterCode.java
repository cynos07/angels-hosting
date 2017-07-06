package kr.angels.Admin;

import kr.angels.utils.database.Database;
import org.bson.Document;

import java.util.Random;

/**
 * Created by cynos07 on 2017-07-06.
 */
public enum RegisterCode {
    INSTANCE;
    private final int MAX_LENGTH_REGISTERCODE = 9;

    private String createRegisterCode()
    {
        Random rnd =new Random();
        StringBuffer buf =new StringBuffer();

        for(int i=0;i<MAX_LENGTH_REGISTERCODE;i++){
            if(rnd.nextBoolean()){
                buf.append((char)((int)(rnd.nextInt(26))+97));
            }else{
                buf.append((rnd.nextInt(10)));
            }
        }
        return buf.toString().toUpperCase();
    }

    public void refreshRegisterCode()
    {
        Database.getInstance().getCollection("registerCode").updateOne(new Document(), new Document("$set", new Document("value", createRegisterCode())));
    }

    public void checkRegisterCodeExist()
    {
        if(Database.getInstance().getCollection("registerCode").count(new Document()) == 0)
        {
            System.out.println("create new Register Code");
            Database.getInstance().getCollection("registerCode").insertOne(new Document().append("value", createRegisterCode()));
        }
    }

    public String getRegisterCode()
    {
        return Database.getInstance().getCollection("registerCode").find().first().get("value").toString();
    }

    public static RegisterCode getInstance()
    {
        return INSTANCE;
    }
}
