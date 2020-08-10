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
        <link rel="stylesheet" type="text/css" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
        <!-- 时间选择器样式表 -->
        <link rel="stylesheet" href="../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">
        <link rel="stylesheet" type="text/css" href="../../css/register.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/custom-navbar.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/custom-style.css"/>
        <style>

            label{
                margin: 0;
            }

            td{
                height: 36px;
                line-height: 36px;
            }

            td>input {
                background-color: transparent;
                border: none;
                overflow: hidden;
                width: 100%;
                height: 100%;
            }

            .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
                padding: 0;
                text-align: center;
            }
        </style>
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
                            <li class="custom-register-lg-progress-li custom-font-bold">3.亲属信息</li>
                            <li class="custom-register-lg-progress-li">4.健康档案</li>
                            <li class="custom-register-lg-progress-li">5.体检报告</li>
                            <li class="custom-register-lg-progress-li">6.进入系统</li>
                        </ul>
                    </div>
                    <!-- 清除浮动 -->
                    <div class="clear-float"></div>
                    <!-- 清除浮动 -->
                    <div class="progress progress-striped active custom-progress-lg-width">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                             aria-valuemin="0"
                             aria-valuemax="100" style="width: 48%;">
                            <span class="sr-only">48% 完成</span>
                        </div>
                    </div>
                    <!-- 进度条 end -->
                    <form class="form-horizontal" role="form" id="registerForm" action="/crhms/familyInfo/signupFamilyInfo.do" method="post">
                        <!-- 2.亲属信息 begin -->
                        <div >
                            <table class="table table-bordered table-hover">
                                <caption>请填写家属信息</caption>
                                <thead>
                                    <tr>
                                        <th width="5%">序号</th>
                                        <th width="14%">姓名</th>
                                        <th width="14%">性别</th>
                                        <th width="14%">家庭关系</th>
                                        <th width="15%">出生日期</th>
                                        <th width="14%">工作单位</th>
                                        <th width="14%">职业</th>
                                        <th width="8%"></th>
                                    </tr>
                                </thead>
                                <tbody id="family-info">
                                    <tr>
                                        <td style="line-height: 36px;">1</td>
                                        <td ><input type="text" name="familyInfoList[0].truename"></td>
                                        <td >
                                            <label style="line-height: 36px;">
                                                男&nbsp;<input type="radio" name="familyInfoList[0].gender" value="男" checked>
                                            </label>
                                            &nbsp;&nbsp;
                                            <label style="line-height: 36px;">
                                                女&nbsp;<input type="radio" name="familyInfoList[0].gender" value="女">
                                            </label>
                                        </td>
                                        <td ><input type="text" name="familyInfoList[0].family_relationship"></td>
                                        <td >
                                            <div class="input-group">
                                                <input type="text" id="datetimepicker" class="form-control " name="familyInfoList[0].birthdate">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                            </div>
                                        </td>
                                        <td ><input type="text"  name="familyInfoList[0].work_unit"></td>
                                        <td ><input type="text"  name="familyInfoList[0].profession"></td>
                                        <td ><input onclick="addMore()" id="add-more" class="btn btn-warning" value="添加"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- ------------------------------------这里是分割线-------------------------- -->
                        </div>
                        <!-- 2.亲属信息 end -->
                        <div class="form-group text-center">
                            <input class="btn btn-success" type="submit" name="" value="点击提交,进入下一步!"/>
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
        <!-- regist脚本 -->
        <script src="../../js/register/resident-family.js"></script>
    </body>
</html>
