package com.gtao.net;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-4-24
 * Time: ÉÏÎç10:59
 * To change this template use File | Settings | File Templates.
 */
public class ServerTool extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int fileSize = 10485760;
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Content-Length",String.valueOf(fileSize));
        response.setHeader("Content-Transfer-Encoding","binary");
        PrintWriter pw = response.getWriter();
        for(int i=0;i<fileSize;i++)
        {
            pw.println("a");
        }
        pw.flush();
        pw.close();
    }
}
