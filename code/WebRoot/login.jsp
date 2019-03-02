<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>yi</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style1.css">
  <!--  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
  <link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
</head>
<body bgcolor="#C0C0C0">

<!-- particles.js container -->
<div id="particles-js"></div>
<!-- scripts -->
<script src="js/particles.js"></script>
<script src="js/app.js"></script>

	<div id="index-box">
            <div class="inner-bg">

                <div class="container">

                    <div class="row" >
                        <div class="col-sm-6 col-sm-offset-3 text">
                            <h1>易校园</h1>

                            <div class="description">
                            	<p>
	                            	
                            	</p>

                            </div>
                        </div>
                    </div>
                  
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>请您输入用户名和密码</h3>
                            		<p></p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                             <%
								if(request.getAttribute("usererror")!=null){
 							 %>
							<div class="alert alert-danger alert-dismissable">
            				<button type="button" class="close" data-dismiss="alert"
                    			aria-hidden="true">
                				&times;
            				</button>
           					${usererror }
        					</div>
        					<%} %>
			                         <form role="form" action="${pageContext.request.contextPath }/login.action" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="user.username" placeholder="请输入账号" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="user.password" placeholder="请输入密码" class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">登录</button>
									<button type="button" class="btn" onclick=" javascript:window.location.href='reg.jsp'">注册</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<hr>


                             <div class="description">
                                <p>
                                    XXXXX组
                                </p>

                            </div>



                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		使用文档
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="adminLogin.jsp">
	                        		我是管理员
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="www。zhaodongge。com">
	                        		联系我们
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
			</div>
            
        </div>


      
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
       

    
</body>
</html>