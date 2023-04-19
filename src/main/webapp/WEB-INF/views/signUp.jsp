<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>a</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>

<style>



</style>

<body>

<form method="post" action="/signUp">
    <div class="container">
        <h1>회원가입</h1>
        <div class="form-group">
            <label for="inputEmail4">userId</label>
            <input type="text" class="form-control" id="inputEmail4" name="userId" placeholder="사용자 아이디">
        </div>
        <div class="form-group">
            <label for="inputAddress">userName</label>
            <input type="text" class="form-control" id="inputAddress" name="userName" placeholder="사용자 이름">
        </div>
        <div class="form-group">
            <label for="inputPassword4">password</label>
            <input type="password" class="form-control" id="inputPassword4" name="userPw" placeholder="사용자 비밀번호">
        </div>
        <button type="submit" class="btn btn-primary">가입 완료</button>
    </div>
</form>


<script>

</script>


</body>
</html>