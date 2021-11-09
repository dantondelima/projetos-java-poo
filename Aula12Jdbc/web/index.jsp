<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 19:38:12
    Author     : danto
--%>
<%@page import="db.TaskConnector"%>
<%@page import="java.util.ArrayList"%>
<% 
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("add") != null){
            String taskName = request.getParameter("taskName");
            TaskConnector.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        
        if(request.getParameter("remove") != null){
            String taskName = request.getParameter("taskName");
            TaskConnector.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = TaskConnector.getTasks();
    }catch(Exception ex){
        requestException = ex;
    }
        
%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To-do list</title>
    </head>
    <body>
        <h1>JDBC - Danton de Lima - 08/11/2021 21:52</h1>
        <% if(DbListener.exception != null){ %>
        <div style="color:red">
           Erro na criação do BD <%= DbListener.exception.getMessage() %>
        </div>
        <% } %>
        <% if(requestException != null){ %>
        <div style="color:red">
           Erro na leitura ou gravação das tarefas <%= requestException.getMessage() %>
        </div>
        <% } %>
        <form>
            <input type="text" name="taskName">            
            <input type="submit" name="add" value="+">
        </form>
        <table>
            <% for (String taskName: taskList) { %>
                <tr>
                    <td><%= taskName %></td>
                    <td>
                        <form>
                            <input type="hidden" name="taskName" value="<%= taskName %>">            
                            <input type="submit" name="remove" value="-">
                        </form>
                    </td>
                </tr>
            <% } %>
        </table>
    </body>
</html>
