$(function () {
    /**
     * 退出系统
     */
    $("#logout").click(function () {
        var r = confirm("确认退出系统吗？");
        if (r == true) {
            window.location.href = "../../userRegister/logout.do";
        }
    });
})
