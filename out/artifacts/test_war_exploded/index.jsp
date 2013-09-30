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
                    <h1>�����ٶȲ���</h1>
                    <h3>�����������ļ����ٶȡ�</h3>
                    <p><a class="btn btn-large btn-primary" href="download.jsp" role="button">ȥ����</a></p>
                </div>
            </div>
        </div>
        <div class="item" style="background-color: #003366;width: 100%;height: 500px;">
            <div class="container">
                <div class="carousel-caption">
                    <h1>��;�����ٶȲ���</h1>
                    <p>�������Ŀ�����ӵ����ڸ��Ǹ����������</p>
                    <p><a class="btn btn-large btn-primary" href="#" role="button">��δ����</a></p>
                </div>
            </div>
        </div>
        <div class="item" style="background-color: #003366;width: 100%;height: 500px;">
            <div class="container">
                <div class="carousel-caption">
                    <h1>��ҳ���ٶ�</h1>
                    <p>������վ����Ӧ�ٶȣ��Ǵ��ٶȡ� </p>
                    <p><a class="btn btn-large btn-primary" href="#" role="button">ȥ����</a></p>
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
        <p class="muted credit" style="text-align: center">��Ȩ���У�<a target="_blank" href="http://www.gtao.com">�������ϸ߿Ƽ����޹�˾</a>&nbsp;&nbsp;��ϵ�绰:010-51901234&nbsp;&nbsp;��ICP��08001375��</p>
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
