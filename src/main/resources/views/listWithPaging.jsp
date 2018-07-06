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
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <script src="bootstrap-3.3.7-dist/js/jquery.min.js" rel="script"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js" rel="script"></script>
    <title>文件列表up</title>
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
            <h1>^-^文件列表Up</h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/">Up</a></li>
                <li class="active">文件列表</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="text-center">
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
                    <c:forEach items="${HomeworkList.resultList}" var="homework">
                        <tr>
                            <td>${homework.get("uper")}</td>
                            <td><a href="download?fileName=${homework.get("filename")}">${homework.get("filename")}</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="${pageContext.request.contextPath}/listWithPaging?page=1" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <c:forEach begin="1" end="${HomeworkList.totalPages}" step="1" var="i">
                            <li><a href="${pageContext.request.contextPath}/listWithPaging?page=${i}">${i}</a></li>
                        </c:forEach>
                        <li>
                            <a href="${pageContext.request.contextPath}/listWithPaging?page=${HomeworkList.totalPages}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
</body>
</html>
