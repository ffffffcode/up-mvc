<%--
  Created by IntelliJ IDEA.
  User: AaronFae
  Date: 2018/3/18
  Time: 0:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <title>文件列表up</title>
</head>
<body>
<div class="container-fluid">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>^-^文件列表Up</h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/">Up</a></li>
                <li class="active">文件列表</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table class="table table-condensed">
                <thead>
                <tr>
                    <th>
                        上传者
                    </th>
                    <th>
                        文件列表
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${HomeworkList}" var="homework">
                    <tr>
                        <td>${homework.get("uper")}</td>
                        <td><a href="download?fileName=${homework.get("filename")}">${homework.get("filename")}</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table class="table table-condensed">
                <thead>
                <tr>
                    <th>
                        上传者
                    </th>
                    <th>
                        文件列表
                    </th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
