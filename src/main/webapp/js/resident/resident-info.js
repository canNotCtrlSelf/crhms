$(document).ready(function() {





	/*var ri = new Vue({
		el: "#resident-info-form",
		data: {
			picked: "male",
			residentInfo: {
				truename: "小风",
				gender: "",
				birthday: "",
				nationality: "",
				address: "",
				id_card: "",
				hometown: "",
				phone_number: "",
				work_unit: "",
				education: "",
				martial_status: "",
				remarks: ""
			}
		},
		methods: {

			/!**
			 * 更新数据到数据库.
			 * 得到来自服务器端的数据,显示在html页面对应位置.
			 *!/
			updateResidentInfo:function(){
				//提交到服务器
				_this = this;
				$.ajax({
					type:"GET",
					url:"/crhms/residentInfo/update.do",
					data:{
						residentInfo:_this.residentInfo
					},
					datatype: "json",
					success:function(data){
						if(data == "success" ){
							alert("修改成功!");
						}else{
							alert("修改失败!");
						}
					}
				});
				//隐藏跟新按钮
				$("#btn-update-resident-info").hide();
				
			}
		},
		created: function() {
			console.log("resident-info.js has loaded....");
			$.ajax({
				type:"GET",
				url:"/crhms/residentInfo/findById.do",
				data:{
					
				},
				datatype:"json",
				success:function(data){
					console.log("success..."+data);
				}
			});
		}
	});*/

});
