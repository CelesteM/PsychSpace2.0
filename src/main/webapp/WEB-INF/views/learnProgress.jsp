<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <title>PsychSpace</title>
    <%--Google sign in--%>
    <meta name="google-signin-client_id"
          content="268071146674-5jjt494svk74rt4jb5mu4pik8503qbph.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <%--Google fonts--%>
    <link href='http://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Maven Pro' rel='stylesheet'>
    <%--jQuery--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <%--Bootstrap--%>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css"
          rel="stylesheet"/>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <%--Customized--%>
    <link href='${contextPath}/resources/css/animations.css' rel='stylesheet'>
    <link href='${contextPath}/resources/css/navbar.css' rel='stylesheet'>
    <link href='${contextPath}/resources/css/ps-row-col.css' rel='stylesheet'>
    <link href='${contextPath}/resources/css/style.css' rel='stylesheet'>
</head>

<body>
<div class="navbar-wrapper">
    <jsp:include page="navbar.jsp" />
</div>
<header class="ps-feature-header">
    <div class="center page-banner">
        <img class="img-responsive" src="${contextPath}/resources/img/banner_dummy.png" alt="">
        <!-- Course Title -->
        <h1 class="absolute-text">${courseTitle}</h1>
        <input type="hidden" value="${courseStartDate}" id="course-start-date">
    </div>
    <div class="ps-feature-content">
        <div class="row ps-feature">
            <div class="row ps-text-content">
                <div class="col-lg-2 ps-col-left">
                    <div class="ps-well">
                        <!-- Learn Sidebar for Todos-->
                        <jsp:include page="learnSidebar.jsp"/>
                    </div>
                </div>
                <div class="col-lg-10 ps-col-right">
                    <!-- Learn Navbar -->
                    <%@include file="learn-navbar.html" %>
                </div>
                <div class="col-lg-10 ps-col-right">
                    <!-- Content -->
                    <div class="col-lg">
                        <div class="ps-well">
                            <h2>Percentage Through Course<hr></h2>
                            <input type="hidden" value="${courseProgress}" id="course-progress">
                            <div class="center progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                     aria-valuemin="0" aria-valuemax="100">
                                    ${courseProgress}% Complete
                                </div>
                            </div>
                        </div>
                    <br>
                    </div>
                </div>
            </div>
            <!-- End course -->
        </div>
    </div>
</header>


<%@include file="footer.html" %>
<script src="${contextPath}/resources/js/navbar.js"></script>
<script src="${contextPath}/resources/js/learn.js"></script>
<script src="${contextPath}/resources/js/learnNavbar.js"></script>
<script src="${contextPath}/resources/js/scrollreveal.js"></script>
<script src="${contextPath}/resources/js/animations.js"></script>
</body>

</html>