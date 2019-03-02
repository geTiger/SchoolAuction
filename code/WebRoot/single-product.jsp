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
	
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/social-icons.css">
	<link rel="stylesheet" href="css/iphone-style.css">
	<script type="text/javascript" src="js/myJS.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body >
  <!-- onclick="loadXMLDoc()" -->
   
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
            </div>
        </div>
    </div> <!-- End header area -->
    
       <!-- Product Showcase -->
        <div class="product-showcase">
            <div class="product-showcase-pattern">
                <div class="container">
                    <div class="row">
                        <div class="span12 product-background">
                            <div class="row">
                                <div class="span5 product-image">
                                    <img src="iphone.png" alt="" width="30%" height="40%">
                                </div>
                                <div class="span7 product-title">
                                    <div><h1>物品详情</h1></div>
                                    <form action="offerPrice.action" method="post">
										 <table class="table table-striped">
										 	<tbody>
        											<tr><td>货物名</td><td>${onegood.name}</td></tr><tr></tr>
        											<div id="onegood">${onegood.id}</div>
        											<tr><td>类型</td><td>${onegood.type}</td></tr><tr></tr>
        											<tr><td>初始价格</td><td>${onegood.inputPrice}</td></tr><tr></tr>
        											<tr><td>当前价格</td><td><div id="newPrice">${onegood.updatePrice}</div>
        											<!--   <button type="button" onclick="loadXMLDoc()">更新价格</button> -->
        											</td></tr><tr></tr>
        											<tr><td>备注</td><td>${onegood.goodsRemark}</td></tr><tr></tr>
        											<div><input type="hidden" name="id" value=${onegood.id}/></div>
        											<div><input type="hidden" name="updatePeople" value=${user.username}/></div>
        											<tr><td>请输入金额</td><td><input type="text" name="inputPrice" placeholder="请输入金额" class="form-username form-control" id="updatePrice"></td></tr>
    										</tbody>
    									</table>
                                    <div><input type="submit" value="出价""/></div>
                                   </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
    
   
	 <script>
		function loadXMLDoc() {
			var onegood = document.getElementById("onegood").innerHTML;
			//alert(onegood);
			var req = getXMLHttpRequest();
			
			//4、处理响应结果
			req.onreadystatechange = function(){
				//alert(req.readyState);
				if(req.readyState==4){
					//alert(req.status);//查看服务器端响应状态
					if(req.status==200){//服务器响应一切正常
						
						//alert("result succeed!");
						//alert("newPrice："+req.responseText);
						var haveChangePrice=req.responseText;
						document.getElementById("newPrice").innerHTML=haveChangePrice;
						setTimeout("loadXMLDoc()",2000);//2000ms自动刷新newPrice标签
						
					}
				}
			}
			//2、建立一个连接
			req.open("get","${pageContext.request.contextPath }/UpdateInTime?goodId="+onegood);
			//3、发送请求
			req.send(null);
			
			}
		
	</script>
	
</body>
</html>