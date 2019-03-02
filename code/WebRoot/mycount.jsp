<!DOCTYPE html>
<%@page import="zdg.bean.User"%>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>个人信息 - 易校园</title>
    
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                           <% 
                            User user=(User)request.getSession().getAttribute("user");
                            %>
                            <li><a href="ShowUserDetail?id=${user.id}"><i class="fa fa-user"></i> 我的账户</a></li>
                            <li><a href="cart.jsp"><i class="fa fa-user"></i> 我的购物车</a></li>
                            <li><a href="checkout.jsp"><i class="fa fa-user"></i> 付款</a></li>
                            <li><a href="puton.jsp"><i class="fa fa-user"></i> 上架</a></li>
                            <% 
                            if(user.username==null){%>
                            	<li><a href="login.jsp"><i class="fa fa-user"></i> 登录</a></li>
                             <%}
                             else{%>
                             <li><a href="login.jsp"><i class="fa fa-user"></i> ${user.username}</a></li>
                             <%}%>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.jsp">Cart - <span class="cart-amunt"></span> <i class="fa fa-shopping-cart"></i> <span class="product-count">*</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">主页</a></li>
                        <li><a href="goodslist.jsp">货物列表</a></li>
                        <li><a href="alreadyOnTheShelf.jsp">已上架</a></li>
                        <li><a href="cart.jsp">购物车</a></li>
                        <li><a href="checkout.jsp">付款</a></li>
                        <li><a href="biddersHaveBeenSuccessful.jsp">已竞拍</a></li>
                        <li><a href="failedToSell.jsp">出售失败</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>个人信息</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
										 <table class="table table-striped">
										 	<tbody>
        											<tr><td>用户名</td><td>${oneuser.username}</td></tr><tr></tr>
        											<tr><td>真实姓名</td><td>${oneuser.realname}</td></tr><tr></tr>
        											<tr><td>mail</td><td>${oneuser.useremail}</td></tr><tr></tr>
        											<tr><td>生日</td><td>${oneuser.birthdate}</td></tr><tr></tr>
        											<tr><td>性别</td><td>${oneuser.sex}</td></tr><tr></tr>
        											<tr><td>QQ</td><td>${oneuser.qqnumber}</td></tr><tr></tr>
        											<tr><td>电话号码</td><td>${oneuser.userphone}</td></tr><tr></tr>
        											<tr><td>余额</td><td>${oneuser.yiMoney}</td></tr><tr></tr>
        									</tbody>
    									</table>
	



    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>易<span>校园</span></h2>
                        <p>一个纯属兴趣的无名小站<br><br>by：济南大学 墨冥 泰阁尔<br><br><br><br><br><br></p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">用户导航 </h2>
                        <ul>
                            <li><a href="#">我的账户</a></li>
                            <li><a href="#">订单记录</a></li>
                            <li><a href="#">朝思暮想</a></li>
                            <li><a href="#">服务方联系人</a></li>
                            <li><a href="#">头版</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">种类</h2>
                        <ul>
                            <li><a href="#">手机</a></li>
                            <li><a href="#">衣服/鞋子</a></li>
                            <li><a href="#">书本</a></li>
                            <li><a href="#">电脑及配件</a></li>
                            <li><a href="#">玩具</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">实时通讯</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
  </body>
</html>