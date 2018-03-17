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
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <title>作业共享Up</title>
</head>
<body>
<div class="container-fluid">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>^-^作业共享Up</h1>
            <ol class="breadcrumb">
                <li class="active">Up</li>
                <li><a href="${pageContext.request.contextPath}/list">文件列表</a></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <form class="form-horizontal" action="upload" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="uper" class="col-sm-2 control-label">你的名字</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="uper" name="uper" placeholder="你的名字">
                    </div>
                </div>
                <div class="form-group">
                    <label for="homework" class="col-sm-2 control-label">文件</label>
                    <div class="col-sm-10">
                        <input class="btn btn-default" type="file" id="homework" name="homework">
                        <p class="help-block">该版本为临时版本，仅作测试系统用，已设置上传文件大小不得超过2m，更多BUG请多多指教</p>
                    </div>
                </div>
                <div class="col-md-3 col-md-offset-2">
                    <button type="submit" class="btn btn-default">Up<span class="glyphicon glyphicon-chevron-up"></span>
                    </button>
                    <a href="${pageContext.request.contextPath}/list" class="btn btn-default">查看文件
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
