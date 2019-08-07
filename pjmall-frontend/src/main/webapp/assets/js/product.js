$(document).ready(function(){


	$(".imgAdd").click(function(){
	  $(this).closest(".row").find('.imgAdd').before('<div class="imgUp"><div class="imagePreview"></div><label class="btn btn-primary">Upload<input type="file" name="productImg" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;"></label><i class="fa fa-times del"></i></div>');
	});
	
	$(".optAdd").click(function(){
		  $(this).closest(".row").find('.optAdd').before('<div style=" display: flex;"><div class="productOptions"><label>사이즈</label> <input class="productOption productSize" type="text" placeholder="사이즈" required="required"></div><div class="productOptions"><label>색상</label> <input class="productOption productColor" type="text" placeholder="색상" required="required"></div><div class="productOptions"><label>수량</label> <input class="productOption productQuantity" type="text" placeholder="수량" required="required"></div><i class="fa fa-times" id="productDel"></i></span>');
		});
	
	$(document).on("click", "i.del" , function() {
		$(this).parent().remove();
	});
	
	$(document).on("click", "#productDel" , function() {
		$(this).parent().remove();
	});
	
	$(document).on("click", "#sendProductButton" , function() {
		var category = $('#category').val()
		var productName = $('#productName').val()
		var price = $('#price').val()
		var etc = $('#etc').val()
		var options = []
		var data = {}		
		$productSize = $('.productSize')
		$productColor = $('.productColor')
		$productQuantity = $('.productQuantity')
		
		for(let i=0; i<$productSize.length; i++){
			let option = {}
			if($productSize[i].value =='' || $productColor[i].value =='' || $productQuantity[i].value==''){
				alert('옵션은 필수 항목 입니다')
				break
			}
			option.size = $productSize[i].value
			option.color = $productColor[i].value
			option.quantity = $productQuantity[i].value
			options.push(option)
		}
		
		data.categoryNo = category
		data.productName = productName
		data.price = price
		data.productEtc = etc
		data.option = options
		
		$.ajax({
			url : '/manage/product/add',
			contentType: 'application/json',
			type : 'POST',
			data: JSON.stringify(data),
			dataType : 'json',
			success : function(result) {
				var json = JSON.parse(result)
				if	(json.result =='success'){
					location.assign("/manage/product/photo?productNo="+json.data.productNo);
				}else {
					alert('상품등록에 실패하였습니다');
				}
			},
			error : function(e) {
                alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
			}
		})
		
	});
	
	$(function() {
	    $(document).on("change",".uploadFile", function()
	    {
	    		var uploadFile = $(this);
	        var files = !!this.files ? this.files : [];
	        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
	 
	        if (/^image/.test( files[0].type)){ // only image file
	            var reader = new FileReader(); // instance of the FileReader
	            reader.readAsDataURL(files[0]); // read the local file
	 
	            reader.onloadend = function(){ // set image data as background of div
	                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
	            	uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url("+this.result+")");
	            }
	        }
	      
	    });
	});

});

