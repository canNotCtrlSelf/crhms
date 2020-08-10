var family_member = 0;

/**
 * 添加家属信息
 * 删除的时候不能删除Jquery绑定的元素，否则就无法再继续使用
 */
function addMore() {
	console.log("add-more...");
	$("#add-more").remove();
	family_member = family_member + 1;
    $("#family-info").append("<tr>\n" +
        "                                        <td style=\"line-height: 36px;\">" + (family_member + 1) + "</td>\n" +
        "                                        <td ><input type=\"text\" name=\"familyInfoList[" + family_member + "].truename\"></td>\n" +
        "                                        <td >\n" +
        "                                            <label style=\"line-height: 36px;\">\n" +
        "                                                男&nbsp;<input type=\"radio\" name=\"familyInfoList[" + family_member + "].gender\" value=\"男\" checked>\n" +
        "                                            </label>\n" +
        "                                            &nbsp;&nbsp;\n" +
        "                                            <label style=\"line-height: 36px;\">\n" +
        "                                                女&nbsp;<input type=\"radio\" name=\"familyInfoList[" + family_member + "].gender\" value=\"女\">\n" +
        "                                            </label>\n" +
        "                                        </td>\n" +
        "                                        <td ><input type=\"text\" name=\"familyInfoList[" + family_member + "].family_relationship\"></td>\n" +
        "                                        <td >\n" +
        "                                            <div class=\"input-group\">\n" +
        "                                                <input type=\"text\" id=\"datetimepicker"+family_member+"\" class=\"form-control \" name=\"familyInfoList[" + family_member + "].birthdate\">\n" +
        "                                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-calendar\"></i></span>\n" +
        "                                            </div>\n" +
        "                                        </td>\n" +
        "                                        <td ><input type=\"text\"  name=\"familyInfoList[" + family_member + "].work_unit\"></td>\n" +
        "                                        <td ><input type=\"text\"  name=\"familyInfoList[" + family_member + "].profession\"></td>\n" +
        "                                        <td ><input onclick=\"addMore()\" id=\"add-more\" class=\"btn btn-warning\" value=\"添加\"></td>\n" +
        "                                    </tr>");
	$("#datetimepicker"+family_member+"").datetimepicker({
		format: 'Y-m-d',
		timepicker: false
	});

};
