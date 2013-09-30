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

    <title>观滔用户自助测速平台</title>

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
                <button class="btn btn-large btn-primary" type="button" onclick="test()">开始测试</button>
            </div>
            <div class="alert alert-success">
                <strong>注意：</strong>
                下载测速是指电脑上网时下载文件的速度测试，受线路、电脑使用环境以及使用的网络
                应用等多因素影响，测速前建议您先查看网络环境。规避一些对测速数据产生影响的问题。
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
        <p class="muted credit" style="text-align: center">版权所有：<a target="_blank" href="http://www.gtao.com">北京观滔高科技有限公司</a>&nbsp;&nbsp;联系电话:010-51901234&nbsp;&nbsp;京ICP备08001375号</p>
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
