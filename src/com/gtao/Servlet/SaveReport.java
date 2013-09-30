package com.gtao.Servlet;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import com.gtao.pojo.SpeedTestReport;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-6-6
 * Time: ÏÂÎç3:08
 * To change this template use File | Settings | File Templates.
 */
public class SaveReport extends HttpServlet {
    private static ServiceRegistry serviceRegistry;
    private static SessionFactory sessionFactory;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ipadd = request.getParameter("ipadd");
        String os = request.getParameter("os");
        String browser = request.getParameter("browser");
        String itime = request.getParameter("itime");
        String avgSpeed = request.getParameter("avgSpeed");
        sessionFactory = configureSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        SpeedTestReport report = new SpeedTestReport();
        report.setIpadd(ipadd);
        report.setOs(os);
        report.setBrowser(browser);
        report.setItime(itime);
        report.setAvgSpeed(avgSpeed);
        session.save(report);
        session.getTransaction().commit();
        session.clear();
        session.close();
        sessionFactory.close();
    }

    private static SessionFactory configureSessionFactory() throws HibernateException {
        Configuration configuration = new Configuration();
        configuration.configure();
        serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        return sessionFactory;
    }
}
