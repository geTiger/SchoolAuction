<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Page - Ustora Demo</title>
    
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
    
    <link href="css/normalize.css" rel="stylesheet"/>
	<link href="css/jquery-ui.css" rel="stylesheet"/> 
	<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

	<style type="text/css">
	body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
	#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
	#comments{width:350px;height:100px;}
	</style>
  </head>
  <body>
   <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                         <ul>
                        <s:set value="#session.user" name="user"/>
                           
                            <li><a href="showDetial.action"><i class="fa fa-user"></i> 我的账户</a></li>
                            <li><a href="cart.jsp"><i class="fa fa-user"></i> 我的购物车</a></li>
                            <li><a href="checkout.jsp"><i class="fa fa-user"></i> 付款</a></li>
                            <li><a href="puton.jsp"><i class="fa fa-user"></i> 上架</a></li>
                            <li><a href="login.jsp"><i class="fa fa-user"></i><s:property value="#user.realname"/></a></li>
                           
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
  <div class="row">
    <div class="eightcol last">
  <!-- Begin Form -->

 <!--${pageContext.request.contextPath}/-->
    <form id="my-form" action="putOn.action" method="post"  enctype="multipart/form-data"  >
	  	<s:set value="#session.user" name="user"/>
        <section name="个人信息">
		  <div><label>用户名:</label><input id="inputPeople" name="goods.inputPeople" readonly="true" value=${user.username} type="text"/></div>
          <div><label>货物名:</label><input id="name" name="goods.name" type="text"/></div>
        </section>

        <section name="类别">
          <div id="languages">
            <label>类别:</label>
            <label><input type="checkbox" name="type" value="digital"/>科技数码</label>
            <label><input type="checkbox" name="type" value="bodybuding"/>运动健身</label>
            <label><input type="checkbox" name="type" value="book"/>书籍</label>
            <label><input type="checkbox" name="type" value="dress"/>服饰</label>
            <label><input type="checkbox" name="type" value="food"/>吃货</label>
          </div>
        </section>
        <section name="价格">
          <div><label>初始价格:</label><input  id="inputPrice" name="inputPrice" /></div>
           <div><label>保留价:</label><input  id="reservePice" name="reservePice" /></div>
          <!--上架时间 -->
          <div>
          <label>上架时间:</label>
          <select id="sumTime" name="goods.sumTime">
            <option value="default">&ndash; 选择时间 &ndash;</option>
            <option value="12">12小时</option>
            <option value="24">24小时</option>
            <option value="72">3天</option>
            <option value="168">7天</option>
          </select>
          <div><label>上传物品图:</label><input name="goodsImage"  type="file"/></div>
          <div><label>备注:</label><textarea id="comments" name="goods.comments"></textarea></div>
          </div>
           <center>
        <div>
        <button type="submit" class="btn">上架</button>
        <button type="reset" class="btn">重置</button>
        <button type="button" class="btn" onclick=" javascript:window.location.href='index.jsp'">返回主页</button>
      </div>
      </center>
        </div>
      <div><hr/>
      
      </div>

    

    </form>
</div>
</div>
    <!-- End Form -->
  
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
    </div> <!-- End footer top area --> <!-- End footer top area -->
    
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
    </div> <!-- End footer bottom area -->
   
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