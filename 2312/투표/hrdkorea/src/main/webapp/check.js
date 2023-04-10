function checking(){
	if(frm.v_jumin.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.v_jumin.focus();
		return false(); 
	}
	else if(frm.v_name.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else if(frm.v_name.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else if(frm.m_no.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else if(frm.v_time.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else if(frm.v_area.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else if(frm.v_confirm.value.length==0){
		alert("주민번호가 입력되지 않았습니다");
		frm.focus.v_jumin();
		return false; 
	}
	else{
		alert("투표하기 정보가 정상적으로 입력되었습니다");
		frm.submit();
		window.location="index.jsp";
	}
	
}
function reseting(){
	frm.reset();
	window.location="index.jsp";
	return frm.v_jumin.focus();
	
}