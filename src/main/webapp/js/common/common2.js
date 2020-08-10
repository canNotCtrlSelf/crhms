$(function () {
    /**
     * 点击切换密码的显示状态
     */
    $("#changeStatus").click(function () {
        if ($(this).val() == "显示") {
            $(this).val("隐藏");
            console.log($("#my-password").attr("type", "text"));
        } else {
            $(this).val("显示");
            console.log($("#my-password").attr("type", "password"));
        }
    });
})
