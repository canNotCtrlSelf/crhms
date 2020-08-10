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
        <title>管理员主页</title>
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
                            <li>查看社区健康管理员</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <%-- 查看管理员--%>
                        <table class="table table-striped">
                            <caption>
                                <li class="list-group-item active">管理社区管理员</li>
                            </caption>
                            <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>用户名</th>
                                    <th>密码</th>
                                    <th>管理的社区</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="communityAdmin" varStatus="communityAdminStatus"
                                           items="${sessionScope.communityAdminList}">
                                    <tr>
                                        <td>${communityAdminStatus.index+1}</td>
                                        <td>${communityAdmin.username}</td>
                                        <td><input type="password" value="${communityAdmin.password}" style="border: 0px;outline:none;cursor: pointer;"> </td>
                                        <td>${communityAdmin.community_name}</td>
                                        <td>
                                                <%-- 模态框--%>
                                            <div class="modal fade" id="myModal${communityAdminStatus.index}"
                                                 tabindex="-1" role="dialog"
                                                 aria-labelledby="myModalLabel${communityAdminStatus.index}"
                                                 aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-hidden="true">
                                                                &times;
                                                            </button>
                                                            <h4 class="modal-title"
                                                                id="myModalLabel${communityAdminStatus.index}">
                                                                编辑信息
                                                            </h4>
                                                        </div>
                                                        <form name="communityAdminForm${communityAdminStatus.index}"
                                                              action="/crhms/admin/updateAdminCommunity.do"
                                                              method="post">
                                                            <div class="modal-body">
                                                                <input type="hidden" name="id"
                                                                       value="${communityAdmin.id}">
                                                                <li class="list-group-item custom-font-medium">
                                                                    用&nbsp;&nbsp;户&nbsp;&nbsp;名:
                                                                    <input type="text"
                                                                           value="${communityAdmin.username}"
                                                                           name="username" placeholder="用户名">
                                                                </li>
                                                                <li class="list-group-item custom-font-medium">
                                                                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
                                                                    <input type="text"
                                                                           value="${communityAdmin.password}"
                                                                           name="password" placeholder="密码">
                                                                </li>
                                                                <li class="list-group-item custom-font-medium">
                                                                    管理社区:
                                                                    <input type="text"
                                                                           value="${communityAdmin.community_name}"
                                                                           name="community_name" placeholder="请输入管理社区">
                                                                </li>

                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default"
                                                                            data-dismiss="modal">
                                                                        取消
                                                                    </button>
                                                                    <button type="submit" class="btn btn-primary">
                                                                        提交更改
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div><!-- /.modal-content -->
                                                </div><!-- /.modal -->
                                            </div>
                                                <%--  模态框/--%>
                                            <button class="btn btn-primary" data-toggle="modal"
                                                    data-target="#myModal${communityAdminStatus.index}">
                                                编辑
                                            </button>
                                            <button onclick="return deleteCommunityAdmin(${communityAdmin.id});"
                                                    class="btn btn-danger">
                                                删除
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <%--                        查看管理员--%>

                    </div>
                </div>
            </div>
        </div>
        <script src="../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <!-- 引入vue -->
        <script src="../../js/resident/carousel.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
            function deleteCommunityAdmin(id) {
                var msg = "您真的确定要删除吗？\n\n请确认！";
                if (confirm(msg) == true) {
                    window.location.href = "/crhms/admin/deleteCommunityAdmin.do?id=" + id;
                    return true;
                } else {
                    return false;
                }
            }
        </script>
        <%--        <script src="../../js/resident/sliderbar.js" type="text/javascript" charset="utf-8"></script>--%>
    </body>

</html>

