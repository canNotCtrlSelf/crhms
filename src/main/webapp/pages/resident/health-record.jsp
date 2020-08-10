<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>查看信息</title>
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
                    <div class="main-content" style="height: 650px;">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><i class="glyphicon glyphicon-map-marker"></i> 当前位置</li>
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>档案中心</li>
                            <li>健康档案</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <ul class="list-group">
                            <li class="list-group-item active"><h3> 查看健康档案 </h3></li>
                            <li class="list-group-item custom-font-medium">
                                现&nbsp;&nbsp;病&nbsp;&nbsp;史: ${sessionScope.healthRecord.present_illness}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                既&nbsp;&nbsp;往&nbsp;&nbsp;史: ${sessionScope.healthRecord.previous_history}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                过&nbsp;&nbsp;敏&nbsp;&nbsp;史: ${sessionScope.healthRecord.allergy_history}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                暴&nbsp;&nbsp;露&nbsp;&nbsp;史: ${sessionScope.healthRecord.exposure_history}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                家&nbsp;&nbsp;族&nbsp;&nbsp;史: ${sessionScope.healthRecord.family_history}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                遗&nbsp;&nbsp;传&nbsp;&nbsp;病: ${sessionScope.healthRecord.genetics_history}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                残疾情况: ${sessionScope.healthRecord.disability_status}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                建档日期: ${sessionScope.healthRecord.create_date}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                建档医生: ${sessionScope.healthRecord.record_doctor}
                            </li>
                            <li class="list-group-item  custom-font-medium">
                                <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
                                    修改信息
                                </button>
                            </li>

                        </ul>
                        <%-- 模态框--%>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            更新健康档案
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form action="/crhms/healthRecord/update.do" method="post">
                                            <p class="custom-p">
                                                现&nbsp;&nbsp;病&nbsp;&nbsp;史:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.present_illness}"
                                                       name="present_illness"
                                                       placeholder="请输入姓名">
                                            </p>
                                            <p class="custom-p">
                                                既&nbsp;&nbsp;往&nbsp;&nbsp;史:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.previous_history}"
                                                       name="previous_history"
                                                       placeholder="请输入姓名">
                                            </p>
                                            <p class="custom-p">
                                                过&nbsp;&nbsp;敏&nbsp;&nbsp;史:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.allergy_history}"
                                                       name="allergy_history" placeholder="选择开始日期">
                                            </p>
                                            <p class="custom-p">
                                                暴&nbsp;&nbsp;露&nbsp;&nbsp;史:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.exposure_history}"
                                                       name="exposure_history" placeholder="请输入现住址">
                                            </p>
                                            <p class="custom-p">
                                                家&nbsp;&nbsp;族&nbsp;&nbsp;史:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.family_history}"
                                                       name="family_history" placeholder="请输入身份证号">
                                            </p>
                                            <p class="custom-p">
                                                遗&nbsp;&nbsp;传&nbsp;&nbsp;病:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.genetics_history}"
                                                       name="genetics_history" placeholder="请输入籍贯">
                                            </p>
                                            <p class="custom-p">
                                                残疾情况:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.disability_status}"
                                                       name="disability_status" placeholder="请输入民族">
                                            </p>
                                            <p class="custom-p">
                                                建档日期:
                                                <input type="tel" value="${sessionScope.healthRecord.create_date}"
                                                       name="create_date" id="datetimepicker" placeholder="请输入电话">
                                            </p>
                                            <p class="custom-p">
                                                建档医生:
                                                <input type="text"
                                                       value="${sessionScope.healthRecord.record_doctor}"
                                                       name="record_doctor" placeholder="请输入单位">
                                            </p>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    取消
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    提交更改
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                        <%--  模态框/--%>
                        <!-- 显示个人信息  /-->
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
