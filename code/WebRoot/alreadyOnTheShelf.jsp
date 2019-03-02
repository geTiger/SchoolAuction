<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="zdg.bean.Goods"%>
<%@page import="zdg.bean.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易校园</title>
    
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
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="css/v3/bootstrap.min.css">
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
                            <li><a href="login.jsp"><i class="fa fa-user"></i><s:property value="#user.username"/></a></li>
                           
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
    
	<form action="onShelf.action" method="post">
	<table  class="table table-striped">
	<tr><td>
	<div>
		<label >用户名</label>
		<input id="inputPeople" name="inputPeople" readonly="true" value=${user.username} type="text"/>
	</div>
	</td>
	<td>
	<button type="submit" class="btn">查询</button>
	</td>
	</tr>
	</table>
	</form>
	
    <table class="table table-striped">
    <thead>
    <tr>
        <th>序号</th>
        <th>货物名</th>
        <th>类型</th>
        <th>竞拍价格</th>
        <th>竞拍者</th>
    </tr>
    </thead>
    <tbody>
  <c:forEach var="good"   items="${goodsList}">
	<tr><td>${good.id}</td>
	<td>${good.name}</td>
	<td>${good.type}</td>
	<td>${good.updatePrice}</td>
	<td>${good.updatePeople}</td>
	<td><a href="ShowGoodDetail?id=${good.id}">详情</a></td>
	</tr>
	<hr>
  </c:forEach>
  </tbody>
</table>

	</body>
</html>
