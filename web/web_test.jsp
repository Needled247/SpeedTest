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
<!--��վͷ��logo-->
<div class="container-narrow">
    <div class="masthead">
        <a href="http://www.gtao.com" target="_blank"><img src="img/1_03.gif"></a>
    </div>
    <!--������-->
    <div class="navbar">
        <div class="navbar-inner">
            <ul class="nav">
                <li><a href="index.jsp">��ҳ</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        ���ٲ���
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="download_test.jsp">��������ٶȲ���</a>
                        </li>
                        <li>
                            <a href="longway_test.jsp">��;�����ٶȲ���</a>
                        </li>
                        <li>
                            <a href="web_test.jsp">��ҳ���ٶȲ���</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--��վͷ����-->
<!--��վ���岿��-->
<div class="container-fluid">
    <div class="row-fluid">
        <!--��ർ����-->
        <div class="span3">
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header">����</li>
                <li class="active"><a href="index.jsp"><i class="icon-play-circle"></i>&nbsp;���߲���</a></li>
                <li><a href="#"><i class="icon-file"></i>&nbsp;ʹ��˵��</a></li>
                <li><a href="Statement.jsp"><i class="icon-book"></i>&nbsp;����FAQ</a></li>
                <li><a href="Responsibility.jsp"><i class="icon-warning-sign"></i>&nbsp;��������</a></li>
            </ul>
        </div>
        <!--��ർ����  ����-->
        <!--�Ҳ���ҳ��-->
            <div class="span8">
                <div class="alert alert-success">
                   ��ʾ��Ϣ��ϵͳ������±����������ַ������Ӧ�ٶȼ�⣬������Ե��ٶ��Ǹ���վ��Ӧ���ٶȣ���
                    ������վȫ��������ɵ��ٶȡ�
                </div>
                <form name="testList" id="testList">
                    <div class="row-fluid">
                    <div class="span8">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>��վ��</th>
                            <th>��ַ��</th>
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
                            <td><%=urlBean.getName()%>��</td>
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
                                <th>���</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td id="txt0">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt1">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt2">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt3">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt4">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt5">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt6">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt7">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt8">δ����</td>
                            </tr>
                            <tr>
                                <td id="txt9">δ����</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                 </div>
                    <div class="span11" style="text-align: center">
                    <button class="btn btn-large btn-success btn-primary" type="button" id="begin_btn" onclick="webTest()">��ʼ����</button>
                    </div>
                </form>
            </div>
        <!--�Ҳ���ҳ�� ����-->
    </div>
</div>
<!--��վ���� ����-->
<hr>
<div class="container">
    <p class="muted credit">��Ȩ���У�<a href="http://www.gtao.com" target="_blank">�������ϸ߿Ƽ����޹�˾</a>&nbsp;&nbsp;��ϵ�绰:010-51901234&nbsp;&nbsp;��ICP��08001375��</p>
</div>
</body>
</html>