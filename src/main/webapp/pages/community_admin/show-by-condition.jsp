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
        <title>条件查询</title>
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
        <style>
            .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
                padding-left: 2px;
                padding-right: 2px;
                text-align: center;
            }
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
                            <li>条件查询</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <%-- 条件查询居民--%>
                        <table class="table table-striped ">
                            <caption>
                                <ul class="list-group">
                                    <li class="list-group-item active">
                                        <h3>条件查询</h3>
                                    </li>
                                    <li class="list-group-item" style="font-size: 16px">
                                        <label>
                                            <input type="radio" name="condition" value="1" checked>根据姓名查询
                                        </label>
                                        <label>
                                            <input type="radio" name="condition" value="2">根据姓名模糊查询
                                        </label>
                                        <label>
                                            <input type="radio" name="condition" value="3">根据性别查询
                                        </label>
                                        <label>
                                            <input type="radio" name="condition" value="4">根据出生日期范围查询
                                        </label>
                                    </li>
                                    <li class="list-group-item" style="font-size: 16px">
                                        <form id="truenameForm" action="/crhms/communityAdmin/findByTruename.do"
                                              method="post">
                                            <input type="text" name="truename" value="">
                                            <input type="submit" value="立即查询" onclick="toggleHide()">
                                        </form>
                                        <form id="LikeForm" hidden action="/crhms/communityAdmin/findByLike.do"
                                              method="post">
                                            <input type="text" name="like" value="">
                                            <input type="submit" value="立即查询" onclick="toggleHide()">
                                        </form>
                                        <form id="genderForm" hidden action="/crhms/communityAdmin/findByGender.do"
                                              method="post">
                                            <label>
                                                <input type="radio" name="gender" value="男" checked>男
                                            </label>
                                            <label>
                                                <input type="radio" name="gender" value="女">女
                                            </label>
                                            <input type="submit" value="立即查询" onclick="toggleHide()">
                                        </form>
                                        <form id="birthdateForm" hidden
                                              action="/crhms/communityAdmin/findBydateScope.do" method="post">
                                            起始日期: <input type="text" id="datetimepicker1" name="datetime1" value="">
                                            终止日期: <input type="text" id="datetimepicker2" name="datetime2" value="">
                                            <input type="submit" value="立即查询" onclick="toggleHide()">
                                        </form>
                                    </li>
                                </ul>
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
                                    <th>备注</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">
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
                                        <td>${residentInfo.remarks}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <%-- 条件查询居民--%>

                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../plugins/jquery-datatimepicker/jquery.datetimepicker.js" type="text/javascript"
                charset="utf-8"></script>
        <script src="../../js/community_admin/show-by-condition.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
    </body>

</html>

