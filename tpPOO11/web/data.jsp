<%-- 
    Document   : data
    Created on : 31 de out. de 2021, 21:08:28
    Author     : danto
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrão = new Data();
    
    Data hoje = new Data();
    hoje.setDia(31);
    hoje.setMês(10);
    hoje.setAno(2021);
    
    Data dantonAniversario = new Data(12, 12, 2000);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe</h3>
        <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Meu Aniversário:</h3>
        <div><%= dantonAniversario.getData() %></div>
    </body>
</html>
