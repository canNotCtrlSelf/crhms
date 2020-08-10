$(function () {

    /*$(".datetime").blur(function () {
        var bir =  $(".datetime").val();
    });*/

    /**
     * bootstrap日期控件，设置格式
     */
    $("#datetimepicker").datetimepicker({
		format: 'Y-m-d',
		timepicker: false
    });
})
