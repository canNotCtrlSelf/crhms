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
		<!-- 时间选择器样式表 -->
		<link rel="stylesheet" href="../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">
		<!-- 导入图标样式 -->
		<link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
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
							<li class="custom-register-lg-progress-li">1.注册账号</li>
							<li class="custom-register-lg-progress-li custom-font-bold">2.基本信息</li>
							<li class="custom-register-lg-progress-li">3.亲属信息</li>
							<li class="custom-register-lg-progress-li">4.健康档案</li>
							<li class="custom-register-lg-progress-li">5.体检报告</li>
							<li class="custom-register-lg-progress-li">6.进入系统</li>
						</ul>
					</div>
					<!-- 清除浮动 -->
					<div class="clear-float"></div>
					<!-- 清除浮动 -->
					<div class="progress progress-striped active custom-progress-lg-width" >
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0"
						 aria-valuemax="100" style="width: 32%;">
							<span class="sr-only">32% 完成</span>
						</div>
					</div>
					<!-- 进度条 end -->
					<form class="form-horizontal" role="form" id="register-form" action="/crhms/residentInfo/signupResidentInfo.do" method="post">
						<!-- 1.用户基本信息 begin -->
						<div>
							<div class="form-group">
								<label class="col-lg-1 control-label">姓名</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" name="truename" placeholder="请输入姓名">
								</div>
								<label class="col-lg-1 control-label">性别</label>
								<div class="radio col-lg-2">
									<label>
										<input type="radio" name="gender" value="男" checked>男
									</label>
									<label>
										<input type="radio" name="gender" value="女">女
									</label>
								</div>
								<label class="col-lg-1 control-label">出生日期</label>
								<div class="col-lg-2">
									<div class="input-group">
										<input type="text" name="birthdate" id="datetimepicker" class="form-control" placeholder="选择开始日期">
										<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
									</div>
								</div>
								<label class="col-lg-1 control-label">现住址</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" name="address" placeholder="请输入现住址">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">身份证号</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" name="id_card" placeholder="请输入身份证号">
								</div>
								<label class="col-lg-1 control-label">籍贯</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" name="hometown" placeholder="请输入籍贯">
								</div>
								<label class="col-lg-1 control-label">民族</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" name="nationality" placeholder="请输入民族">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label">联系电话</label>
								<div class="col-lg-2">
									<input type="tel" class="form-control" name="phone_number" placeholder="请输入电话">
								</div>
								<label class="col-lg-1 control-label">婚姻状况</label>
								<div class="col-lg-2">
									<select class="form-control" name="martial_status">
										<option value="">婚姻状况</option>
										<option value="未婚">未婚</option>
										<option value="已婚">已婚</option>
										<option value="离婚">离婚</option>
										<option value="丧偶">丧偶</option>
										<option value="不详">不详</option>
									</select>
								</div>
								<label class="col-lg-1 control-label">工作单位</label>
								<div class="col-lg-2">
									<input type="text" class="form-control" name="work_unit" placeholder="请输入单位">
								</div>
								<label class="col-lg-1 control-label">文化程度</label>
								<div class="col-lg-2">
									<select class="form-control" name="education">
										<option>学历</option>
										<option value="博士研究生">博士研究生</option>
										<option value="硕士研究生">硕士研究生</option>
										<option value="本科">本科</option>
										<option value="大专">大专</option>
										<option value="中专">中专</option>
										<option value="高中">高中</option>
										<option value="初中">初中</option>
										<option value="小学">小学</option>
										<option value="不详">不详</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label" for="remarks">备注信息</label>
								<div class="col-lg-11">
									<textarea class="form-control" id="remarks" name="remarks"></textarea>
								</div>
							</div>
						</div>
						<!-- 1.用户基本信息 end-->
						<div class="form-group text-center">
							<input class="btn btn-success" type="submit" name="" id="btn-submit-register" value="点击提交,进入下一步!" />
						</div>
					</form>
				</div>
				<!-- 注册面板 end -->
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
