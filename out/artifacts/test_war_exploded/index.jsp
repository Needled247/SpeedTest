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
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active" style="background-color: #003366;width: 100%;height: 500px;">
            <div class="container">
                <div class="carousel-caption">
                    <h1>下载速度测试</h1>
                    <h3>测试您下载文件的速度。</h3>
                    <p><a class="btn btn-large btn-primary" href="download.jsp" role="button">去测试</a></p>
                </div>
            </div>
        </div>
        <div class="item" style="background-color: #003366;width: 100%;height: 500px;">
            <div class="container">
                <div class="carousel-caption">
                    <h1>长途网络速度测试</h1>
                    <p>测试您的宽带连接到国内各骨干网的情况。</p>
                    <p><a class="btn btn-large btn-primary" href="#" role="button">暂未开放</a></p>
                </div>
            </div>
        </div>
        <div class="item" style="background-color: #003366;width: 100%;height: 500px;">
            <div class="container">
                <div class="carousel-caption">
                    <h1>网页打开速度</h1>
                    <p>测试网站的响应速度，非打开速度。 </p>
                    <p><a class="btn btn-large btn-primary" href="#" role="button">去测试</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div><!-- /.carousel -->



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
</body>
</html>
