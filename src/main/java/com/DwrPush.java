package com;

import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.proxy.dwr.Util;


import java.util.Collection;

/**
 * Created by yuanjie.fang on 2018/2/26.
 */
public class DwrPush {
    public void Send(String msg){
//        System.out.println(msg);
        //获取webcontext
        WebContext webContext = WebContextFactory.get();
        //获取所有的ScriptSession
        Collection<ScriptSession> sessions = webContext.getAllScriptSessions();
        ScriptBuffer sb = new ScriptBuffer();
        sb.appendScript("callback(");
        sb.appendScript(msg);
        sb.appendScript(")");
        Util util = new Util(sessions);
        util.addScript(sb);
    }
}
