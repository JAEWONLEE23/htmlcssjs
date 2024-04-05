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
	<script>
			//객체 생성
			const car ={}; //객체 내부의 속성과 메소드가 추가되는 것이며 번지가 바뀌는것은 아니다.
			//동적 속성 추가
			car.name = "그랜저";//동적으로 객체가 추가된다.
			console.log(car);
			//동적 메소드 추가
			car.start = function() {
			console.log("시동을 겁니다.");
			};
			console.log(car);
			car.start();
			car["start"]();
	</script>
	
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam06_dynamic_field_method</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>