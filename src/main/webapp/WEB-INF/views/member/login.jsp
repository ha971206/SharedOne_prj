<%--
  Created by IntelliJ IDEA.
  User: hyeonjong
  Date: 2023/01/04
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"
            integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;300;400;500&display=swap" rel="stylesheet">
    <style>

        body {
            font-family: 'Gothic A1', sans-serif;
            font-weight: 200;
            background-color: #353535;
        }


        h1 {
            font-size: 2em;
            margin: 30px 0;
            font-weight: 500;
            text-align: center;
        }

        h2 {
            font-size: 1.1em;
            margin: 20px 0 10px 0;
        }


        .submitBtn {
            background-color: #598f9b;
            border-color: #598f9b;
            padding: 8px 40px;
            margin-top: 10px;
        }

        .submitBtn:hover,
        .submitBtn:focus{
            background-color: #52727b;
            border-color: #52727b;
        }

        option {
            height: 30px;
            line-height: 30px;
        }


        body {
            background-image: url("/static/img/cat-space.gif");
        }

        .input-group-text{
            width: 150px;
            line-height: 30px;
            background-color: #eeeeee;
        }

        .input-group{
            height: 44px;
        }
        .card-body{
            width: 500px;
            height: 340px;
        }
    </style>
</head>
<body>
<div class="container-fluid d-flex justify-content-center" style="height: 100vh">
    <div class="card align-self-center">
        <div class="card-body">

            <h1>login</h1>

            <form id="registerForm" action="/sharedFive/member/login" method="post">
                <div class="input-group mb-3">
                    <span class="input-group-text">
                         <i class="fa-solid fa-user-large" style="margin-right: 10px"></i>
                        사원 이메일</span>
                    <input type="text" name="username" class="form-control" placeholder="이메일">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text">
                        <i class="fa-solid fa-key" style="margin-right: 10px"></i>
                        비밀번호</span>
                    <input type="password" name="password" class="form-control" placeholder="비밀번호">
                </div>
                <div class="my-4 row justify-content-center">
                    <div class="float-end col-auto">
                        <button type="submit" class="btn btn-primary submitBtn">로그인</button>
                    </div>
                </div>
            </form>
        </div><!--end card body-->
    </div><!--end card-->
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

</body>
</html>
