<%--
  Created by IntelliJ IDEA.
  User: hyeonjong
  Date: 2023/01/04
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원 관리</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300">
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
        .pagination {
            position: relative;
            justify-content: center;
            height: 50px;
            /*right: 10%;*/
        }

        .pagination a {
            z-index: 2;
            position: relative;
            display: inline-block;
            color: #2c3e50;
            text-decoration: none;
            /*font-size: 1.2rem;*/
            padding: 9px 15px 4px;
            font-family: 'Open Sans', sans-serif;
        }

        .pagination a:before {
            z-index: -1;
            position: absolute;
            height: 100%;
            width: 100%;
            content: "";
            top: 0;
            left: 0;
            background-color: #2c3e50;
            border-radius: 24px;
            transform: scale(0);
            transition: all 0.2s;
        }

        .pagination a:hover,
        .pagination a .pagination-active {
            color: #fff;
        }

        .pagination a:hover:before,
        .pagination a .pagination-active:before {
            transform: scale(1);
        }

        .pagination .pagination-active {
            color: #fff;
        }

        .pagination .pagination-active:before {
            transform: scale(1);
        }

        .pagination-newer, .pagination-older {
            border-style: solid;
            border-width: 0;
            border-radius: 20px;
            padding: 9px 10px !important;
            margin-bottom: 13px;
        }

        .itemRegisterBtn {
            position: relative;
        }


        .table {
            --bs-table-bg: #fff;
        }

        .table.addList {
            --bs-table-bg: #5f7175;
            --bs-table-color: #fff;
            text-align: center;
            font-size: 16px;
        }

        h1 {
            font-size: 1.7em;
            margin: 30px 0;
        }

        h2 {
            font-size: 1.1em;
            margin: 20px 0 10px 0;
        }

        tr{
            height: 55px;
        }

        .table td {
            background-color: #fff;
            color: #37393b;
            text-align: center;
            font-size: 16px;
            font-weight: bold;

        }

        .tableList {
            background-color: #fff;
            height: 672px;
        }

        td > a {
            color: #37393b;
            background-color: #fff;
            text-decoration: none;
        }

        .memberBtn {
            background-color: #598f9b;
            color: #fff;
            /*border-radius: 0;*/
            border: none;
            padding: 5px 30px;
        }

        .memberBtn:hover,
        .memberBtn:focus{
            background-color: #52727b;
        }

        .row {
            --bs-gutter-x: 0;
        }


        form > * {
            background-color: white;
            position: relative;
        }


        #selectForm {
            margin-bottom: 0;
        }

        .itemRegisterBtn {
            float: right;
            margin-top: 20px;
        }

        .itemRegisterBtn button {
            background-color: #658e99;
            text-align: center;
            width: 150px;
            height: 55px;
            color: #fff;
            line-height: 39px;
            border: none;
        }

        form div div, label {
            background-color: white;
        }

        .changeBtn{
            height: 36px;
            background-color: #598f9b;
            border: none;
        }
        .resetBtn{
            background-color: #598f9b;
            border: none;
            padding: 7px 30px;

        }
        .changeBtn:hover,
        .changeBtn:focus{
            background-color: #52727b;
        }

        .btn:hover{
            background-color: #52727b;

        }
        .btn-danger{
            background-color: #dc3545;
            border-color: #dc3545;
        }
        .btn-danger:hover,
        .btn-danger:focus{
            background-color: #b13939;
            border-color: #b13939
        }


    </style>
