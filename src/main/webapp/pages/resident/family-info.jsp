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
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><i class="glyphicon glyphicon-map-marker"></i> 当前位置</li>
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>个人中心</li>
                            <li>家庭信息</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <div>
                            <%--                        家庭信息 /--%>

                            <ul class="list-group">
                                <li class="list-group-item active"><h3> 家庭信息 </h3></li>
                                <c:forEach items="${sessionScope.familyInfoList}" var="familyInfo"
                                           varStatus="familyInfoStatus">
                                    <li class="list-group-item custom-font-medium list-group-item-info">
                                        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名: ${familyInfo.truename}
                                    </li>
                                    <li class="list-group-item custom-font-medium">
                                        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别: ${familyInfo.gender}
                                    </li>
                                    <li class="list-group-item custom-font-medium">
                                        家庭关系: ${familyInfo.family_relationship}
                                    </li>
                                    <li class="list-group-item custom-font-medium">
                                        出生日期: ${familyInfo.birthdate}
                                    </li>
                                    <li class="list-group-item custom-font-medium">
                                        工作单位: ${familyInfo.work_unit}
                                    </li>
                                    <li class="list-group-item custom-font-medium">
                                        职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业: ${familyInfo.profession}
                                    </li>
                                </c:forEach>
                                <li class="list-group-item custom-font-medium">
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
                                                修改家庭信息
                                            </h4>
                                        </div>
                                        <form action="/crhms/familyInfo/update.do" method="post">
                                            <div class="modal-body">
                                                <c:forEach items="${sessionScope.familyInfoList}" var="familyInfo"
                                                           varStatus="familyInfoStatus">
                                                    <input type="hidden"
                                                           name="familyInfoList[${familyInfoStatus.index}].id"
                                                           value="${familyInfo.id}">
                                                    <p class="custom-p bg-info">
                                                        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:
                                                        <input type="text"
                                                               name="familyInfoList[${familyInfoStatus.index}].truename"
                                                               value="${familyInfo.truename}">
                                                    </p>
                                                    <p class="custom-p">
                                                        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:
                                                        <label>
                                                            男&nbsp;<input type="radio"
                                                                          name="familyInfoList[${familyInfoStatus.index}].gender"
                                                                          value="男" checked>
                                                        </label>
                                                        &nbsp;&nbsp;
                                                        <label>
                                                            女&nbsp;<input type="radio"
                                                                          name="familyInfoList[${familyInfoStatus.index}].gender"
                                                                          value="女">
                                                        </label>
                                                    </p>
                                                    <p class="custom-p">
                                                        家庭关系:
                                                        <input type="text"
                                                               name="familyInfoList[${familyInfoStatus.index}].family_relationship"
                                                               value="${familyInfo.family_relationship}">
                                                    </p>
                                                    <p class="custom-p">
                                                        出生日期:
                                                        <input type="text" id="datetimepicker"
                                                               name="familyInfoList[${familyInfoStatus.index}].birthdate"
                                                               value="${familyInfo.birthdate}">

                                                    </p>
                                                    <p class="custom-p">
                                                        工作单位:
                                                        <input type="text"
                                                               name="familyInfoList[${familyInfoStatus.index}].work_unit"
                                                               value="${familyInfo.work_unit}">
                                                    </p>
                                                    <p class="custom-p">
                                                        职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:
                                                        <input type="text"
                                                               name="familyInfoList[${familyInfoStatus.index}].profession"
                                                               value="${familyInfo.profession}">
                                                    </p>
                                                </c:forEach>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    取消
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    提交更改
                                                </button>
                                            </div>
                                        </form>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal -->
                            </div>
                            <%--  模态框/--%>

                        </div>
                        <%--                        家庭信息 /--%>
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
