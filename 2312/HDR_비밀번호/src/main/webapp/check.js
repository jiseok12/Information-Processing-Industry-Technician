/**
 * 
 */
 function joinCheck() {
	if(document.frm.custname.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.custname.focus();
		return false;
	}
	if(document.frm.phone.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.phone.focus();
		return false;
	}
	if(document.frm.address.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.address.focus();
		return false;
	}
	if(document.frm.joindate.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.joindate.focus();
		return false;
	}
	if(document.frm.grade.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.grade.focus();
		return false;
	}
	if(document.frm.city.value.length == 0){
		alert("회원성명이 입력되지 않았습니다");
		frm.city.focus();
		return false;
	}
	alert("호원등록이 완료 되었습니다");
	 
	return true;
}
function search() {
	window.location = "list.jsp";
}