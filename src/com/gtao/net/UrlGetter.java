package com.gtao.net;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-6-7
 * Time: ÉÏÎç12:01
 * To change this template use File | Settings | File Templates.
 */
public class UrlGetter {
    private static ServiceRegistry serviceRegistry;
    private static SessionFactory sessionFactory;

    public List getUrl(){
        List li = new ArrayList();
        sessionFactory = configureSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        String hql = "from SpeedTestUrl as url";
        Query query = session.createQuery(hql);
        try {
            li = query.list();
        }
        catch (HibernateException e){
            e.printStackTrace();
        }
        finally {
            session.clear();
            session.close();
            sessionFactory.close();
        }
        return li;
    }

    private static SessionFactory configureSessionFactory() throws HibernateException {
        Configuration configuration = new Configuration();
        configuration.configure();
        serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        return sessionFactory;
    }
}
