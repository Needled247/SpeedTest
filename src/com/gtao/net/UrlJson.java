package com.gtao.net;

import com.gtao.pojo.SpeedTestUrl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-9-5
 * Time: ÏÂÎç3:46
 * To change this template use File | Settings | File Templates.
 */
public class UrlJson extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List li = new ArrayList();
        li = new UrlGetter().getUrl();
        response.setContentType("text/json;charset=GBK");
        PrintWriter out = response.getWriter();
        StringBuilder sb = new StringBuilder();
        sb.append("{\"comments\":[");
        Iterator it = li.iterator();
        SpeedTestUrl url = null;
        while (it.hasNext()){
            url = (SpeedTestUrl)it.next();
            sb.append("{")
                    .append("\"name\":\""+url.getName()+"\",")
                    .append("\"url\":\""+url.getUrl()+"\"")
                    .append("},");
        }
        if(sb.length()>15){
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("]}");
        out.println(sb);
        out.flush();
        out.close();
    }
}
