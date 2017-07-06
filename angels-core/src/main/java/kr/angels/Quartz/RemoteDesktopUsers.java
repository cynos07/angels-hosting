package kr.angels.Quartz;

import kr.angels.utils.Logger.Logger;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by cynos07 on 2017-07-05.
 */
public class RemoteDesktopUsers implements Runnable {
    private String userName;
    private boolean canRemote;

    RemoteDesktopUsers() {
        canRemote = false;
    }

    RemoteDesktopUsers(String userName, boolean canRemote) {
        this.userName = userName;
        this.canRemote = canRemote;
    }

    @Override
    public void run() {
        try {
            Process proc = Runtime.getRuntime().exec("cmd.exe /c net localgroup \"Remote desktop users\" " + userName + ((canRemote == true) ? " /add" : " /delete"));

//            BufferedReader stdInput = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            BufferedReader stdError = new BufferedReader(new InputStreamReader(proc.getErrorStream(), "EUC-KR"));

            try {
                proc.waitFor();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (proc.exitValue() == 0) {
                Logger.getInstance().log("INFO", userName + "의 원격권한이 해제되었습니다.");
            } else {
                String s = null;
                String errorMsg = "";
                while ((s = stdError.readLine()) != null) {
                    errorMsg += s;
                }
                Logger.getInstance().log("ERROR", userName + "의 원격권한을 해제하는 도중 오류가 발생하였습니다.\n"+errorMsg);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
