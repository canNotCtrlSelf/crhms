<%@ page import="com.cncs.domain.UserRegister" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<div class="custom-header-navbar">
    <div class="row">
        <div class="col-xs-offset-2 col-xs-8">
            <h1>社区居民健康管理系统</h1>
            <h1>Community Resident Health Management System</h1>
        </div>
        <div id="welcome" class="col-xs-2" style="text-align: center;line-height: 80px;">
         <%--   <%
                UserRegister userRegister = new UserRegister();
                if ((userRegister = (UserRegister) request.getSession().getAttribute("userRegister")) != null) {
                    System.out.println(userRegister);
                }
            %>--%>
            <c:if test="${!empty userRegister}">
                <span style="color:#FFF">欢迎你,${userRegister.username}</span>
                &nbsp;&nbsp;
                <a style="color: #FFFFFF" href="${pageContext.request.contextPath}/userRegister/logout.do">
                    <button type="button" class="btn btn-warning">注销</button>
                </a>
            </c:if>
            <c:if test="${empty userRegister}">
                <a class="custom-a" href="../login/login.html">登录</a>
                &nbsp;&nbsp;
                <a class="custom-a" href="../register/signup-start.jsp">注册</a>
            </c:if>
        </div>
    </div>
</div>