<%@ page import="com.gtao.net.IpGetter" %>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="GBK">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="image/favicon.png">

    <title>�����û���������ƽ̨</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
<%@include file="menu.jsp"%>
<!-- Main
================================================== -->

<div class="container">
    <div class="hero-unit">
            <div class="container-fluid" id="download-process" style="text-align: center">
                    <div id="container" style="min-width: 80%; height: 400px; margin: 0 auto"></div>
                    <div id="download-text1"></div>
                    <div id="download-avg"></div>
                    <div id="upload-text1"></div>
                    <div id="upload-avg"></div>
            </div>
            <div class="jumbotron" style="text-align: center">
                <button class="btn btn-large btn-primary" type="button" onclick="test()">��ʼ����</button>
            </div>
            <div class="alert alert-success">
                <strong>ע�⣺</strong>
                ���ز�����ָ��������ʱ�����ļ����ٶȲ��ԣ�����·������ʹ�û����Լ�ʹ�õ�����
                Ӧ�õȶ�����Ӱ�죬����ǰ�������Ȳ鿴���绷�������һЩ�Բ������ݲ���Ӱ������⡣
            </div>
    <input type="hidden" id="ipadd" value="<%=new IpGetter().getIpAddr(request)%>">
    </div>
</div>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">
    <!-- FOOTER -->
    <footer>
        <p class="muted credit" style="text-align: center">��Ȩ���У�<a target="_blank" href="http://www.gtao.com">�������ϸ߿Ƽ����޹�˾</a>&nbsp;&nbsp;��ϵ�绰:010-51901234&nbsp;&nbsp;��ICP��08001375��</p>
    </footer>
</div><!-- /.container -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.8.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/holder.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/respond.min.js"></script>
<script type="text/javascript" src="js/down.js"></script>
<script type="text/javascript" src="js/speedtest.js"></script>
<script type="text/javascript" src="js/highcharts.js"></script>
<script type="text/javascript" src="js/highcharts-more.js"></script>
<script type="text/javascript" src="js/exporting.js"></script>
</body>
</html>
