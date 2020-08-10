/**
 * 按回车登录
 */
function keyLogin() {
    if (event.keyCode == 13) {
        //在登录页面按下回车，然后登录
        submitOnHand();
    }
}


/**
 * 异步校验验证码是否输入正确
 */
function checkVerifyCode() {
    var verifyPass = false;
    $.ajax({
        type: "POST",
        url: "/crhms/userRegister/checkVerifyCode.do",
        data: "verifyCode=" + $("#verifyCode").val()
        ,
        async: false,
        datatype: "json",
        success: function (jsonData) {
            console.log("success==" + jsonData);
            var parsedData = JSON.parse(jsonData);
            if (parsedData == "verifyCodeErr") {
                console.log(parsedData)
                //验证码错误
            } else {
                console.log(parsedData)
                //验证码正确
                verifyPass = true;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            // 状态码
            console.log(XMLHttpRequest.status);
            // 状态
            console.log(XMLHttpRequest.readyState);
            // 错误信息
            console.log(textStatus);
        }
    });
    console.log(verifyPass)
    return verifyPass;
}

/**
 * 异步校验用户名和密码是否正确
 */
function checkUsernamePwd() {
    var usernamePwdInput = false;
    $.ajax({
        type: "POST",
        url: "/crhms/userRegister/checkUsernamePwd.do",
        data:
            "username=" + $("#username").val() + "&password=" + $("#password").val() + "&role_id=" + $("#user-role").val()
        ,
        async: false, //停止同步，浏览器将会锁住
        datatype: "json",
        success: function (jsonData) {
            console.log("success" + jsonData);
            var parsedData = JSON.parse(jsonData);
            if (parsedData == 'userpwdErr') {
                //用户名密码错误
            } else {
                //用户名密码正确
                usernamePwdInput = true;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            // 状态码
            console.log(XMLHttpRequest.status);
            // 状态
            console.log(XMLHttpRequest.readyState);
            // 错误信息
            console.log(textStatus);
        }
    });
    return usernamePwdInput;
}


//发送异步请求，
// 校验验证码，如果验证码正确，开始校验用户名和密码
// 如果验证码或者用户名和密码校验失败，弹出提示窗口
function submitOnHand() {
    //1.判断是否选择了用户类型
    var user_role = $("#user-role").val();
    if (user_role == "") {
        alert("请选择用户类型！");
        return false;
    }
    //先异步校验验证码是否输入正确
    if (!checkVerifyCode()) {
        //验证码错误，提醒用户重新输入,并刷新验证码
        alert("验证码错误！");
        changeVerifyCode();
    } else {
        //验证码正确
        //开始校验用户名和密码
        if (!checkUsernamePwd()) {
            //用户名或者密码错误
            alert("用户名或者密码错误！");
        } else {
            //输入正确
            var path;
            if (user_role == "1") {
                path = "/crhms/pages/resident/home.jsp";
            } else if (user_role == "2") {
                path = "/crhms/pages/doctor/home.jsp";
            } else if (user_role == "3") {
                path = "/crhms/pages/health_manager/home.jsp";
            } else if (user_role == "4") {
                path = "/crhms/pages/community_admin/home.jsp";
            } else if (user_role == "5") {
                path = "/crhms/pages/admin/home.jsp";
            }
            window.location.href = path;
        }
    }
}

/**
 * 更新验证码
 */
function changeVerifyCode() {
    $("#authCode").attr("src", "/crhms/userRegister/getVerifyCode.img?time=" + new Date().getTime());
    // document.getElementById("authCode").src="/VerifyCodeServlet?time="+new Date().getTime();
};

//DOM加载完毕后执行的代码
$(document).ready(function () {
    /**
     * 账户注册时,验证输入是否合法
     */
    $("#loginForm").validate({
        rules: {
            username: {
                required: true
            },
            password: {
                required: true
            },
            verifyCode: {
                required: true
            }
        },
        messages: {
            username: {
                required: "用户名不能为空！"
            },
            password: {
                required: "密码不能为空！"
            },
            verifyCode: {
                required: "验证码不能为空！"
            }
        }
    });
})
