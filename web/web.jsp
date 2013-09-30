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
<!-- ���
================================================== -->
<div class="container">
        <div class="row-fluid">
            <div class="alert alert-success">
                ��ʾ��Ϣ��ϵͳ��һЩ������ַ������Ӧ�ٶȼ�⣬������Ե��ٶ��Ǹ���վ��Ӧ���ٶȣ���������վȫ��������ɵ��ٶȡ�
            </div>
            <table class="table table-bordered table-striped" id="urlTbl" hidden>
                <thead>
                <tr>
                    <th>��վ��</th>
                    <th>��ַ��</th>
                    <th>�����</th>
                </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
            </table>
        </div>
    <div class="jumbotron" style="text-align: center">
        <button class="btn btn-large btn-primary" type="button" onclick="webTest()">��ʼ����</button>
    </div>
</div>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">
    <!-- FOOTER -->
    <hr>
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
<script src="js/web.js"></script>
</body>
</html>
