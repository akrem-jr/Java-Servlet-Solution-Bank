<%-- 
    Document   : CreatedUserInfo
    Created on : Feb 20, 2024, 12:28:08 AM
    Author     : ASUS
--%>
<%@page import="jakarta.servlet.http.HttpSession,com.start.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="../style/profile.css">

    </head>
    <body>
        <%
      String as = (String) session.getAttribute(Constants.AS);
      if (as == null || as.isEmpty() || !as.equals(Constants.AGENT)){
            response.sendRedirect("../index.html");
      }
  %>
  
  
            <%
      String name = (String) session.getAttribute(Constants.NAME);
      String account = (String) session.getAttribute("ac_number");
      String  password = (String) session.getAttribute(Constants.PASSWORD);
      
  %>
  
            <div class="card">
      <div class="img-avatar">
          
        </div>
      <div class="card-text">
        <div class="portada">
            
        </div>
        <div class="title-total">   
          <div class="title">Account</div>
          <h2><%=name%></h2>

      <div class="desc">
          <label>Password :<%=password%> </label><br>
            <label>Account  :<%=account%></label>

      </div>
      

      </div>



    </div>
        
    </body>
</html>
