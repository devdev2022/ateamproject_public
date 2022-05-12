/*
 * 
 */
 
 function inputCheck(){
	f=document.regFrm;
    alert(f.id.value	); /*id창에 입력이 잘 동작하는지 확인 하는것*/
	
	if(f.id.value==""){
		alert("아이디를 잊으셨네요");
		f.id.focus();
		return;
	}
	if(f.pwd.value==""){
		alert("비밀번호를 잊으셨네요");
		f.pwd.focus();
		return;
}
 if(f.repwd.value==""){
		alert("비번다시 확인하셈!!");
		f.repwd.focus();
		return;
		}
		
	if(f.pwd.value!=f.repwd.value){
		alert("비번일치 안네요!!");
		f.repwd.value="";
		f.repwd.focus();
		return;
	}	
	
		if(f.name.value==""){
		alert("이름을 입력해 주세요.");
		f.name.focus();
		return;
	}
	if(f.birthday.value==""){
		alert("생년월일을 입력해 주세요.");
		f.birthday.focus();
		return;
	}
	if(f.email.value==""){
		alert("이메일을 입력해 주세요.");
		f.email.focus();
		return;
	}
var str= f.email.value;	   
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.'); 
    var spacePos = str.indexOf(' ');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
    else {
          alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
	      f.email.focus();
		  return;
    }	
	
		if(f.zipcode.value==""){
		alert("우펀번호을 입력해 주세요.");
		f.zipcode.focus();
		return;
			}
			
		if(f.job.value==""){
		alert("직업을 선택해 주세요.");
		f.job.focus();
		return;
			}
			
			
			f.submit();
 }
 
 
 
 
 
 
 
 