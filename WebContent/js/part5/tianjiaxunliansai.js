$(function() {
	$('body').css({
		'min-height' : $(window).height()
	});

	// 点击登录
	$(".submitBtn").click(function() {
		var address = $("#address").val();
		var clubAName = $("#clubAName").val();
		var clubBName = $("#clubBName").val();
		var beizhu = $("#beizhu").val();

		if (address == "") {
			alert("请输入比赛场地");
			return false;
		}

		if (clubAName == "") {
			alert("请输入对战队伍A");
			return false;
		}

		if (clubBName == "") {
			alert("请输入对战队伍B");
			return false;
		}
		// 请求后台服务
		var data = {
			operateType : "tianjianxunliansai",
			address : address,
			clubAName : clubAName,
			clubBName : clubBName,
			beizhu : beizhu
		};
		alert(JSON.stringify(data));
		jump(BINGLINCHENGXIAURL, data);
	});
});