<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>心理评估</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">
        <!-- 导入图标样式 -->
        <link rel="stylesheet" href="../../plugins/font-awesome/css/font-awesome.min.css">
        <!-- 导入自定义样式表合集 -->
        <link rel="stylesheet" href="../../css/custom-style.css"/>
        <!-- 导入自定义logo/顶部导航 -->
        <link rel="stylesheet" href="../../css/custom-navbar.css">
        <!-- 导入自定义侧边菜单 -->
        <link rel="stylesheet" href="../../css/custom-sliderbar.css">
        <!-- 导入自定义内容区域样式 -->
        <link rel="stylesheet" href="../../css/custom-content.css"/>
    </head>

    <body class="">
        <!-- 头部logo -->
        <!-- 引入header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- 头部logo / -->

        <div class="container" style="margin-top: 84px;">
            <div class="row">
                <div class="col-xs-2">
                    <!-- 侧边导航 -->
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                    <!-- 侧边导航 / -->
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><i class="glyphicon glyphicon-map-marker"></i> 当前位置</li>
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>健康服务</li>
                            <li>心理评估</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <%--填写问卷--%>
                        <div>
                            <h1>心理评估</h1>
                            <div class="alert alert-warning" role="alert">
                                简单答完以下题目，系统将对您目前的健康状况进行评估，并做出改善计划。
                                <span style="color:#00bf6f;font-size: 24px;font-weight: bolder">(总分: 63)</span>
                            </div>
                            <img style="height: auto;width: 100%"
                                 src="../../img/other/aa64034f78f0f736ad209c7d1a55b319eac413eb.png">
                            <form action="/crhms/mentalityAssess/assess.do" method="post">
                                <c:forEach items="${mentalityQuestionnaireList}" var="mentalityQuestionnaireItem"
                                           varStatus="mentalityQuestionnaireStatus">
                                    <div class="panel panel-info">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">${mentalityQuestionnaireItem.title}</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio"
                                                           name="mentalityAssessList[${mentalityQuestionnaireStatus.index}].score"
                                                           value="0" checked>A、${mentalityQuestionnaireItem.option_a}
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio"
                                                           name="mentalityAssessList[${mentalityQuestionnaireStatus.index}].score"
                                                           value="1">B、${mentalityQuestionnaireItem.option_b}
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio"
                                                           name="mentalityAssessList[${mentalityQuestionnaireStatus.index}].score"
                                                           value="2">C、${mentalityQuestionnaireItem.option_c}
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio"
                                                           name="mentalityAssessList[${mentalityQuestionnaireStatus.index}].score"
                                                           value="3">D、${mentalityQuestionnaireItem.option_d}
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="text-center">
                                    <input type="submit" class="btn btn-success" value="提交">
                                </div>
                            </form>
                        </div>
                        <%--填写问卷 /--%>
                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/jquery-datatimepicker/jquery.datetimepicker.js" type="text/javascript"
                charset="utf-8"></script>

        <script src="../../js/common/common.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
    </body>

</html>
