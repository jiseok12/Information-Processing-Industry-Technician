/**
 * 
 */
function checking(){
	if(frm.resvno.value.length == 0){
		alert('예약번호가 입력되지 않았습니다');
		frm.resvno.focus();
		return false;
	}
	else if(frm.empno.value.length == 0){
		alert('사원번호가 입력되지 않았습니다');
		frm.resvno.focus();
		return false;
	}
	else if(frm.resvdate.value.length == 0){
		alert('근무일자가입력되지 않았습니다');
		frm.resvno.focus();
		return false;
	}
	else if(frm.seatno.value.length == 0){
		alert('좌석번호가 입력되지 않았습니다');
		frm.resvno.focus();
		return false;
	}
	else{
		alert('좌석예약정보가 등록 되었습니다!');
		document.frm.submit();
		return true;
	}
}

function reseting(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	frm.reset();
	frm.resvno.focus();
}

function checking2(){
	if(frm.empno.value.length == 0){
		alert("사원번호가 입력되지 않았습니다");
		frm.empno.focus();
		return false;
	}
	else{
		document.frm.submit();
		return true;
	}
}

function gohome(){
	location.href='index.jsp';
	return false;
}