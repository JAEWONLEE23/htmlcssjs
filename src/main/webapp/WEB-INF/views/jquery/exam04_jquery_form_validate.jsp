<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- jQuery -->
     	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<script type="text/javascript">
			function handleCheckData() {
				console.log("입력 데이터를 검사합니다.");
				
				//form 태그의 action 기능을 수행하지않도록 함
				 event.preventDefault(); // 프론트엔드에서 굉장히 중요
				 
				 //각 입력양식의 데이터 검사
				 var totalResult = true;
				 //1)ID 검사------------------------------------------------
				 var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
				 var uidResult = uidPattern.test($("#uid").val());
				 if(uidResult) {
					 $("#uidSpan").removeClass("text-danger");
				 } else {
					 
					 $("#uidSpan").addClass("text-danger");
					 totalResult = false;
					 
				 }
					 
				 //2)Email 검사------------------------------------------------
				 	var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				 	var emailResult = emailPattern.test($("#email").val());
				 	if(emailResult) {
				 		
				 		$("#email").removeClass("bg-danger");
				 	} else {
				 		$("#email").addClass("bg-danger");
						totalResult = false;			 		
				 	}
				 	//3)Password 검사------------------------------------------------
				 	var passwordPattern =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
				 	var passwordResult = passwordPattern.test($("#password").val());
				 	var el_password_span = document.querySelector("#passwordspan");
					if(passwordResult) {
				 		
						$("#password").removeClass("text-danger");
				 	} else {
				 		$("#password").addClass("text-danger");
						totalResult = false;			 		
				 	}
					//4)Phone 검사------------------------------------------------
					var phonePattern = /^(010|011)-\d{3,4}-\d{4}$/; //정규표현식으로 검사
					var phoneResult = phonePattern.test($("#phone").val());
					if(phoneResult) {
						$("#phonespan").text("예)010-123-1234");
						$("#phonespan").removeClass("text-danger");
				 	} else {
				 		$("#phonespan").html("전화번호 형식이 아닙니다.");
				 		$("#phonespan").addClass("text-danger");
						totalResult = false;			 		
				 	}
					//5)전체 유효성 검사 결과가 true일 경우------------------------------------------------
					if(totalResult){
						//수동으로 action 기능을 수행하도록 함
						$("#joinForm")[0].submit(); //엘리먼트 얻기위해서 인덱스를 사용하였다.
						
					}
					
					
				}
			
			 
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam04_jquery_form_validate</div>
  			<div class="card-body">
				<form id="joinForm" name="joinForm" action="/htmlcssjs/jquery" onsubmit="handleCheckData()" novalidate>
				 <div class="mb-3">
				    <label for="uid" class="form-labe">ID</label>
				    <input type="text" class="form-control" id="uid" name="uid" value="Abc123"/>
				    <span id="uidSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10장 이하</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="email" class="form-labe">Email</label>
				    <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com"/>
				  </div>
				
				  <div class="mb-3">
				    <label for="password" class="form-labe">Password</label>
				    <input type="password" class="form-control" id="password" name="password" value="Abc12345"/>
				    <span  id="passwordspan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15장 이하</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="phone" class="form-labe">Phone</label>
				    <input type="text" class="form-control" id="phone" name="phone" value="010-123-1234"/>
				    <span id="phonespan" class="form-text">예) 010-123-1234, 010-1234-1234</span>
				  </div>
				
				  <div class="mb-3">
				    <label for="city" class="form-labe">City</label>
				    <select id="city" name="city" class="form-control">
				      <option value="seoul">서울</option>
				      <option value="pusan">부산</option>
				      <option selected value="jeju">제주</option>
				    </select>
				  </div>
				
				  <div class="mb-3">
				    <label for="form-labe" >Hobby</label>
				    <div class="d-flex">
				    <div class="form-check me-3">
				      <input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked/>
				      <label class="form-label" for="hobby1"> 영화 </label>
				      </div>
				      
				      <div class="form-check me-3">
				      <input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked/>
				      <label class="form-label" for="hobby2"> 여행 </label>
				      </div>
				      
				      <div class="form-check me-3">
				      <input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" />
				      <label class="form-label" for="hobby3"> 게임 </label>
					</div>			    
				    
				    </div>
				    
				    </div>
				  
				
				
				  <div class="mb-3">
				    <label for="form-labe">Job</label>
				    <div class="d-flex">
					    <div class="form-check me-3">
						      <input class="form-check-input" type="radio" id="job1" name="job" value="developer" />
						      <label class="form-check-label" for="job1"> 개발자 </label>
					      </div>
					      <div class="form-check me-3">
						      <input class="form-check-input" type="radio" id="job2"  name="job" value="designer" checked/>
						      <label class="form-check-label" for="job2"> 디자이너 </label>
					      </div>
					      <div class="form-check me-3">
						      <input class="form-check-input" type="radio" id="job3"  name="job" value="manager" />
						      <label class="form-check-label" for="job3"> 매니저 </label>
					     </div>
				    </div>
				  </div>
				
	
				  <div class="text-center">
				    <input type="submit" class="btn btn-primary" value="Join" />
				    <input type="reset" class="btn btn-primary" value="Reset" />
				  </div>
				</form>  			
  			</div>
  		</div>
  		
  	
	</body>
</html>