$(document).ready(function(){
	 var modalContents = $(".modal-contents");
     var modal = $("#defaultModal");
     
     

     $("#idCheck").click(function(){
    	 var id = $('#id').val();
    	 $.ajax({
 			url : '/user/idCheck?id='+id,
 			contentType: 'application/json',
 			type : 'GET',
 			dataType : 'json',
 			success : function(result) {
 				var json = JSON.parse(result)
 				if(json.result == 'success'){
 					$('#joinBtn').attr('disabled', false)
 					json.message = '사용가능한 아이디 입니다'
 				}
 				 modalContents.text(json.message);
 		         modal.modal('show');
 			},
 			error : function(e) {
                 alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
 			}
 		})	
     })
     
     
     //회원가입버튼 클릭
	$("#joinBtn").click(function(){
		
		var id = $('#id').val()
		var password = $('#password').val()
		var passwordCheck = $('#passwordCheck').val()
		var name = $('#name').val()
		var address = $('#address').val()
		var email = $('#email').val()
		var phoneNumber = $('#phoneNumber').val()
		
		
		//아이디 검사
        if(id==""){
            modalContents.text("아이디를 입력하여 주시기 바랍니다.");
            modal.modal('show'); 
            $('#id').focus();
            return false;
        }
         
        //패스워드 검사
        if(password==""){
            modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
            modal.modal('show');
            $('#password').focus();
            return false;
        }
         
        //패스워드 확인
        if(passwordCheck==""){
            modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
            modal.modal('show');
            $('#passwordCheck').focus();
            return false;
        }
         
        //패스워드 비교
        if(password != passwordCheck || passwordCheck==""){
            modalContents.text("패스워드가 일치하지 않습니다.");
            modal.modal('show');
            $('#passwordCheck').focus();
            return false;
        }
         
        //이름
        if(name==""){
            modalContents.text("이름을 입력하여 주시기 바랍니다.");
            modal.modal('show');
            $('#name').focus();
            return false;
        }
         
        //주소
        if(address==""){
            modalContents.text("주소를 입력하여 주시기 바랍니다.");
            modal.modal('show');
            $('#nickname').focus();
            return false;
        }
         
        //이메일
        if(email==""){
            modalContents.text("이메일을 입력하여 주시기 바랍니다.");
            modal.modal('show');             
            $('#email').focus();
            return false;
        }
         
        //휴대폰 번호
        if(phoneNumber==""){
            modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
            modal.modal('show');
            $('#phoneNumber').focus();
            return false;
        }
        
        var data = {}
        data.id = id
        data.email = email
        data.password = password
        data.name = name
        data.address = address
        data.phoneNumber = phoneNumber
        
        //회원가입    
        $.ajax({
 			url : '/user/addUser',
 			contentType: 'application/json',
 			type : 'POST',
 			dataType : 'json',
 			data : JSON.stringify(data),
 			success : function(result) {
 				var json = JSON.parse(result)
 				if(json.result == 'success'){
 					modalContents.text('회원가입이 완료 되었습니다');
 	 		        modal.modal('show');  
 	 		        location.assign("/user/login");
 				}
 				modalContents.text(json.message);
	 		    modal.modal('show');   
 			},
 			error : function(e) {
                 alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
 			}
 		})	
        
	});
	
	$('.onlyAlphabetAndNumber').keyup(function(event){
		$('#joinBtn').attr('disabled', true)
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
        }
    });
	
	$(".onlyHangul").keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
        }
    });
	
	$(".onlyNumber").keyup(function(event){	 
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi,''));
        }
    });
	

	
	
	
});

