<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>用户完善信息</title>
		<meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
		<!-- bootstrap样式表 -->
		<link rel="stylesheet" type="text/css" href="../../plugins/bootstrap/css/bootstrap.min.css" />
		<!-- 时间选择器样式表 -->
		<link rel="stylesheet" type="text/css" href="../../css/register.css" />
		<link rel="stylesheet" type="text/css" href="../../css/custom-navbar.css" />
		<link rel="stylesheet" type="text/css" href="../../css/custom-style.css" />

	</head>
	<body class="custom-body">
		<!-- Fixed navbar -->
		<nav class="custom-header-navbar">
			<h1>社区居民健康管理系统</h1>
			<h1>Community Resident Health Management System</h1>
		</nav>
		<!-- Fixed navbar -->
		<div class="container" style="margin-top: 60px;">
			<div class="row">
				<!-- 注册面板 begin -->
				<div class="col-lg-offset-1 col-lg-10 custom-panel">
					<h2 class="custom-register-title">用户注册</h2>
					<!-- <br /> -->
					<!-- 进度条 begin -->
					<div class="custom-register-progress-div">
						<ul class="custom-list-style">
							<li class="custom-register-xlg-progress-li">1.注册账号</li>
							<li class="custom-register-xlg-progress-li">2.基本信息</li>
							<li class="custom-register-xlg-progress-li custom-font-bold">3.进入系统</li>
						</ul>
					</div>
					<!-- 清除浮动 -->
					<div class="clear-float"></div>
					<!-- 清除浮动 -->
					<div class="progress progress-striped active custom-progress-lg-width" >
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
						 aria-valuemax="100" style="width: 100%;">
							<span class="sr-only">100% 完成</span>
						</div>
					</div>
					<!-- 进度条 end -->
					<br />
					<p class="text-center">
						<strong class="custom-font-large">恭喜你完成了用户注册全部步骤！</strong>
					</p>
					<br /> <br /> <br /> 
					<div class="text-center col-xs-12">
						<c:choose>
							<c:when test="${userRegister.role_id == 1}">
								<a href="/crhms/pages/resident/home.jsp"><button class="btn btn-success">点击进入系统</button></a>
							</c:when>
							<c:when test="${userRegister.role_id == 2}">
								<a href="/crhms/pages/doctor/home.jsp"><button class="btn btn-success">点击进入系统</button></a>
							</c:when>
							<c:when test="${userRegister.role_id == 3}">
								<a href="/crhms/pages/health_manager/home.jsp"><button class="btn btn-success">点击进入系统</button></a>
							</c:when>
							<c:otherwise>
								恭喜你，发现了未知的荒原....
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<!-- 注册右边 -->
			</div>

		</div>
	</body>

</html>
