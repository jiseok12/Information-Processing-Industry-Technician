/**
 * 
 */
 function checking(){
	if(frm.pname.value==""){
		alert('선수이름이 입력되지 않았습니다.');
		frm.pname.focus();
	}
	else if(frm.pposition.value==""){
		alert('선수포지션이 입력되지 않았습니다.');
		frm.pposition.focus();
	}
	else if(frm.pdate.value==""){
		alert('선수등록일이 입력되지 않았습니다.');
		frm.pdate.focus();
	}
	else if(frm.pgrade.value==""){
		alert('선수등급이 입력되지 않았습니다.');
		frm.pgrade.focus();
	}
	else{
		alert('선수의 정보수정이 완료되었습니다.');
		document.frm.submit();
		return true;
	}
}
 function checking2(){
	if(frm.pname.value==""){
		alert('선수이름이 입력되지 않았습니다.');
		frm.pname.focus();
	}
	else if(frm.pposition.value==""){
		alert('선수포지션이 입력되지 않았습니다.');
		frm.pposition.focus();
	}
	else if(frm.pdate.value==""){
		alert('선수등록일이 입력되지 않았습니다.');
		frm.pdate.focus();
	}
	else if(frm.pgrade.value==""){
		alert('선수등급이 입력되지 않았습니다.');
		frm.pgrade.focus();
	}
	else{
		alert('선수등록이 완료되었습니다.');
		document.frm.submit();
		return true;
	}
}
function reseting(){
	alert('선수의 정보수정을 취소합니다.');
	frm.reset();
}
function reseting2(){
	alert('정보를 지우고 처음부터 다시 입력합니다.');
	frm.reset();
}