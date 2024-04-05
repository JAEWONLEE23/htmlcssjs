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
		<script type="text/javascript">
		 	function fun1() {
		 		try{
		 		var data;
		 		var num = data.length;
		 		
		 		}catch(err) {
		 			console.log("예외 발생");
		 			console.log(err);
		 		} finally{
		 			console.log("마무리작업");
		 		}
		 	}
		</script>
	</head>
	
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam20_try_catch</div>
  			<div class="card-body"></div>
  			<div>
  			<button onclick="fun1()">버튼</button> 
  			</div>
  		</div>
	</body>
</html>