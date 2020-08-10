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
							<li class="custom-register-lg-progress-li custom-font-bold">4.健康档案</li>
							<li class="custom-register-lg-progress-li">5.体检报告</li>
							<li class="custom-register-lg-progress-li">6.进入系统</li>
						</ul>
					</div>
					<!-- 清除浮动 -->
					<div class="clear-float"></div>
					<!-- 清除浮动 -->
					<div class="progress progress-striped active custom-progress-lg-width" >
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
						 aria-valuemax="100" style="width: 64%;">
							<span class="sr-only">64% 完成</span>
						</div>
					</div>
					<!-- 进度条 end -->
					<form class="form-horizontal" role="form" id="registerForm" action="/crhms/healthRecord/insertOne.do" method="post">
						<!-- 3.健康档案 begin -->
						<div id="health-record">
							<div class="form-group">
								<label class="col-lg-1 control-label">现病史</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="present_illness" placeholder="患者于入院前,无明显诱因下出现中上腹痛，为持续性阵痛，进食后无缓解,后疼痛逐渐转移并固定于右下腹，伴恶心呕吐，呕吐物为胃内容物，患者无发热寒颤。">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">既往史</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="previous_history" placeholder="请输入既往史,如疾病,手术,外伤,输血,住院史等">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">过敏史</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="allergy_history" placeholder="请输入过敏史,例如:猫毛过敏症">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">暴露史</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="exposure_history" placeholder="请输入暴露史,例如:感染过禽流感，发病前曾有过活禽市场暴露史">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">家族史</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="family_history" placeholder="请输入家族病史,如家族糖尿病史,家族精神病史等">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">遗传病</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="genetics_history" placeholder="请输入遗传病史,如先天愚型、多指（趾）、先天性聋哑、血友病等">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">残疾情况</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="disability_status" placeholder="请输入残疾情况,如一级伤残,二级伤残等">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">建档日期</label>
								<div class="col-lg-11">
									<div class="input-group">
										<input type="text" id="datetimepicker" class="form-control" name="create_date" placeholder="请选择建档日期">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">建档医生</label>
								<div class="col-lg-11">
									<input type="text" class="form-control" name="record_doctor" placeholder="请输入建档医生">
								</div>
							</div>
						</div>
						<!-- 3.健康档案 end -->
						<div class="form-group text-center">
							<input class="btn btn-success" type="submit" name="" id="" value="点击提交,进入下一步!" />
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