</head>
<body>
<div class="row">
    <div class="col-6 col-sm-2">
        <my:header></my:header>
    </div>
    <div class="col">
        <div class="container">
            <div class="row justify-content-between">
                <div class=" col-4">
                    <h1 id="header">회원 관리</h1>
                </div>
                <div class="itemRegisterBtn col-auto">
                    <c:url value="/member/register" var="registerLink"/>
                    <button type="button" class="btn btn-secondary memberBtn" onclick="location.href='${registerLink}' ">
                        회원 등록
                    </button>
                </div>
            </div>


            <div class="tableList">
                <table class="table addList">
                    <thead>
                    <tr style="height: 55px; line-height: 40px;">
                        <th>이름</th>
                        <th>이메일</th>
                        <th>직함</th>
                        <th>비밀번호</th>
                        <th>

                        </th>

                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${memberList }" var="member" varStatus="status">
                        <tr>
                            <td>
                                    ${member.m_member_id  }
                            </td>
                            <td>
                                    ${member.m_member_email }
                            </td>
                            <td class="row justify-content-center">
                                <form id="selectForm${status.index}" class="col-5" method="post" style="margin:0;">
                                    <input type="hidden" name="m_member_email" value="${member.m_member_email}">
                                    <input type="hidden" name="m_authority_id" id="authId${status.index}"
                                           value="${member.m_authority_id}">
                                    <select class="form-select" id="inputGroupSelect${status.index}">
                                        <option selected name="m_authority_id"
                                                value="${member.m_authority_id}">${member.m_authority_grade}</option>
                                        <c:forEach items="${authority }" var="authority">
                                            <c:if test="${member.m_authority_grade ne authority.m_authority_grade}">
                                                <option name="m_authority_id"
                                                        value="${authority.m_authority_id}">${authority.m_authority_grade}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </form>
                                <button class="btn btn-primary col-4 changeBtn" type="submit" id="gradeSubmit${status.index}">변경
                                </button>
                            </td>
                            <script>
                                $(document).ready(function () {
                                    $("#inputGroupSelect${status.index}").change(function () {
                                        $('#authId${status.index}').val($(this).val());
                                    })
                                })

                                document.querySelector('#gradeSubmit${status.index}').addEventListener('click', function () {
                                    document.querySelector('#selectForm${status.index}').submit();
                                })
                            </script>


                            <td>
                                <c:url value="/member/resetPassword" var="modifyLink">
                                    <c:param value="${member.m_member_email }" name="m_member_email"/>
                                </c:url>
                                <a href="${modifyLink}" style="color: white">
                                    <button class="btn btn-primary resetBtn">초기화</button>
                                </a>
                            </td>
                            <td>
                                <c:url value="/member/remove" var="removeLink">
                                    <c:param value="${member.m_member_email }" name="m_member_email"/>
                                </c:url>
                                <input class="btn btn-danger" type="submit" value="삭제하기" data-bs-toggle="modal"
                                       data-bs-target="#removeModal${member.m_member_id }">
                            </td>
                        </tr>
                        <form id="removeForm${member.m_member_id }" action="${removeLink }" method="post">
                            <input type="hidden" name="m_member_email" value="${member.m_member_email }">
                        </form>
                        <div class="modal fade" id="removeModal${member.m_member_id }" tabindex="-1"
                             aria-labelledby="exampleModalLabell"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5"
                                            id="exampleModalLabell">삭제 확인</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        "${member.m_member_id }" 님을 삭제하시겠습니까?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">취소
                                        </button>
                                        <button
                                                id="removeConfirmButton${member.m_member_id }" type="button"
                                                class="btn btn-danger">확인
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            document.querySelector("#removeConfirmButton${member.m_member_id }").addEventListener("click", function () {
                                document.querySelector("#removeForm${member.m_member_id }").submit();
                            })
                        </script>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col">
                        <nav aria-label="pagination-container" style="background-color: #fff">
                            <div class="pagination">

                                <%-- 맨앞 버튼( 1페이지가 아니면 생김) --%>
                                <c:if test="${memberDto.currentPageNumber ne 1 }">
                                    <c:url value="/member/manage" var="listLink">
                                        <c:param name="page" value="1"/>
                                    </c:url>
                                    <%-- 맨앞 버튼 --%>
                                    <a href="${listLink }" class="pagination-newer">
                                        <i class="bi bi-chevron-double-left"></i>
                                    </a>
                                </c:if>

                                <c:if test="${memberDto.hasPrevButton }">
                                    <c:url value="/member/manage" var="listLink">
                                        <c:param name="page" value="${memberDto.jumpPrevPageNumber }"></c:param>
                                    </c:url>
                                    <a href="${listLink }" class="pagination-newer">
                                        <i class="bi bi-chevron-left"></i>
                                    </a>
                                </c:if>

                                <c:forEach begin="${memberDto.leftPageNumber}" end="${memberDto.rightPageNumber}"
                                           var="pageNumber">
                                    <c:url value="/member/manage" var="listLink">
                                        <c:param name="page" value="${pageNumber }"/>
                                    </c:url>
                                    <span class="pagination-inner">
                              <%-- 현재페이지에 active 클래스 추가 --%>
                                <a class="${buyerDto.currentPageNumber eq pageNumber ? 'pagination-active' : ''}"
                                   href="${listLink}">${pageNumber}</a>
                            </span>
                                </c:forEach>

                                <%-- 다음 버튼 --%>
                                <c:if test="${memberDto.hasNextButton }">
                                    <c:url value="/member/manage" var="listLink">
                                        <c:param name="page" value="${memberDto.jumpNextPageNumber }"></c:param>
                                    </c:url>
                                    <a href="${listLink }" class="pagination-older">
                                        <i class="bi bi-chevron-right"></i>
                                    </a>
                                </c:if>

                                <%-- 맨뒤 버튼 --%>
                                <c:if test="${memberDto.currentPageNumber ne memberDto.lastPageNumber }">
                                    <c:url value="/member/manage" var="listLink">
                                        <c:param value="${memberDto.lastPageNumber }" name="page"/>
                                    </c:url>
                                    <a href="${listLink }" class="pagination-older">
                                        <i class="bi bi-chevron-double-right"></i>
                                    </a>
                                </c:if>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('.pagination-inner a').on('click', function () {
        $(this).siblings().removeClass('pagination-active');
        $(this).addClass('pagination-active');
    })
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>


</body>
</html>
