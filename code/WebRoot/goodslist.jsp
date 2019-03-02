<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@page import="java.util.List"%>
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
                
            </div>
        </div>
    </div> <!-- End header area -->
    
	<form action="getAllGoods.action" method="post">
	<table  class="table table-striped">
	<tr><td>
	<div>
		<label >货物名</label>
		<input type="text" name="name" id="name">
	</div>
	</td>
	<td>
	<div>
		<label >类型</label>
		<input type="text" name="type" id="type">
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
        <th>初始价格</th>
        <th>当前价格</th>
        <th>当前最高价用户</th>
    </tr>
    </thead>
    <tbody>
  <c:forEach var="goods"   items="${goodsList}">
	<tr><td>${goods.id}</td>
	<td>${goods.name}</td>
	<td>${goods.type}</td>
	<td>${goods.inputPrice}</td>
	<td>${goods.updatePrice}</td>
	<td>${goods.updatePeople}</td>
	<td><a href="goodsDetail.action?goods.id=${goods.id}">详情</a></td>
	</tr>
	<hr>
  </c:forEach>
  </tbody>
</table>

	</body>
</html>
