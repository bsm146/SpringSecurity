<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>

<style>


</style>

<body>


<%-- 해당 권한이 있을 경우 --%>
<sec:authorize access="hasRole('ROLE_USER')">
    <p>ROLE_USER</p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <p>ROLE_ADMIN</p>
</sec:authorize>

<%-- 포함된 권한 중 하나라도 있을 경우 --%>
<sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
    <p>ROLE_USER + ROLE_ADMIN</p>
</sec:authorize>

<%-- 권한에 관계없이 로그인 인증을 받은 경우 --%>
<sec:authorize access="isAuthenticated()">
    <p>마이페이지 로그아웃</p>

    <p>principal : <sec:authentication property="principal"/></p>
    <p>userNo : <sec:authentication property="principal.userNo"/></p>
    <p>userId : <sec:authentication property="principal.userId"/></p>
    <p>userName : <sec:authentication property="principal.userName"/></p>
    <p>authorities : <sec:authentication property="principal.authorities"/></p>
</sec:authorize>

<%-- 권한이 없는 익명의 사용자일 경우 --%>
<sec:authorize access="isAnonymous()">
    <p>로그인 회원가입</p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER') and principal.userName == '홍길동'">
    <p>ROLE_USER 권한을 가지고 있고 사용자 이름이 '홍길동'인 경우에만 볼 수 있는 내용입니다.</p>
</sec:authorize>

<sec:authentication property="principal.userName" var="userName" />
${userName}



</body>
</html>