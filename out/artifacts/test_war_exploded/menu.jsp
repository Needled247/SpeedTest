<%@ page contentType="text/html;charset=GBK" language="java" %>
<div class="navbar-wrapper">
    <div class="container">
        <div class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                </div>
                <div class="navbar-collapse collapse" id="menu">
                    <ul class="nav navbar-nav" >
                        <li><a href="index.jsp">��ҳ</a></li>
                        <li><a href="Caption.jsp">˵��</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">���� <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="download.jsp">�����ٶ�</a></li>
                                <li><a href="#">��;���٣���δ���ţ�</a></li>
                                <li><a href="web.jsp">��ҳ���ٶ�</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--======================js=========================-->
<script src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
    $('#menu').find('a').each(function(){
        if (this.href == document.location.href || document.location.href.search(this.href) >= 0) {
            $(this).closest("li").addClass("active"); // this.className = 'active';
        }
    });
</script>