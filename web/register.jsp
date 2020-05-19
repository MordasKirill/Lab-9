<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Регистрация нового пользователя</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <style>
        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
    <style>
        .button24 {
            display: inline-block;
            color: white;
            text-decoration: none;
            padding: .5em 2em;
            outline: none;
            border-width: 2px 0;
            border-style: solid none;
            border-color: #FDBE33 #000 #D77206;
            border-radius: 6px;
            background: linear-gradient(#F3AE0F, #E38916) #E38916;
            transition: 0.2s;
        }
        .button24:hover { background: linear-gradient(#f5ae00, #f59500) #f5ae00; }
        .button24:active { background: linear-gradient(#f59500, #f5ae00) #f59500; }
    </style>
</head>
<body>
<jsp:include page="/static/header.jsp"></jsp:include>
<my:layout1Column>
    <div style="; font-size: 30px; height: 53px;
margin-left: 80px;background: chocolate">
        Регистрация нового пользователя
    </div>
    <my:errorMessage />
    <form id="mform" action="doRegister.jsp" method="post">
        <table>
                <%-- body="0" cellspacing="0" cellpadding="10">--%>
            <tr>
                <td>Логин:</td>
                <td><input type="text" name="login" value="${sessionScope.userData.login}"></td>
            </tr>
            <tr>
                <td>Пароль:</td>
                <td><input type="password" name="password" value=""></td>
            </tr>
            <tr>
                <td>Имя:</td>
                <td><input type="text" name="name" value="${sessionScope.userData.name}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="${sessionScope.userData.email}"></td>
            </tr>
            <tr>
                <td></td>
                <td><button>
                    <img src="resources/Loading.gif" alt="" style="vertical-align:middle">
                    Зарегистрироваться

                    </button>

                    <input
                        type="button" class="button24" value="Отменить"
                        onclick="window.location='<c:url value="/index.jsp"/>';"></td>

            </tr>
        </table>
    </form>
</my:layout1Column>
<%@ include file="/static/footer.jsp"%>
</body>
</html>
