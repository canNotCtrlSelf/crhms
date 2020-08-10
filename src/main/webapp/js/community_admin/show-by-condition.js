$(function () {

    /**
     * 判读单选按钮是否被选中
     */
    $("input[name='condition']").click(function () {
        if ($(this).val()=='1') {
            $("#truenameForm").show();
            $("#LikeForm").hide();
            $("#genderForm").hide();
            $("#birthdateForm").hide();
        }
        if ($(this).val()=='2') {
            $("#truenameForm").hide();
            $("#LikeForm").show();
            $("#genderForm").hide();
            $("#birthdateForm").hide();
        }
        if ($(this).val()=='3') {
            $("#truenameForm").hide();
            $("#LikeForm").hide();
            $("#genderForm").show();
            $("#birthdateForm").hide();
        }
        if ($(this).val()=='4') {
            $("#truenameForm").hide();
            $("#LikeForm").hide();
            $("#genderForm").hide();
            $("#birthdateForm").show();
        }
    });

    /**
     * bootstrap日期控件，设置格式
     */
    $("#datetimepicker1").datetimepicker({
        format: 'Y-m-d',
        timepicker: false
    });

    $("#datetimepicker2").datetimepicker({
        format: 'Y-m-d',
        timepicker: false
    });
})
