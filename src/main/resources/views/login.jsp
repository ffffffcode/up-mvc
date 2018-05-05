<%--
  Created by IntelliJ IDEA.
  User: AaronFae
  Date: 2018/5/4
  Time: 17:16
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
    <title>用户登录Up</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
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

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/login">登录</a></li>
                <li><a href="${pageContext.request.contextPath}/register">注册</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>^-^用户登录Up</h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/">Up</a></li>
                <li><a href="${pageContext.request.contextPath}/list">文件列表</a></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <form class="form-horizontal" action="login" method="post">
                <div class="form-group">
                    <label for="inputUsername" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputUsername" placeholder="请输入你tm的用户名"
                               name="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-4">
                        <input type="password" class="form-control" id="inputPassword" placeholder="还有最骚的密码"
                               name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="remember"> Remember me
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">登录</button>
                    </div>
                </div>
            </form>
            <br>${msg}
        </div>
    </div>
</div>
</body>
</html>
