<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport"> -->
        <title>用户注册</title>
        <link rel="stylesheet" type="text/css" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
        <!-- 导入图标样式 -->
        <link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/register.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/custom-navbar.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/custom-style.css"/>
    </head>

    <body class="custom-body">
        <!-- Fixed navbar -->
        <nav class="custom-header-navbar">
            <h1>社区居民健康管理系统</h1>
            <h1>Community Resident Health Management System</h1>
        </nav>
        <!-- Fixed navbar -->
        <div class="container" style="margin-top: 200px;">
            <div class="row">
                <!-- 注册面板 begin -->
                <div class="col-xs-offset-3 col-xs-6 custom-panel" style="margin-top: 0;">
                    <h2 class="custom-register-title">用户注册</h2>
                    <!-- 进度条 begin -->
                    <div class="" style="width: 545px;height: 20px;">
                        <ul class="custom-list-style">
                            <li class="custom-register-sm-progress-li custom-font-bold">1.注册账号</li>
                            <li class="custom-register-sm-progress-li">2.基本信息</li>
                            <li class="custom-register-sm-progress-li">3.亲属信息</li>
                            <li class="custom-register-sm-progress-li">4.健康档案</li>
                            <li class="custom-register-sm-progress-li">5.体检报告</li>
                            <li class="custom-register-sm-progress-li">6.进入系统</li>
                        </ul>
                    </div>
                    <!-- 清除浮动 -->
                    <div class="clear-float"></div>
                    <!-- 清除浮动 -->
                    <div class="progress progress-striped active" style="height: 10px;width: 470px;margin-left: 40px;">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                             aria-valuemin="0"
                             aria-valuemax="100" style="width: 16%;">
                            <span class="sr-only">16% 完成</span>
                        </div>
                    </div>
                    <!-- 进度条 end -->
                    <!-- 注册表单 begin -->
                    <form class="form-horizontal" role="form" id="register-form">
                        <div class="form-group">
                            <label class="col-xs-1 control-label">
                                <span class="glyphicon glyphicon-user"></span>
                            </label>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" v-model="userRegister.username" name="username"
                                       placeholder="用户名">
                            </div>
                            <div class="col-xs-4">
                                <select v-model="userRegister.role_id" class="form-control" id="user-role"
                                        name="role_id">
                                    <option value="">用户类型</option>
                                    <option value="1">居民</option>
                                    <option value="2">医生</option>
                                    <option value="3">健康管理师</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-1 control-label">
                                <span class="glyphicon glyphicon-earphone"></span>
                            </label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" placeholder="手机号"
                                       v-model="userRegister.phone_number" name="phone_number">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-1 control-label">
                                <span class="glyphicon  glyphicon-lock"></span>
                            </label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" placeholder="密码"
                                       v-model="userRegister.password" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-1 control-label">
                                <span class="glyphicon  glyphicon-log-in"></span>
                            </label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" placeholder="确认密码" name="comfirmpwd">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7">
                                <a href="../login/login.html" style="line-height: 34px;" class="col-xs-offset-2">我有账号，现在就去登录</a>
                            </div>
                            <div class="col-xs-4">
                                <button type="button" v-on:click="signup"
                                        class="btn btn-block btn-danger btn-flat">注册
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- 注册表单 end -->
                </form>
                <!-- 注册面板 end -->
            </div>

        </div>
        <!-- javascript文件放在最后引入,加快页面加载速度. -->
        <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
        <script src="../../plugins/jQuery/jquery-3.3.1.min.js"></script>
        <!-- 引入vue -->
        <script src="../../plugins/vuejs/vuejs-2.5.16.js"></script>
        <!-- 引入axios，完成ajax请求 -->
        <script src="../../plugins/axios/axios-0.18.0.js"></script>
        <!--		jQuery validate表单验证插件-->
        <script src="../../plugins/jQuery-validate/jquery.validate.min.js"></script>
        <!-- jQuery validate中文信息提示包 -->
        <script src="../../plugins/jQuery-validate/messages_zh.js"></script>
        <!-- jQuery validate自定义校验规则与提示信息 -->
        <script src="../../js/register/start.js"></script>
    </body>

</html>

