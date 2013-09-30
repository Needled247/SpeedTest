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
<!-- 表格
================================================== -->
<div class="container">
        <div class="row-fluid">
            <div class="alert alert-success">
                提示信息：系统会一些常用网址进行响应速度检测，这里测试的速度是该网站响应的速度，而不是网站全部加载完成的速度。
            </div>
            <table class="table table-bordered table-striped" id="urlTbl" hidden>
                <thead>
                <tr>
                    <th>网站：</th>
                    <th>地址：</th>
                    <th>结果：</th>
                </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
            </table>
        </div>
    <div class="jumbotron" style="text-align: center">
        <button class="btn btn-large btn-primary" type="button" onclick="webTest()">开始测试</button>
    </div>
</div>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">
    <!-- FOOTER -->
    <hr>
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
<script src="js/web.js"></script>
</body>
</html>
