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
        <title>夏秋相交腹泻高发 别随便吃抗生素、止泻药</title>
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
                        <h2>夏秋相交腹泻高发 别随便吃抗生素、止泻药</h2>
                        <img style="float:left;position: relative;width: 160px;height: 160px"
                             src="../../../img/news/304096728836bccb099d81f0233c0e69_720w.jpg">
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            进入夏季以来，北京市温度和湿度均较高，细菌性肠道传染病也随之进入发病高峰。从2017年1月初到7月底，北京市各医疗机构肠道门诊累计报告就诊患者9万3千余例。全市共报告痢疾4779例，其他感染性腹泻病例约24300例。从北京市监测数据来看，近一个月以来，除霍乱、痢疾、伤寒和副伤寒以外的感染性腹泻病例数字也出现持续上升。由于腹泻是一种常见疾病，很多人不加重视，认为随便吃点止泻药，将腹泻止住就行了。其实，腹泻有多种类型，对症下药才更有利于机体的尽快恢复。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 不是所有腹泻都是感染型的</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            腹泻，俗称“拉肚子”，指排便次数较平时增加，伴随着粪便性状的改变，如变为糊状或水样，甚至带有黏液、脓液和血。另外，腹泻还常伴有呕吐、肚子疼等症状，但每个人会因为感染的病原体不同，而有不同的症状，治疗方法也不一定相同。严重的腹泻可以引起身体重度脱水，伴有高烧、全身酸痛、意识不清、昏迷和休克，甚至有生命危险。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 从医学上分，腹泻有很多种类：渗透性、动力性、分泌性……对于普通人来说，拉肚子后的第一件事，是分清感染型还是非感染型。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            非感染型腹泻的常见病因一般是吃了生冷的东西导致胃肠动力障碍（有的人经过超市冰柜时受到冷刺激也可能想拉肚子），或吃了不好消化的东西导致消化不良，且大便不成形。这类腹泻最典型的表现就是不吃不腹泻，一吃就腹泻；吃清淡的不腹泻，吃刺激性的腹泻。去医院检查血，血常规中白细胞没有异常，便常规中也找不到白细胞。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            感染型腹泻多为细菌感染、饮食不洁净导致，痢疾、肠炎都属于感染型腹泻。这类腹泻大便呈水样便、黏液便或者果冻便，如果细菌损伤了肠道黏膜，还有可能便血。检查血常规时，白细胞数量较多。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            还有一类腹泻需要额外注意，那就是溃疡性结肠炎引起的腹泻，虽然也会表现出黏液便，但溃疡型腹泻并不是感染型的，而是人体免疫改变造成的。免疫改变后造成肠道黏膜坏死，最典型的表现是容易拉脓血便，而且拉肚子次数特别多。结肠炎的症状早期跟痢疾非常像，也会肚子疼、发烧，但是最大特点有两个：一是没有明显诱因，没有吃脏东西的感染经历；二是吃抗生素也好不了，如果是肠炎、痢疾疾病，吃黄连素等抗生素能起到消炎作用，但结肠炎吃抗生素不仅不治病，还可能越吃越糟糕。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 绝大多数腹泻不需要吃抗生素</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 有的人不在乎“拉肚子”，觉得忍一下就过去了，或者自己吃点抗生素就好了。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            人体肠道内的细菌有好细菌和坏细菌之分，当人体内的坏细菌取得暂时性胜利，数量变得多于好细菌，人就会生病。一旦滥用抗生素，把身体里的细菌不分青红皂白全都杀死，好细菌和坏细菌都没了，必然导致体内系统紊乱而生病。随着细菌耐药的发展，抗菌素的选择越来越重要，如果自行用药，可能会造成病原耐药甚至引起慢性腹泻。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 对于非感染型腹泻来说，吃抗生素类药物时间越长，肠道菌群失调就越严重，而绝大多数拉肚子都是非感染型的，不用吃抗生素。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 除了抗生素，还有一类人一拉肚子就吃泻立停，如果是感染型腹泻，泻立停可能只能起到一时的作用，过后细菌繁殖会更厉害。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            另外，腹泻病人出现心慌心悸症状的比较多。很多老年人可能误认为是冠心病发作，于是按照经验舌下含服硝酸甘油。腹泻伴有冠心病基础的患者可能会出现心肌缺血发作，但这种缺血更大程度是由于脱水导致的血容量不足所致，此时血压勉强处于正常范围，对于硝酸甘油之类的血管扩张剂极为敏感，使用后可能会导致严重的低血压，直接导致心脏供血不足、头晕，甚至晕厥。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 应对腹泻掌握两点</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 1、防止脱水</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            腹泻次数多，尤其是水样泻，会使机体丧失大量水分。当腹泻后出现口渴，与平时相比尿量减少，坐起或者站起时头晕，平卧则好转这类表现时，就说明已经出现脱水了。这种情况下，只要不呕吐，一定要喝水，让口渴和尿量减少这两项症状缓解或消失。当然，水里还要加点“料”。因为腹泻丧失的不仅是水，还包括电解质。电解质紊乱本身就会造成乏力、心悸、心律失常等，严重的低钾血症还会导致生命危险。因此，可以在水中加点食盐补充钠离子，加入量以略有咸味为宜。另外，可以喝各种鲜榨果汁补钾。医院里也有口服补液盐可供使用。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 2、调节饮食</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            少吃刺激性食物，可以多喝酸奶，喝之前先在室温下放置一段时间，以免肠胃受到刺激。其次，是补充益生菌来调节肠道微生态。益生菌是肠道里本来就有的东西，多多益善，副作用小。含有地衣芽孢杆菌和双歧杆菌的药物都可以补充益生菌，地衣芽孢杆菌放在室温下保存即可，双歧杆菌则需要放在冰箱低温保存。如果去药店购买双歧杆菌药物，一定要注意药店是不是低温保存，买回家后也需要放在冰箱里，服用时应该用凉白开送服，如果水温超过37摄氏度，高温会将菌种烫死，失去药效。</p>
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

