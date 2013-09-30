<%@ page import="com.gtao.net.IpGetter" %>
<%@ page import="com.gtao.net.UrlGetter" %>
<%@ page import="com.gtao.pojo.SpeedTestUrl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%
        String ipadd = new IpGetter().getIpAddr(request);
    %>
    <link href="css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>
    <script type="text/javascript" src="js/webTest.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if  IE]>
    <script src="js/html5shiv.js"></script>
    <script src="js/HTML5.js"></script>
    <![endif]-->
    <!--[if lte IE 6]>
    <link rel="stylesheet" type="text/css" href="css/bootstrap-ie6.min.css">
    <![endif]-->
    <title></title>
</head>
<body>
<!--网站头，logo-->
<div class="container-narrow">
    <div class="masthead">
        <a href="http://www.gtao.com" target="_blank"><img src="img/1_03.gif"></a>
    </div>
    <!--导航栏-->
    <div class="navbar">
        <div class="navbar-inner">
            <ul class="nav">
                <li><a href="index.jsp">首页</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        网速测试
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="download_test.jsp">宽带接入速度测试</a>
                        </li>
                        <li>
                            <a href="longway_test.jsp">长途网络速度测试</a>
                        </li>
                        <li>
                            <a href="web_test.jsp">网页打开速度测试</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--网站头结束-->
<!--网站主体部分-->
<div class="container-fluid">
    <div class="row-fluid">
        <!--左侧导航栏-->
        <div class="span3">
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header">分组</li>
                <li class="active"><a href="index.jsp"><i class="icon-play-circle"></i>&nbsp;在线测速</a></li>
                <li><a href="#"><i class="icon-file"></i>&nbsp;使用说明</a></li>
                <li><a href="Statement.jsp"><i class="icon-book"></i>&nbsp;测速FAQ</a></li>
                <li><a href="Responsibility.jsp"><i class="icon-warning-sign"></i>&nbsp;免责声明</a></li>
            </ul>
        </div>
        <!--左侧导航栏  结束-->
        <!--右侧主页面-->
            <div class="span8">
                <div class="alert alert-success">
                   提示信息：系统会对以下表格内所有网址进行响应速度检测，这里测试的速度是该网站响应的速度，而
                    不是网站全部加载完成的速度。
                </div>
                <form name="testList" id="testList">
                    <div class="row-fluid">
                    <div class="span8">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>网站：</th>
                            <th>地址：</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List li = new ArrayList();
                            li = new UrlGetter().getUrl();
                            Iterator it = li.iterator();
                            SpeedTestUrl urlBean = null;
                            while (it.hasNext()){
                                urlBean = (SpeedTestUrl)it.next();
                        %>
                        <tr>
                            <td><%=urlBean.getName()%>：</td>
                            <td><a href="<%=urlBean.getUrl()%>" target="_blank"><%=urlBean.getUrl()%></a><input type="hidden" value="<%=urlBean.getUrl()%>"></td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                    </div>
                    <div class="span4" id="result">
                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>结果</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td id="txt0">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt1">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt2">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt3">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt4">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt5">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt6">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt7">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt8">未测试</td>
                            </tr>
                            <tr>
                                <td id="txt9">未测试</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                 </div>
                    <div class="span11" style="text-align: center">
                    <button class="btn btn-large btn-success btn-primary" type="button" id="begin_btn" onclick="webTest()">开始测试</button>
                    </div>
                </form>
            </div>
        <!--右侧主页面 结束-->
    </div>
</div>
<!--网站主体 结束-->
<hr>
<div class="container">
    <p class="muted credit">版权所有：<a href="http://www.gtao.com" target="_blank">北京观滔高科技有限公司</a>&nbsp;&nbsp;联系电话:010-51901234&nbsp;&nbsp;京ICP备08001375号</p>
</div>
</body>
</html>