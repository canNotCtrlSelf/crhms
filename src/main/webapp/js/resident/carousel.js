//DOM加载完毕后
$(document).ready(function() {

	// 轮播图
	$("#myCarousel").carousel({
		interval: 3000
	});

	$("#myCarousel").carousel('cycle');
	// 轮播图 end


	/*	new Vue({
            el: "#welcome",
            data: {
                username: "xiaoming",
                userRegisterId:""
            },
            methods: {
                logoff: function() {
                    console.log("--------logoff------")
                    var _this = this;
                    $.ajax({
                        type: "GET",
                        url: "/crhms/userRegister/logoff.do",
                        success: function(data) {
                            _this.username = "";
                            console.log("success" + data);
                            $("#notlog").show();
                            $("#loged").hide();
                        },
                    });
                }
            },
            created: function() {
                console.log("=============vue领域==============");
                var _this = this;
                // console.log(this.username+"-----");
                $.ajax({
                    type: "GET",
                    url: "/crhms/userRegister/getUserRegister.do",
                    datatype: "json",
                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                    success: function(data) {
                        console.log("success" + data);
                        //转换json字符串为json对象
                        if (data == "") {
                            //用户名不存在
                            $("#notlog").show();
                            $("#loged").hide();
                        } else {
                            //json中username是从cookie中取出来的值，所以需要转码
                            var _data = JSON.parse(decodeURI(data));
                            _this.username = _data.username;
                            $("#notlog").hide();
                            $("#loged").show();
                        }

                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                        // 状态码
                        console.log(XMLHttpRequest.status);
                        // 状态
                        console.log(XMLHttpRequest.readyState);
                        // 错误信息
                        console.log(textStatus);
                    }
                });
            }
        });*/

});
