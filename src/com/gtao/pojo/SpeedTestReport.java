package com.gtao.pojo;

/**
 * Created with IntelliJ IDEA.
 * User: HP
 * Date: 13-6-6
 * Time: ÏÂÎç3:33
 * To change this template use File | Settings | File Templates.
 */
public class SpeedTestReport {
    private Integer id;
    private String ipadd;
    private String os;
    private String browser;
    private String itime;
    private String avgSpeed;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIpadd() {
        return ipadd;
    }

    public void setIpadd(String ipadd) {
        this.ipadd = ipadd;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getItime() {
        return itime;
    }

    public void setItime(String itime) {
        this.itime = itime;
    }

    public String getAvgSpeed() {
        return avgSpeed;
    }

    public void setAvgSpeed(String avgSpeed) {
        this.avgSpeed = avgSpeed;
    }
}
