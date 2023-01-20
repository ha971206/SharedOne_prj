<%--
  Created by IntelliJ IDEA.
  User: hyeonjong
  Date: 2023/01/02
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내 정보 수정</title>
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
            background-color: #eeeeee;
        }


        .table {
            --bs-table-bg: #fff;
        }


        tr, td {
            height: 55px;
            line-height: 40px;
        }

        h1 {
            font-size: 1.7em;
            margin: 30px 0;
        }



        #submitBtn  {
            background-color: #598f9b;
            border-color: #598f9b;
            color:#fff;
            padding : 5px 30px;
        }

        .table-active {
            width: 250px;

        }

        .form-control {
            width: 250px;
        }

        .inputLength {
            width: 400px;
        }


        option {
            height: 30px;
            line-height: 30px;
        }


    </style>
</head>
<body>
<input type="hidden" value="${member.m_member_email}" id="memberEmail">
<div class="row">
    <div class="col-6 col-sm-2">
        <my:header></my:header>
    </div>
    <div class="col">
        <div class="container">
            <h1><i class="fa-solid fa-pen-nib" style="margin-right: 10px;"></i>회원정보 수정</h1>
            <table class="table">
                <thead>
                <tr>
                    <td class="table-active">이름</td>
                    <td>${member.m_member_id}</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="table-active">
                        이메일
                    </td>
                    <td>
                        ${member.m_member_email }
                    </td>
                </tr>
                <tr>
                    <td class="table-active">직급</td>
                    <td>${member.m_authority_grade}</td>
                </tr>
                <form method="post" enctype="multipart/form-data" action="" id="changePassword">
                    <tr>
                        <td class="table-active">
                            기존비번
                        </td>
                        <td>
                            <%--                        <input type="text" id="oldPassword" name="oldPassword" class="inputLength">--%>
                            <input class="form-control inputLength" type="text"
                                   aria-label="default input example" id="oldPassword" name="oldPassword">
                        </td>
                        <div style="color: red" id="inputText"></div>
                        </td>
                    </tr>
                    <div id="passwordDiv" style="display: none">
                        <tr>
                            <td class="table-active">
                                새비번
                            </td>
                            <td>
                                <%--                            <input type="password" class="inputLength" id="newPassword1">--%>
                                <input class="form-control inputLength" type="password"
                                       aria-label="default input example" id="newPassword1">
                            </td>
                        </tr>
                        <tr>
                            <td class="table-active">
                                새비번확인
                            </td>
                            <td>
                                <%--                            <input type="password" class="inputLength" id="newPassword2" name="m_member_password">--%>
                                <input class="form-control inputLength" type="password"
                                       aria-label="default input example" id="newPassword2" name="m_member_password">
                                <div style="color: red" id="newPassword2Text"></div>
                            </td>
                        </tr>
                    </div>
                </form>
                </tbody>
            </table>
            <div>
                <input type="submit" class="btn" value="수정" disabled id="submitBtn">
            </div>
            <div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 style="font-family: 'LINESeedKR-Bd'" class="modal-title fs-5" id="exampleModalLabel">수정
                                확인</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            수정하시겠습니까?
                        </div>
                        <div class="modal-footer">
                            <button style="font-family: 'LINESeedKR-Bd'" type="button" class="btn btn-secondary"
                                    data-bs-dismiss="modal">취소
                            </button>
                            <button style="font-family: 'LINESeedKR-Bd'" id="modifyConfirmButton" type="button"
                                    class="btn btn-primary">
                                확인
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

<script>
    const ctx = "${pageContext.request.contextPath}";


    document.querySelector("#modifyConfirmButton").addEventListener("click", function () {
        document.querySelector("#modifyForm").submit();
    });

    const customerPasswordInput1 = document.querySelector("#newPassword1");
    const customerPasswordInput2 = document.querySelector("#newPassword2");
    checkedOldPassword = false;

    function matchPassword() {
        checkedPassword = false;

        const samePassword1 = customerPasswordInput1.value;
        const samePassword2 = customerPasswordInput2.value;

        if (samePassword1 == samePassword2) {
            newPassword2Text.innerText = "비밀번호가 일치합니다"
            newPassword2Text.removeAttribute("style");
            checkedPassword = true;
            if (checkedPassword && checkedOldPassword) {
                document.querySelector("#submitBtn").removeAttribute("disabled");
            }
        } else {
            newPassword2Text.innerText = "비밀번호가 일치하지 않습니다"
            newPassword2Text.setAttribute("style", "color:red");
        }
    }

    document.querySelector("#newPassword1").addEventListener("keyup", matchPassword);
    document.querySelector("#newPassword2").addEventListener("keyup", matchPassword);

    document.querySelector("#submitBtn").addEventListener("click", function () {
        document.querySelector("#changePassword").submit;
    })


    document.querySelector("#oldPassword").addEventListener("blur", function () {
        checkedOldPassword = false;

        const m_member_email = document.querySelector("#memberEmail").value;
        const m_member_password = document.querySelector("#oldPassword").value;

        const member = {m_member_email, m_member_password};

        fetch(`\${ctx}/member/checkPassword`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(member)
        })
            .then(res => res.json())
            .then(data => {
                document.querySelector("#inputText").innerText = data.message;
                $(function () {
                    $('#inputText').css("color", "red");
                })
                if (data.statusNum === 'not exist') {
                    $(function () {
                        $('#inputText').css("color", "black");
                    })
                    document.querySelector('#passwordDiv').style.display = "block";

                    return checkedOldPassword = true;
                }
            })
    })
</script>

</body>
</html>
