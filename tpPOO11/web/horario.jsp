<%-- 
    Document   : horario
    Created on : 31 de out. de 2021, 21:24:02
    Author     : danto
--%>

<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Horario atual = new Horario(21, 45, 7);
    Horario intervalo = new Horario(20, 40, 0);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE horário</h2>
        <h3>Horário atual:</h3>
        <div><%= atual.getHorario() %></div>
        <h3>Horário do intervalo:</h3>
        <div><%= intervalo.getHorario() %></div>
    </body>
</html>

