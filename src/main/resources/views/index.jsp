<%--
  Created by IntelliJ IDEA.
  User: AaronFae
  Date: 2018/3/18
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <script src="bootstrap-3.3.7-dist/js/jquery.min.js" rel="script"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js" rel="script"></script>
    <title>作业共享Up</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="image/Up_White_24px.ico"></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${username==null}">
                    <li><a href="${pageContext.request.contextPath}/login">登录</a></li>
                    <li><a href="${pageContext.request.contextPath}/register">注册</a></li>
                </c:if>
                <c:if test="${username!=null}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">${username}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/home">个人信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/my">我的文件</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/logout">注销</a></li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>^-^作业共享Up</h1>
            <ol class="breadcrumb">
                <li class="active">Up</li>
                <li><a href="${pageContext.request.contextPath}/listWithPaging">文件列表</a></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <form class="form-horizontal" action="upload" method="post" enctype="multipart/form-data">
                <c:if test="${username==null}">
                    <div class="form-group">
                        <label for="uper" class="col-sm-2 control-label">你的名字</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="uper" name="uper" placeholder="你的名字">
                        </div>
                    </div>
                </c:if><c:if test="${username!=null}">
                <div class="form-group">
                    <label for="uper" class="col-sm-2 control-label">你的名字</label>
                    <div class="col-sm-3">
                        <p class="form-control-static">${username}</p>
                        <input type="hidden" class="form-control" id="uper" name="uper" value="${username}" readonly>
                    </div>
                </div>
            </c:if>
                <div class="form-group">
                    <label for="homework" class="col-sm-2 control-label">文件</label>
                    <div class="col-sm-10">
                        <input class="btn btn-default" type="file" id="homework" name="homework">
                        <p class="help-block">该版本为临时版本，仅作测试系统用，已设置上传文件大小不得超过3m，更多BUG请多多指教</p>
                    </div>
                </div>
                <div class="col-md-3 col-md-offset-2">
                    <button type="submit" class="btn btn-default">Up<span class="glyphicon glyphicon-chevron-up"></span>
                    </button>
                    <a href="${pageContext.request.contextPath}/listWithPaging" class="btn btn-default">查看文件
                        <span class="glyphicon glyphicon-folder-open"></span>
                    </a>
                </div>
            </form>
            <br>${msg}
        </div>
    </div>
</div>
</body>
</html>
