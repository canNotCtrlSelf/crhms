<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>用户完善信息</title>
		<meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
		<!-- bootstrap样式表 -->
		<link rel="stylesheet" type="text/css" href="../../plugins/bootstrap/css/bootstrap.min.css" />
		<!-- 导入图标样式 -->
		<link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
		<!-- 时间选择器样式表 -->
		<link rel="stylesheet" href="../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">

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
					<!-- 进度条 begin -->
					<div class="custom-register-progress-div">
						<ul class="custom-list-style">
							<li class="custom-register-lg-progress-li">1.注册账号</li>
							<li class="custom-register-lg-progress-li">2.基本信息</li>
							<li class="custom-register-lg-progress-li">3.亲属信息</li>
							<li class="custom-register-lg-progress-li">4.健康档案</li>
							<li class="custom-register-lg-progress-li custom-font-bold">5.体检报告</li>
							<li class="custom-register-lg-progress-li">6.进入系统</li>
						</ul>
					</div>
					<!-- 清除浮动 -->
					<div class="clear-float"></div>
					<!-- 清除浮动 -->
					<div class="progress progress-striped active custom-progress-lg-width" >
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
						 aria-valuemax="100" style="width: 80%;">
							<span class="sr-only">80% 完成</span>
						</div>
					</div>
					<!-- 进度条 end -->
					<form class="form-horizontal" action="/crhms/medicalReport/insertOne.do" method="post" enctype="multipart/form-data">
						<!-- 4.体检信息 begin -->
						<div id="health-record">
							<div class="form-group">
								<label class="col-lg-1 control-label">体检日期</label>
								<div class="col-lg-2">
									<div class="input-group">
										<input type="text" id="datetimepicker" class="form-control" name="examdate" placeholder="选择日期">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">体检报告</label>
								<div class="col-lg-2">
									<input type="file" name="upload">
								</div>
							</div>
							<div class="form-group ">
								<label class="col-lg-4 control-label " style="font-weight: 400; text-align: left;padding-left: 20px;">请上传体检报告照片,照片大小不超过1M。</label>
							</div>
						</div>
						<!-- 4.体检信息 end -->
						<div class="form-group text-center">
							<input class="btn btn-success" type="submit"  value="点击提交,进入下一步!" />
						</div>
					</form>
				</div>
				<!-- 注册右边 -->
			</div>
		</div>
		<!-- javascript文件放在最后引入,加快页面加载速度. -->
		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

		<script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

		<script src="../../plugins/jquery-datatimepicker/jquery.datetimepicker.js" type="text/javascript" charset="utf-8"></script>
		<!-- regist脚本 -->
		<script src="../../js/common/common.js"></script>
	</body>
</html>
