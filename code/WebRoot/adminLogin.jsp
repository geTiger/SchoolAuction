<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>后台登陆</title>
    
  <link rel="stylesheet" href="css/style-admin.css" media="screen" type="text/css" />
  </head>
  
  <body>
  <span href="#" class="button" id="toggle-login">Log in</span>

<div id="login">
  <div id="triangle"></div>
  <h1>后台管理</h1>
  <form action="adminLogin.action" method="post">
    <input type="email" placeholder="Email" name="admin.username" />
    <input type="password" placeholder="Password" name="admin.password" />
      <input type="submit" value="Log in" />
 
  </form>
</div>

  <script src='js/jquery.js'></script>

  <script src="js/index.js"></script>
  
  </body>
</html>
