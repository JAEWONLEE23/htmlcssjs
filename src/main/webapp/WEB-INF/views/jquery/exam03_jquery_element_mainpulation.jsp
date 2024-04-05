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
			function changeContent() { //통채로 변경하기
				$("#div1").html("<img src='/htmlcssjs/resources/image/photos/photo20.jpg' width='150'/>");
			
			}
			function appendContent() { //추가하기
				const el_img = "<img src='/htmlcssjs/resources/image/photos/photo21.jpg' width='150'/>"
				$("#div1").append(el_img);
				
			}
			function deleteContent() { //삭제하기
				//기존 내용을 모두 삭제
				//$("#div1").html("");
				//$("#div1").empty("");
				
				//맨뒤에 있는 엘리먼트 삭제
				$("#div1").find("img:last-Child").remove(); //$("#div1").find("img:lastChild") 이것이 순서상 마지막jquery객체
			}
			function changeCss() {
				$("#img1").css("width", "50px");
				$("#img1").css("height" , "50px");	
				$("#img1").css("border-radius" , "25px");
				$("#img1").css("border-width","2px");
				$("#img1").css("border-color","red");
				$("#img1").css("borderStyle" ,"solid");
			}
			function changeAttribute() {
				$("#img2").attr("src","/htmlcssjs/resources/image/photos/photo22.jpg");
					/* el_img2.set.Attribute("src","/htmlcssjs/resources/image/photos/photo22.jpg"); */
			}
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam03_jquery_element_mainpulation</div>
  			<div class="card-body">
  			
  			<div class="card">
  			<div class="card-header">엘리멘트 추가 및 삭제</div>
  			<div class="card-body">
  				<button onclick="changeContent()"   class = "btn btn-warning btn-sm">변경</button>
  				<button onclick="appendContent()" class = "btn btn-warning btn-sm">추가</button>
  				<button onclick="deleteContent()" class = "btn btn-warning btn-sm">삭제</button>
  				<hr/>
  				<div id ="div1"></div>	
  			</div>
  			</div>		
  				
  			<div class="card">
  			<div class="card-header">엘리멘트 스타일 변경</div>
  			<div class="card-body">
  				<button onclick="changeCss()"   class = "btn btn-warning btn-sm">스타일변경</button>
  				
  				<hr/>
  				<div id ="div2">	
  				<img id ="img1" src="/htmlcssjs/resources/image/photos/photo22.jpg" width="100"/>
  				<img class ="rounded-circle"src="/htmlcssjs/resources/image/photos/photo23.jpg"width="50" height="50"/> 	
  				</div>	
  			</div>
  			</div>
  			<div class="card">
  			<div class="card-header">속성값 변경</div>
  			<div class="card-body">
  				<button onclick="changeAttribute()"   class = "btn btn-warning btn-sm">속성값변경</button>
  				
  				<hr/>
  				<div id ="div3">	
  					<img id="img2" src="/htmlcssjs/resources/image/photos/photo23.jpg" class="rounded-circle" width="100" height="100"/>
  				</div>	
  			</div>
  			</div>
  		</div>
	</body>
</html>