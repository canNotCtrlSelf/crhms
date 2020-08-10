new Vue({
    el: "#sliderbar",
    data: {},
    methods: {
        chooseFunction: function (num) {
            //1.获取url
            var myurl = "";
            switch (num) {
                case 1: {
                    myurl = "./personal-center/resident-info.jsp";
                    break;
                }
                case 2: {
                    myurl = "./personal-center/change-pwd.jsp";
                    break;
                }
                case 3: {
                    myurl = "./health-service/heal-assess.html";
                    break;
                }
                case 4: {
                    myurl = "./health-service/mentality-assess.jsp";
                    break;
                }
                case 5: {
                    myurl = "./health-service/man-health-guide.html";
                    break;
                }
                case 6: {
                    myurl = "./.html";
                    break;
                }
                case 7: {
                    myurl = "./.html";
                    break;
                }
                case 8: {
                    myurl = "/.html";
                    break;
                }
                case 9: {
                    myurl = myurl + ".html";
                    break;
                }
                case 10: {
                    myurl = myurl + ".html";
                    break;
                }
            }
            //先跳转页面，不加载数据
            window.location.href = myurl;

        }
    }
});