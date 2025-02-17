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
		
		<script>
			function findElementById() {
				var	jq_p1 =$("#p1");
				console.log("찾은 엘리먼트 수:" , jq_p1.length); //제이커리는 배열이 아니지만 배열처럼 사용가능 (배열의 길이)
				console.log("내부 배열의 0인덱스 저장된 엘리먼트:" , jq_p1[0]); // jquery객체가 아니라 안에있는 객체중  0 인덱스에 넣어주기
			}	
			
			function findElementByClass() {
				var jq_class1 = $(".class1"); 
				console.log(jq_class1.length);//내부길이를 알수있음
				for(var el of jq_class1) {
					console.log(el);
				} 
			}
			function findElementByTag() {
				//방법1
				var jq_p = $("p");
				console.log("찾은 엘리먼트 수:" , jq_p.length); 
				for(var el of jq_p) {
					console.log(el);
				}
		
			}
			function findElementByChecked(){
				var jq_checked = $("[name=skill]:checked");
				console.log("찾은 엘리먼트 수:" , jq_checked.length);
				for(var el of jq_checked) {
					console.log(el);
				}
			}
			
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam02_dom_find_element</div>
  			<div class="card-body">
  			        <button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
		            <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
		            <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
		            <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            <hr/>
            <div class="d-flex">
                <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            </div>
            <hr/>
            <div class="d-flex">
                <div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
                <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                <div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div>
                </div> 
            </div>
  		</div>
	</body>
</html>