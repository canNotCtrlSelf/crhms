<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2020/5/20
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>你了解房颤吗？好心情可以减少房颤的发展</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="../../../plugins/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="../../../plugins/jquery-datatimepicker/jquery.datetimepicker.css">
        <!-- 导入图标样式 -->
        <link rel="stylesheet" href="../../../plugins/font-awesome/css/font-awesome.min.css">
        <!-- 导入自定义样式表合集 -->
        <link rel="stylesheet" href="../../../css/custom-style.css"/>
        <!-- 导入自定义logo/顶部导航 -->
        <link rel="stylesheet" href="../../../css/custom-navbar.css">
        <!-- 导入自定义侧边菜单 -->
        <link rel="stylesheet" href="../../../css/custom-sliderbar.css">
        <!-- 导入自定义内容区域样式 -->
        <link rel="stylesheet" href="../../../css/custom-content.css"/>
    </head>

    <body class="">
        <!-- 头部logo -->
        <!-- 引入header.jsp -->
        <jsp:include page="../header.jsp"></jsp:include>
        <!-- 头部logo / -->

        <div class="container" style="margin-top: 84px;">
            <div class="row">
                <div class="col-xs-2">
                    <!-- 侧边导航 -->
                    <%-- 引入侧边导航栏--%>
                    <jsp:include page="../sidebar.jsp"></jsp:include>
                    <%-- 引入侧边导航栏 /--%>
                    <!-- 侧边导航 / -->
                </div>
                <div class="col-xs-10">
                    <div class="main-content">
                        <!-- 路径导航 -->
                        <ol class="breadcrumb">
                            <li>当前位置</li>
                            <li><a href="/crhms/pages/resident/home.jsp">主页</a></li>
                            <li>健康教育</li>
                            <li>健康资讯</li>
                        </ol>
                        <!-- 路径导航 /-->
                        <!--健康资讯-->
                        <h2>你了解房颤吗？好心情可以减少房颤的发展</h2>
                        <img style="float:left;position: relative;width: 160px;height: 160px"
                             src="../../../img/news/1a364ea8c2b23b8b82139575edc9482e_720w.png">
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            我国作为房颤第一患病大国，约有800万人罹患房颤，并呈逐年递增趋势。房颤可使脑卒中风险增加5倍，血栓栓塞事件发生率为正常人的5-17倍，会引起心力衰竭，增加致残率、死亡率，对患者造成严重危害。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            为提高公众及患者对房颤的科学认识，提升疾病的治疗率及治愈率，近日，北京同仁医院举办了“爱由心生——关注房颤，及时就诊”房颤知识大讲堂，北京同仁医院心脏中心副主任医师郭炜华等心脏中心专家为公众上了一堂普及房颤疾病正确预防及诊疗的公开课，让更多人走近房颤，了解房颤。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 何为房颤</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤是心房失去正常收缩节律而变为快速颤动或蠕动，常伴随心室收缩频率增快及节律不规则。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 预防房颤</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 通过改善生活方式可以减少房颤的发生。首先是不吸烟，其次是少饮酒。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            通过运动减轻体重。减重可以改善机体的生理功能，减少炎症发生。运动建议遵循“一三五七”原则，即一天保证中等强度以上的运动一次，如快走、慢跑、游泳、打球等。每次运动30分钟以上，每周保证运动5天以上，运动心率维持在170-年龄所得的数值上。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 保持好心情。好心情可以明显减少房颤的发展。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            控制好血压。高血压是导致房颤最主要的原因。在房颤病因中，高血压占到1/4的比重。和血压正常的人相比，有高血压且血压控制不好的人，发生房颤的几率更高。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 防好糖尿病。糖尿病也和房颤的风险相关，糖尿病患病时间越长，房颤的发作风险越高。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 及时治疗心血管疾病。几乎所有心血管疾病都和房颤有关，最终都会引起房颤。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤会遗传吗</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            1943年，首个房颤家系被发现，之后房颤基因陆续被发现。家族性房颤与特定的基因有关。同一带有家族性房颤基因的家庭中，并不是所有成员都会得房颤。环境因素对房颤也起一定的作用。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤的症状</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            心悸是比较常见的房颤症状。有研究发现，近7成房颤患者有不同程度的心悸。由于大多数房颤患者的心跳是快而不规则的，房颤患者的心悸往往是一种心跳快且乱的感觉。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 此外，呼吸困难、乏力或疲乏、头晕、黑矇、多尿也是房颤发生时较为常见的症状。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 症状轻重不等于严重程度</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            有些房颤患者临床表现明显，有些患者则一点症状也感觉不到。这不意味着前者的房颤程度就会比后者更严重。症状是主观感受，每个人对病痛的感知力和忍耐力不同，有些房颤患者每分钟心室率只有90多次，就会有明显的心悸不适，有些患者心室率达到140次／分钟以上，仍什么感觉也没有。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            研究表明，女性患者及相对年轻的房颤患者更容易产生症状，而房颤病程较长者、老年患者及糖尿病患者房颤症状往往不明显，但他们恰恰是房颤并发症的高危患者。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤的危害</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤的最大危害在于其引起的并发症，其中脑梗塞是其引起的主要栓塞性事件，同时也是房颤患者致残率最高的并发症。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 房颤的治疗</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            恢复并维持窦性心律，可以显著提高房颤患者的心功能和生活质量，并能减少血栓栓塞并发症，延缓心房重构，从而阻断房颤的进程。目前，房颤恢复窦性心律的方法主要有药物复律、电复律和手术治疗。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 手术治疗</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            房颤的手术治疗主要包括微创射频消融术和外科手术治疗。射频消融术是一种介入治疗，通过穿刺患者双侧股静脉，将导管沿静脉一直到达右心房，再穿刺房间隔达到左心房，进行环肺静脉消融。射频消融术是一种可根治房颤的手段。患者术后一般3个月后心律失常不再出现。如三个月后再次发作，代表消融失败，需考虑药物治疗或再次进行射频消融术。数据显示，阵发性房颤首次导管射频消融的成功率在60%-70%左右，持续性房颤的手术成功率为50%-60%。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 药物治疗</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            新近发生的房颤用药物转复为窦性心律的成功率可达70%以上。药物复律适用于那些房颤持续时间不超过半年、心房不大、无结构性心脏异常、房颤的诱发因素已经去除的阵发性或持续性房颤。</p>
                        <!--健康资讯/-->
                    </div>
                </div>
            </div>
        </div>
        <script src="../../../plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../../plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

        <script src="../../../plugins/jquery-datatimepicker/jquery.datetimepicker.js" type="text/javascript"
                charset="utf-8"></script>

        <script src="../../../js/common/common.js" type="text/javascript" charset="utf-8"></script>
        <script src="../../js/common/common3.js" type="text/javascript" charset="utf-8"></script>
    </body>

</html>

