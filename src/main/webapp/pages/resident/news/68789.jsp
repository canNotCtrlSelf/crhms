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
        <title>照顾好口腔，关乎你的全身健康</title>
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
                        <h2>照顾好口腔，关乎你的全身健康</h2>
                        <img style="float:left;position: relative;width: 160px;height: 160px"
                             src="../../../img/news/eae8a60ab29b01783e0b9851027f9291_720w.jpg">
                        <p>
                            &nbsp;&nbsp;&nbsp; 今天是第29个全国爱牙日，今年爱牙日的主题是“口腔健康
                            全身健康”。口腔健康与全身健康密切相关。口腔中的感染和炎症因子可导致或加剧心脑血管病、糖尿病等慢性病，危害全身健康，影响生命质量。龋病和牙周病会破坏牙齿硬组织和牙齿周围支持组织，不仅影响咀嚼、言语、美观等功能外，还会造成社会交往困难和心理障碍。孕妇的口腔感染是早产和婴儿低出生体重的危险因素。维护口腔健康是防控全身性疾病的重要手段，防治全身性疾病有利于促进口腔健康。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 何为口腔健康</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 世界卫生组织将口腔健康列为人体健康的十大标准之一。口腔健康的标准是“牙齿清洁、无龋洞、无疼痛感、牙龈颜色正常、无出血现象”。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙病和老年痴呆</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            牙病与老年痴呆是否为因果关系目前尚无结论。欧美和日本就老年痴呆症所做的部分研究显示，牙齿的咀嚼可以刺激和影响大脑，牙齿不好，咀嚼减少，对大脑的刺激也会减少，负责记忆的额叶内侧和海马区以及周围组织的体积就会萎缩，导致记忆力和认知能力衰退。目前这些观点只在动物试验中证实过。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙病和肥胖</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 患上牙周病的患者由于牙痛影响进食，吃东西时会本能地不充分咀嚼，从而影响大脑中相应的感受器，导致无节制地进食，引发肥胖。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙病与关节炎</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 曾有美国研究发现，牙龈卟啉单胞菌是牙周病的主要致病病菌。这种病菌也会导致关节炎早发、进程加快及病情加重，其中包括骨骼和软骨受损等。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙周炎和糖尿病</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 糖尿病和牙周炎是一对“冤家”，两者可以互相影响，相互加重疾病。研究发现，糖尿病患者牙周炎的发病率明显高于健康人，且病情更重。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙周炎已成为糖尿病的第六大并发症。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            与此同时，在慢性牙周炎患者的血清中，一些炎症因子的含量比正常人高，而这些炎症因子会降低胰岛素的效果，影响糖尿病人血糖的控制，进而加重糖尿病的病情。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙病与胃病</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            我们吃下的食物，要靠机械消化和化学消化后才能吸收其营养。食物在口腔内通过充分咀嚼被称为机械消化，咀嚼后的食物在口腔中与唾液混合为化学消化，这之后，再吞咽到胃里，靠胃液和肠液消化吸收。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            缺牙或其他牙病会导致食物无法充分被咀嚼而囫囵吞枣，会增加胃的消化负担。此外，口腔内有300余种微生物，牙周病等牙齿疾病会引发口腔卫生不良，如生活中又不加以注意，做到勤刷牙漱口，有些致病菌就通过口腔进入胃里进行繁殖。研究证明，胃炎是由幽门螺旋杆菌引起，而在不清洁口腔的牙菌斑中也检出了这种细菌。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙周炎和心脏病</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 研究发现，牙周炎严重会祸及心脏，甚至引发心脏疾病。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            一方面，牙周细菌会随着血流至包括心脏血管在内的全身血管，从而造成血管内皮细胞的功能丧失，进而导致管壁粥状硬化，以及增加血管阻塞的风险，同时心肌梗塞的风险也会随着上升。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 另一方面，牙周病的细菌随着血流到全身血管，也会导致体内的发炎指数上升，造成全身血管发炎。心脏冠状动脉阻塞本身正是血管发炎的结果。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙周炎和脑中风</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            牙周炎诱发心肌梗塞和冠心病一样，牙周炎也可诱发缺血性脑中风。研究显示，牙周炎患者发生中风的几率是未患牙周病者的2.1倍。牙周细菌入侵人体血液系统后，血液中的免疫细胞在反击“入侵”者的过程中会产生一种胶状物质，这种物质依附在血管壁上，日积月累将阻塞血管，造成冠状动脉粥样硬化，牙周细菌产生的酶能促使血栓形成，导致中风。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 牙周炎和早产</p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 目前认为，造成早产低体重儿的危险因素除了习惯性流产、高龄产妇、酗酒、吸烟等传统因素外，牙周炎也是一个诱因，而它经常被孕妇忽视。</p>
                        <p>
                            &nbsp;&nbsp;&nbsp;
                            牙周炎的致病细菌及其产生的毒性代谢物通过溃疡糜烂的牙龈内壁进入血液，随着血液流动到身体的各个部位，一旦侵入胎盘，即可刺激母体产生前列腺素，肿瘤坏死因子等炎症介质，这些炎症介质即可导致早产。研究表明，排除所有传统危险因素后，牙周组织健康的孕妇发生早产的几率为11.2%，患有中、重度牙周炎的孕妇为28.6%。</p>
                    </div>
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

