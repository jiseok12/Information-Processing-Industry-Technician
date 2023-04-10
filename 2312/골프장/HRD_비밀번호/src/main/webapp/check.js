/**
 * 
 */
 function getMemberNo(c_no){
	frm.memberNo.value = c_no;
}
function makeTuition(t_code){
	let price = parseInt(t_code)*1000;
	frm.tuition.value = price;
}
 function checking(){
	if(frm.regist_month.value == ""){
		alert("수강월이 입력되지 않았습니다");
		frm.regist_month.focus();
	}
	else{
		alert("수강정보를 입력합니다");
		frm.submit();
		window.location = "index.jsp";
	}
}

function reseting(){
	alert("정보를 초기화 시킬 거임!");
	frm.reset();
	frm.regitst_month.focus();
}