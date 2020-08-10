<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/21
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>查看所有居民</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css"/>
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
        <style>
            .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
                padding-left: 2px;
                padding-right: 2px;
            }

            /*   .wrap {
                   width: 80px; !*!/设置需要固定的宽度*!
                   white-space: nowrap; !*!/不换行*!
                   text-overflow: ellipsis; !*!/超出部分用....代替*!
                   overflow: hidden; !* //超出隐藏*!
               }*/
        </style>
    </head>

    <body class="">
        <!-- 引入header.jsp -->
        <jsp:include page="./header.jsp"></jsp:include>

        <div class="container" style="margin-top: 84px;">
            <div class="row">
                <div class="col-xs-2">
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="./sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li><a href="./home.jsp">主页</a></li>
                            <li>信息检索</li>
                            <li>查看社区居民</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <%-- 显示所有居民--%>
                        <div style="overflow-x: auto; overflow-y: auto; width:904px;">
                            <table class="table table-striped" width="1500px">
                                <caption>
                                    <li class="list-group-item active">查看社区居民</li>
                                </caption>
                                <thead>
                                    <tr style="font-size: 13px">
                                        <th>序号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>出生日期</th>
                                        <th>民族</th>
                                        <th>地址</th>
                                        <th>身份证</th>
                                        <th>籍贯</th>
                                        <th>电话</th>
                                        <th>工作单位</th>
                                        <th>学历</th>
                                        <th>婚姻状况</th>
                                        <th class="wrap">备注</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="residentInfo" varStatus="residentInfoStatus"
                                               items="${sessionScope.residentInfoList}">
                                        <tr style="font-size: 13px">
                                            <td>${residentInfoStatus.index+1}</td>
                                            <td>${residentInfo.truename}</td>
                                            <td>${residentInfo.gender}</td>
                                            <td>${residentInfo.birthdate}</td>
                                            <td>${residentInfo.nationality}</td>
                                            <td>${residentInfo.address}</td>
                                            <td>${residentInfo.id_card}</td>
                                            <td>${residentInfo.hometown}</td>
                                            <td>${residentInfo.phone_number}</td>
                                            <td>${residentInfo.work_unit}</td>
                                            <td>${residentInfo.education}</td>
                                            <td>${residentInfo.martial_status}</td>
                                            <td class="wrap"
                                                title="${residentInfo.remarks}">${residentInfo.remarks}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <%-- 显示所有居民--%>

                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <!-- 引入vue -->
        <script src="../../js/resident/carousel.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
    </body>

</html>

