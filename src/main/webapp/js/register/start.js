//DOM加载完成执行的代码
$(document).ready(function () {
    /**
     * 提交数据到服务器端
     * 验证手机号是否重复
     */
    var vm = new Vue({
        el: "#register-form",
        data: {
            userRegister: {
                id: "",
                username: "",
                password: "",
                role_id: "",
                phone_number: "",
            }
        },
        methods: {
            signup: function () {
                //判断用户是否选择了用户类型。
                var role = $("#user-role").val();
                if (role == "1") {

                } else if (role == "2") {

                } else if (role == "3") {

                } else {
                    alert("请选择用户类型");
                    return;
                };
                var _this = this;
                axios.post('/crhms/userRegister/signup.do', _this.userRegister
                ).then(function (response) {
                    var dataa = response.data;
                    console.log(dataa);
                    console.log(typeof dataa);
                    if (dataa == "isExist") {
                        alert("手机号已被人使用，请重新输入！")
                    } else {
                        // alert("注册成功！");
                        if (role == "1") {
                            window.location.href = "../../pages/register/resident-info.jsp";
                        } else if (role == "2") {
                            window.location.href = "../../pages/register/doctor.html";
                        } else if (role == "3") {
                            window.location.href = "../../pages/register/health-manager.html";
                        } else {
                            alert("请选择用户类型");
                            return;
                        };
                    }
                })
                    .catch(function (error) {
                        console.log(error);
                    });
            }
        }
    });


    /**
     * 账户注册时,验证输入是否合法
     */
    $("#register-form").validate({
        rules: {
            username: {
                required: true,
                minlength: 2,
                maxlength: 12
            },
            phone_number: {
                required: true,
                digits: true,
                rangelength: [11, 11]
            },
            password: {
                required: true,
                rangelength: [6, 12]
            },
            comfirmpwd: {
                equalTo: "input[name='password']"
            }
        },
        messages: {
            username: {
                required: "用户名不能为空！",
                minlength: "用户名不得少于2个字符！",
                maxlength: "用户名不得大于12个字符！"
            },
            phone_number: {
                required: "手机号必须输入！",
                digits: "只能输入纯数字！",
                rangelength: "手机号只能输入11位！"
            },
            password: {
                required: "密码不能为空！",
                rangelength: "密码输入的范围在6-12位之间！"
            },
            comfirmpwd: {
                equalTo: "两次输入的密码不一致！"
            }
        }
    });
})
