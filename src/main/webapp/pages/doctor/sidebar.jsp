<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/17
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="col-xs-2">
    <!-- 侧边导航 -->
    <div id="sliderbar" class="main-sliderbar">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        <i class="fa fa-dashboard"></i>
                        <span data-toggle="collapse" data-parent="#accordion" href="#" disabled="disabled">
                            页面导航
                        </span>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        <i class="fa fa-folder"></i>
                        个人中心
                    </div>
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="sliderbar-list-style">
                            <a href="/crhms/doctorInfo/findDoctorInfo.do">
                                <li><i class="fa fa-circle-o"></i>查看信息</li>
                            </a>
                            <a href="/crhms/pages/doctor/change-pwd.jsp">
                                <li><i class="fa fa-circle-o"></i>修改密码</li>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                    <h4 class="panel-title">
                        <i class="fa fa-pie-chart"></i>
                        消息中心
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="sliderbar-list-style">
                            <a href="">
                                <li><i class="fa fa-circle-o"></i>查看消息</li>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 侧边导航 / -->
</div>