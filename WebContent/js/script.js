function zipCheck(){ //스크립트 모아 놓는 곳
	//alert('zip');
	url = "zipcheck.jsp?check=y"; //zipcheck.jsp가 불러옴
	window.open(url, "post", "toolbar=no,width=350,height=300,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
}

function idCheck(){
	//alert('id');
	if(regForm.id.value === ""){
		alert('id입력');
		regForm.id.focus();
	}else{
		url = "idcheck.jsp?id=" + regForm.id.value ; 
		window.open(url, "id", "toolbar=no,width=300,height=150,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
	}
	
	
}

function inputCheck(){
	//입력자료 검사 후 추가 처리
	if(regForm.id.value === ""){
		alert("아이디 입력");
		regForm.id.focus();
		return;
	}
	if(regForm.passwd.value === ""){
		alert("비밀번호 입력");
		regForm.passwd.focus();
		return;
	}
	if(regForm.passwd.value !== regForm.repasswd.value){
		alert("비밀번호 불일치");
		regForm.repasswd.focus();
		return;
	}
	if(regForm.name.value === ""){
		alert("이름 입력");
		regForm.name.focus();
		return;
	}
	if(regForm.email.value === ""){
		alert("이메일 입력");
		regForm.email.focus();
		return;
	}
	
	//정규 표현식으로 이메일 검사 kor@abc.co.kr kor@abc.com

	var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
	if(!regForm.email.value.match(regExp)){
		alert("이메일 정확히 입력");
		regForm.email.focus();
		return;
	}
	if(regForm.phone.value === ""){
		alert("전화번호 입력");
		regForm.phone.focus();
		return;
	}
	
	//생략...
	regForm.submit();
			
}
	//로그인 후 개인 정보 수정 (memberupdate에서 넘어옴)
	function memberUpdate(){
		//alert('a');
		//입력자료 검사 생략...
		document.updateform.submit();
	}
	function memberUpdateCancel(){
		//alert('b');
		//history.back();
		location.href="../guest/guest_index.jsp";
	}
	function memberDelete(){
		alert('회원탈퇴');
	}
	
//관리자가 회원수정
function memUpdate(id){
	//alert('id');
	document.updateFrm.id.value = id;
	document.updateFrm.submit();
}

function memberUpdateAdmin(){
	//alert('a');
	document.updateformAdmin.submit();
}
function memberUpdateCancelAdmin(){
	//alert('b');
	location.href="membermanager.jsp";
}

//관리자가 상품처리
function productDetail(no){
	//alert(no);
	document.detailFrm.no.value = no;
	document.detailFrm.submit();
}


function productUpdate(no){
	//alert(no);
	document.updateFrm.no.value = no;
	document.updateFrm.submit();
}
function productDelete(no){
	//alert(no);
	if(confirm("정말 삭제하시겠습니까")){
	document.delFrm.no.value = no;
	document.delFrm.submit();
	}
}

//Cart 처리
function cartUpdate(form){
	form.flag.value = "update";
	form.submit();
}
function cartDelete(form){
	form.flag.value = "del";
	form.submit();
}






