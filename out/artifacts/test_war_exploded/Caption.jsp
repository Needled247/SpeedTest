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
<div class="container-fluid">
    <div class="span9">
        <h1>说明</h1>
        <p class="text-info"><span class="label label-info">Question</span>
            测速结果有时略低于宽带速率的原因？</p>
        <p>答：<strong>宽带速率：</strong>从用户电脑到运营商接入设备之间的最高可达速率。</p>
        <p><strong>下载速率：</strong>也就是您本次的测试结果。指通过网络协议对网络资源进行下载这一过程中的数据传输速度，
            通常用于衡量从用户电脑到资源下载点之间端到端的性能。 由于网络传输损耗和其他因素影响，
            通常情况下您的测试结果有时会略低于您的签约带宽。</p><br>

        <p class="text-info"><span class="label label-success">Notice</span>
            宽带速率与实测速率对照表：</p>
        <!--速率对照表格-->
        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th colspan="2">宽带带宽与下载速率对照表</th>
                <th colspan="3">网速判定标准</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>宽带带宽</td>
                <td>理论下载峰值</td>
                <td>网速偏慢</td>
                <td>网速一般</td>
                <td>网速很快</td>
            </tr>
            <tr>
                <td>1M</td>
                <td>128KB/秒</td>
                <td>低于76KB/秒</td>
                <td>76KB-102KB/秒</td>
                <td>高于102KB/秒</td>
            </tr>
            <tr>
                <td>2M</td>
                <td>256KB/秒</td>
                <td>低于153KB/秒</td>
                <td>153KB-204KB/秒</td>
                <td>高于204KB/秒</td>
            </tr>
            <tr>
                <td>4M</td>
                <td>512KB/秒</td>
                <td>低于307KB/秒</td>
                <td>307KB-409KB/秒</td>
                <td>高于409KB/秒</td>
            </tr>
            <tr>
                <td>10M</td>
                <td>1280KB/秒</td>
                <td>低于768KB/秒</td>
                <td>768KB-1024KB/秒</td>
                <td>高于1024KB/秒</td>
            </tr>
            <tr>
                <td>20M</td>
                <td>2560KB/秒</td>
                <td>低于1536KB/秒</td>
                <td>1536KB-2048KB/秒</td>
                <td>高于2048KB/秒</td>
            </tr>
            </tbody>
        </table><br>
        <p class="text-info"><span class="label label-info">Question</span>
            测速时应注意什么？</p>
        <p>答：<span class="badge badge-success">1</span> 不要中途关闭测速客户端或浏览器，耐心等待测试完成 </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="badge badge-warning">2</span>测速时如运行网络应用，可能影响测速的准确性。测速时建议关闭与网络相关的在线应用，如迅雷、flashget、电驴、pplive、杀毒软件病毒库更新等等。</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="badge badge-important">3</span> 为进一步提高测试结果准确性，建议在不同的时间段多测试几次。</p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            测速相关常用统计单位？</p>
        <p>答：在这里要注意的是传输单位的写法上，两者的定义是不同的，
            用户与观滔的签约带宽使用的是Mbit/秒，而我们在下载时看到的统计单位为字节Byte。
            这些单位之间的换算关系为：
            1Byte=8bit/秒（1字节为8比特），也就是说1M的网速，理论上一秒钟最多可以下载128Kbyte的数据量。
        </p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            测试结果不理想怎么办？</p>
        <p>答：您可以检查一下您的上网环境和计算机状态，看是否有一些程序或其他用户占用了您的带宽，
            也可以选择其他的时段多测试几次试试看。如果始终不理想，
            欢迎您拨打<strong>5190-1234</strong>客户服务热线进行咨询和申告。我们会对您的测试结果进行记录归档，
            并及时帮助您解决问题。</p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            测试结果与其他测试工具不同的原因？</p>
        <p>答：下载速率反映的是用户电脑到测速服务器之间网络及系统的情况，测速服务器部署位置不同，
            下载速率就会有差别。因此，宽带网络是存在波动的，不同下载软件显示的下载速率多少都会存在差异，
            但只要测速数值波动在一个范围内都属于真实情况。</p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            不同时间的测试结果存在差异的原因？</p>
        <p>答：由于互联网是一个开放的网络，不同时间段的网络由于用户量的多少可能存在差异，
            由此造成的网速不稳定的波动属于正常现象，建议您在网络非繁忙时间段多测试几次，
            综合评估您的网络质量，得出的结果会比较准确。</p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            测试结果达标，但仍觉得网速慢？</p>
        <p>答：影响网络质量的因素很多，包括线路、用户电脑、使用环境和用户使用保养，
            以及用户安装何种操作系统、安装哪些应用程序及用户使用正确与否等等。
            建议您在网络非繁忙时间段多测试几次，或者选择市场上的其他测速工具进行对比测试，
            综合评估您的网络质量。</p><br>

        <p class="text-info"><span class="label label-info">Question</span>
            观滔的测速结果真实吗？</p>
        <p>答：观滔宽带用户自主测速平台是根据网络行业网速标准制定的专业测速工具，
            测试结果是完全客观真实的。如您尚有疑虑，可使用其他市场上较流行的测速工具进行测试比较。
            不同下载软件显示的下载速率多少都会存在差异，
            但只要测速数值波动在一个范围内都属于真实情况。</p><br>
    </div>
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
