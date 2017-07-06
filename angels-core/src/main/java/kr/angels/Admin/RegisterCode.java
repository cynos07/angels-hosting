package kr.angels.Admin;

import java.util.Random;

/**
 * Created by cynos07 on 2017-07-06.
 */
public enum RegisterCode {
    INSTANCE;

    public void createRegisterCode()
    {
        Random rnd =new Random();
        StringBuffer buf =new StringBuffer();

        for(int i=0;i<20;i++){
            if(rnd.nextBoolean()){
                buf.append((char)((int)(rnd.nextInt(26))+97));
            }else{
                buf.append((rnd.nextInt(10)));
            }
        }
    }

    public static RegisterCode getInstance()
    {
        return INSTANCE;
    }
}
