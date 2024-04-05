<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
<meta charset="UTF-8">
      <title>Insert title here</title>

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
      <!-- jQuery 외부 라이브러리 설정 -->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
      <script type="text/javascript">
      	console.log("해석전:", $("img").length);// 0이 나오게 된다.	
      
         function loadCompleted() {
        	 console.log("모든자원이 다운로드 완료됨"); //load이벤트가 발생될때 함수가 실행된다
        	 //console.log("모든 자원이 다운로드 완료된후:",$("img").length); //10이 나옴 그치만 해석이 완료된 후가 제일 좋다.
         }
         
         $(document).ready(function() { //ready 매개값으로 함수를 줌 브라우저가 해석하는 시간과 모든자원이 다운로드시간과 비교했을때 해석이 끝난후 나머지 자원이 다운로드
        	 console.log("HTML 해석이 완료됨1");// ready -> load
         	console.log("해석후:",$("img").length); //10이 나옴
         });
         
         $(function(){
        	 console.log("HTML 해석이 완료됨2");// ready -> load
          	console.log("해석후:",$("img").length); //10이 나옴
         }); //위에 해석완료방법과 동일하지만 더욱 간력하게 쓸수 있다.
         
         $(() =>{
        	 console.log("HTML 해석이 완료됨3");//화살표 함수로 표기법 
          	console.log("해석후:",$("img").length); //10이 나옴
         }); 
      </script>

	</head>
	
	<body onload="loadCompleted()">
	   	<div class="card">
  			<div class="card-header">exam05_jquery_ready_event</div>
  			<div class="card-body">
  			<img src="/htmlcssjs/resources/image/photos/photo20.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo21.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo22.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo23.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo24.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo25.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo26.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo27.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo28.jpg" width="150" height="150" class="me-2"/>
  			<img src="/htmlcssjs/resources/image/photos/photo29.jpg" width="150" height="150" class="me-2"/>
  			
  			</div>
  		</div>
	</body>
</html>