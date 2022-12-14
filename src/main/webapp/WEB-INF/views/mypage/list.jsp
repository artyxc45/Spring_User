<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="py-5 text-center">
      <h2>my page</h2>
    </div>

    <div class="row g-5" style="margin-top:5%;margin-left:10%;margin-bottom:5%;width:80%">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Product name</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Second product</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Third item</h6>
              <small class="text-muted">Brief description</small>
            </div>
            <span class="text-muted">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">???$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$20</strong>
          </li>
        </ul>

          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">???????????? ??????</h4>
        <form id ="mypageForm" >
        	<c:forEach items="${list}" var="MypageVO">
	          <div class="row g-3">
	            <div class="col-sm-6">
	              <label for="firstName" class="form-label">?????? ID</label>
	              <input type="text" class="form-control" id="USER_ID" name="USER_ID" placeholder="" value="<c:out value="${MypageVO.USER_ID}"/>" required>
	              <div class="invalid-feedback">
	                <span id="id_feedback" >Valid first name is required.</span>
	              </div>
	            </div>
	
	            <div class="col-sm-6">
	              <label for="lastName" class="form-label">Password</label>
	              <input type="password" class="form-control" id="lastName" name="USER_PW" placeholder="" value="<c:out value="${MypageVO.USER_PW}"/>'" required>
	              <div class="invalid-feedback">
	                <span id="password_feedback">Valid last name is required.</span>
	              </div>
	            </div>
	
	            <div class="col-12">
	              <label for="username" class="form-label">Username</label>
	              <div class="input-group has-validation">
	                <input type="text" class="form-control" id="username" name="USER_NICKNAME" placeholder="Username" value="<c:out value="${MypageVO.USER_NICKNAME}"/>">
	              <div class="invalid-feedback">
	                  Your username is required.
	                </div>
	              </div>
	            </div>
	            
	            <div class="col-12">
	              <label for="username" class="form-label">PhoneNumber</label>
	              <div class="input-group has-validation">
	                <input type="text" class="form-control" id="USER_PHONE" name="USER_PHONE" placeholder="Username" value="<c:out value="${MypageVO.USER_PHONE}"/>">
	              <div class="invalid-feedback">
	                  Your username is required.
	                </div>
	              </div>
	            </div>
	
	            <div class="col-12">
	              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
	              <input type="email" class="form-control" id="email" name="USER_EMAIL" placeholder="you@example.com" value='<c:out value="${MypageVO.USER_EMAIL}"/>'>
	              <div class="invalid-feedback">
	                Please enter a valid email address for shipping updates.
	              </div>
	            </div>
	            
	            <div class="col-12">
				  <button class="w-100 btn btn-primary btn-lg" type="button" onclick="execution_daum_address()">????????????</button>
	            </div>
	            
	            <div class="col-12">
	              <div class="col-sm-3">
	              <label for="address" class="form-label USER_POST" >addr_num</label>
	              	<input type="text" class="form-control USER_ADDR1" id="USER_POST"  name = "USER_POST" placeholder="addr_num" value='<c:out value="${MypageVO.USER_POST}"/>'>
	              </div>
	              <div class="col-sm-8"> 
	              <label for="address" class="form-label">Address</label>
	              	<input type="text" class="form-control USER_ADDR1" id="address" name="USER_ADDR1" placeholder="1234 Main St" value='<c:out value="${MypageVO.USER_ADDRESS}"/>'>
	              </div>
	            </div>
	
	            <div class="col-12">
	              <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
	              <input type="text" class="form-control USER_ADDR2" id="address2" name="USER_ADDR2" placeholder="Apartment or suite">
	            </div>
	
	          </div>
	
	          <hr class="my-4">
	
	         <button type="button" id="updateBtn" class="btn btn-outline btn-primary pull-right">
                		??????
              </button>
	          <input type="hidden" id ="userId" name="userId" value="${userId}">
	          <input type="hidden" id ="user_no" name="user_no" value="${user_no }">
          </c:forEach>
        </form>
      </div>
    </div>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	
	var userId = $("#userId").val();
	var user_no = $("#user_no").val();
	user_no*=1;
	var test = "test";
	var user_overlap = 0;
	$("#USER_ID").keydown(function(e) {
		
		/* alert($("#USER_ID").val() + String.fromCharCode(e.keyCode).toLowerCase());
		console.log(e.keyCode); */
		/* $.ajax({
		      url: '/mypage/list2',
		      data: {userId :$("#USER_ID").val()} ,
		      type: 'post',
		      dataType:'json',
		      beforeSend : function(xhr)
		        {   
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
		      success: function(data){
		    	  
		    	  if(data.length >0){
		    		  console.log(data[0].user_no);
			    	  user_overlap = data[0].user_no;
		    	  }
		      }
		}); 
		if(user_overlap>0){
			$("#id_feedback").css("color","red");
			$("#id_feedback").text("id ok");
		}else{
			$("#id_feedback").css("color","black");
			$("#id_feedback").text("id no save gogo");
		}
		user_overlap = 0; */
    });
	
	function returnList(url,formData){
		$.ajax({
		      url: url,
		      data: formData ,
		      type: 'post',
		      dataType:'json',
		      beforeSend : function(xhr)
		        {   
		            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		        },
		      success: function(data){
		    	  alert('???????????? ????????? ?????????????????????');
		      }
		}); 
		
	}
	//???????????? ??????
	$("#updateBtn").click(function(){
		var conf = confirm("?????????????????????????");
		if (conf){
			
			var formData = $("#mypageForm").serialize();
			formData.userId = userId;
			formData.no = user_no;
			
			console.log('go_to_update')
			console.log(formData);
			$.ajax({
			      url: '/mypage/update',
			      data: formData ,
			      type: 'post',
			      dataType:'json',
			      success: function(data){
			    	  console.log("AAA")
			          console.log(data); 
			    	  returnList('/mypage/list',formData);
			      },error:function(result){
			    	  console.log(result);
			      }
			}); 
			}
	});
	
	//?????? api ??????////////////////////////////////////////////////////////
	function execution_daum_address(){
		new daum.Postcode({
			 oncomplete: function(data) {
	             // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

	             // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
	             // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	             var addr = ''; // ?????? ??????
	             var extraAddr = ''; // ???????????? ??????

	             //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
	             if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
	                 addr = data.roadAddress;
	             } else { // ???????????? ?????? ????????? ???????????? ??????(J)
	                 addr = data.jibunAddress;
	             }

	             // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
	             if(data.userSelectedType === 'R'){
	                 // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                 // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                 if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                     extraAddr += data.bname;
	                 }
	                 // ???????????? ??????, ??????????????? ?????? ????????????.
	                 if(data.buildingName !== '' && data.apartment === 'Y'){
	                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                 }
	                 // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                 if(extraAddr !== ''){
	                     extraAddr = ' (' + extraAddr + ')';
	                 }
	                 // ????????? ??????????????? ?????? ????????? ?????????.
	                // document.getElementById("sample6_extraAddress").value = extraAddr;
	                 addr += extraAddr
	             
	             } else {
	                 //document.getElementById("sample6_extraAddress").value = '';
	                 addr += ' '
	             }

	             // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	             //document.getElementById('sample6_postcode').value = data.zonecode;
	             $("#USER_POST").val(data.zonecode);
	            // document.getElementById("sample6_address").value = addr;
	             $("#address").val(addr)
	             // ????????? ???????????? ????????? ????????????.
	            // document.getElementById("sample6_detailAddress").focus();
	             $("#address2").attr("readonly",false);
	             $("#address2").focus();
	         }
	     }).open();
	    
	}
</script>

   <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>
