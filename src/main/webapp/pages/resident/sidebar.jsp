<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/17
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 侧边导航 -->
<div id="sliderbar" class="main-sliderbar">
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title">
					<i class="fa fa-dashboard"></i> <span data-toggle="collapse"
						data-parent="#accordion" href="#" disabled="disabled"> 页面导航
					</span>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title" data-toggle="collapse"
					data-parent="#accordion" href="#collapseOne">
					<i class="fa fa-folder"></i> 个人中心
				</div>
			</div>
			<div id="collapseOne" class="panel-collapse collapse">
				<div class="panel-body">
					<ul class="sliderbar-list-style">
						<a href="/crhms/residentInfo/findResidentInfo.do">
							<li><i class="fa fa-circle-o"></i>个人信息</li>
						</a>
						<a href="/crhms/familyInfo/findFamilyInfo.do">
							<li><i class="fa fa-circle-o"></i>家庭信息</li>
						</a>
						<a href="/crhms/pages/resident/change-pwd.jsp">
							<li><i class="fa fa-circle-o"></i>修改密码</li>
						</a>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading" data-toggle="collapse"
				data-parent="#accordion" href="#collapseTwo">
				<h4 class="panel-title">
					<i class="fa fa-pie-chart"></i> 健康服务
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<ul class="sliderbar-list-style">
						<a href="/crhms/healthQuestionnaire/getQuestionnaire.do">
							<li><i class="fa fa-circle-o"></i>健康评估</li>
						</a>
						<a href="/crhms/mentalityQuestionnaire/getQuestionnaire.do">
							<li><i class="fa fa-circle-o"></i>心理评估</li>
						</a>
						<li><i class="fa fa-circle-o"></i>真人健康指导</li>
					</ul>
				</div>
			</div>
		</div>
		<%--        <div class="panel panel-default">
            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion"
                 href="#collapseThree">
                <h4 class="panel-title">
                    <i class="fa fa-laptop"></i>
                    特殊人群
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul class="sliderbar-list-style">
                        <li><i class="fa fa-circle-o"></i>孕产妇健康指导</li>
                        <li><i class="fa fa-circle-o"></i>儿童健康指导</li>
                        <li><i class="fa fa-circle-o"></i>老年人健康指导</li>
                    </ul>
                </div>
            </div>
        </div>--%>
		<div class="panel panel-default">
			<div class="panel-heading" data-toggle="collapse"
				data-parent="#accordion" href="#collapseFour">
				<h4 class="panel-title">
					<i class="fa fa-edit"></i> 档案中心
				</h4>
			</div>
			<div id="collapseFour" class="panel-collapse collapse">
				<div class="panel-body">
					<ul class="sliderbar-list-style">
						<a href="/crhms/healthRecord/findHealthRecord.do">
							<li><i class="fa fa-circle-o"></i>健康档案</li>
						</a>
						<a href="/crhms/medicalReport/findMedicalReport.do">
							<li><i class="fa fa-circle-o"></i>体检报告</li>
						</a>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading" data-toggle="collapse"
				data-parent="#accordion" href="#collapseFive">
				<h4 class="panel-title">
					<i class="fa fa-table"></i> 在线医生
				</h4>
			</div>
			<div id="collapseFive" class="panel-collapse collapse">
				<div class="panel-body">
					<ul class="sliderbar-list-style">
						<li><i class="fa fa-circle-o"></i>健康咨询</li>
						<li><i class="fa fa-circle-o"></i>在线问诊</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading" data-toggle="collapse"
				data-parent="#accordion" href="#collapseSix">
				<h4 class="panel-title">
					<i class="fa fa-cube"></i> 健康教育
				</h4>
			</div>
			<div id="collapseSix" class="panel-collapse collapse">
				<div class="panel-body">
					<ul class="sliderbar-list-style">
						<a href="/crhms/pages/resident/health-read.jsp">
							<li><i class="fa fa-circle-o"></i>健康资讯</li>
						</a>
						<a href="/crhms/pages/resident/health-video.jsp">
							<li><i class="fa fa-circle-o"></i>医学微视</li>
						</a>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 侧边导航 / -->