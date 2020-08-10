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
                            <li>个人信息</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!-- 显示个人信息 -->
                        <div>
                            <%--居民信息 /--%>
                            <ul class="list-group">
                                <li class="list-group-item active"><h3> 个人信息 </h3></li>
                                <li class="list-group-item custom-font-medium">
                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名: ${sessionScope.residentInfo.truename}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别: ${sessionScope.residentInfo.gender}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    出生日期: ${sessionScope.residentInfo.birthdate}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    现&nbsp;&nbsp;住&nbsp;&nbsp;址: ${sessionScope.residentInfo.address}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    身份证号: ${sessionScope.residentInfo.id_card}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯: ${sessionScope.residentInfo.hometown}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族: ${sessionScope.residentInfo.nationality}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    联系电话: ${sessionScope.residentInfo.phone_number}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    婚姻状况: ${sessionScope.residentInfo.martial_status}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    工作单位: ${sessionScope.residentInfo.work_unit}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    文化程度: ${sessionScope.residentInfo.education}
                                </li>
                                <li class="list-group-item custom-font-medium">
                                    备注信息: ${sessionScope.residentInfo.remarks}
                                </li>
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
                                                修改个人信息
                                            </h4>
                                        </div>
                                        <form action="/crhms/residentInfo/update.do" method="post">
                                            <div class="modal-body">
                                                <p class="custom-p">
                                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:
                                                    <input type="text"
                                                           value="${sessionScope.residentInfo.truename}" name="truename"
                                                           placeholder="请输入姓名">
                                                </p>
                                                <p class="custom-p">
                                                    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:
                                                    <label>
                                                        <input type="radio" name="gender" value="男" checked>男
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="gender" value="女">女
                                                    </label>
                                                </p>
                                                <p class="custom-p">
                                                    出生日期:
                                                    <input type="text" value="${sessionScope.residentInfo.birthdate}"
                                                           name="birthdate" id="datetimepicker"
                                                           placeholder="选择开始日期">
                                                </p>
                                                <p class="custom-p">
                                                    现&nbsp;&nbsp;住&nbsp;&nbsp;址:
                                                    <input type="text" value="${sessionScope.residentInfo.address}"
                                                           name="address" placeholder="请输入现住址">
                                                </p>
                                                <p class="custom-p">
                                                    身份证号:
                                                    <input type="text" value="${sessionScope.residentInfo.id_card}"
                                                           name="id_card"
                                                           placeholder="请输入身份证号">
                                                </p>
                                                <p class="custom-p">
                                                    籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯:
                                                    <input type="text" value="${sessionScope.residentInfo.hometown}"
                                                           name="hometown" placeholder="请输入籍贯">
                                                </p>
                                                <p class="custom-p">
                                                    民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族:
                                                    <input type="text" value="${sessionScope.residentInfo.nationality}"
                                                           name="nationality"
                                                           placeholder="请输入民族">
                                                </p>
                                                <p class="custom-p">
                                                    联系电话:
                                                    <input type="tel" value="${sessionScope.residentInfo.phone_number}"
                                                           name="phone_number"
                                                           placeholder="请输入电话">
                                                </p>
                                                <p class="custom-p">
                                                    婚姻状况:
                                                    <select name="martial_status">
                                                        <option value="">婚姻状况</option>
                                                        <option value="未婚">未婚</option>
                                                        <option value="已婚">已婚</option>
                                                        <option value="离婚">离婚</option>
                                                        <option value="丧偶">丧偶</option>
                                                        <option value="不详" selected>不详</option>
                                                    </select>
                                                </p>
                                                <p class="custom-p">
                                                    工作单位:
                                                    <input type="text" value="${sessionScope.residentInfo.work_unit}"
                                                           name="work_unit"
                                                           placeholder="请输入单位">
                                                </p>
                                                <p class="custom-p">
                                                    文化程度:
                                                    <select name="education">
                                                        <option>学历</option>
                                                        <option value="博士研究生">博士研究生</option>
                                                        <option value="硕士研究生">硕士研究生</option>
                                                        <option value="本科">本科</option>
                                                        <option value="大专">大专</option>
                                                        <option value="中专">中专</option>
                                                        <option value="高中">高中</option>
                                                        <option value="初中">初中</option>
                                                        <option value="小学">小学</option>
                                                        <option value="不详" selected>不详</option>
                                                    </select>
                                                </p>
                                                <p class="custom-p">
                                                    备注信息:
                                                    <input type="text" value="${sessionScope.residentInfo.remarks}"
                                                           id="remarks" name="remarks"
                                                           placeholder="请输入备注">
                                                </p>
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
                        <%--                        居民信息 /--%>
                        <%---------------------------------------------------------------------------%>
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
