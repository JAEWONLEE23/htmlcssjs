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
			const car ={
				name:"그랜져",
				price:5000,
				speed:100 ,//mile
				start:function() {
					console.log("시동을 겁니다.");
				},
				//Setter 선언
				set kmSpeed(meter) {
					//km -> mile
					this.speed = meter/0.621371;
				},
				//Getter 선언
				get kmSpeed() {
					//mile-> km
					 return this.speed * 0.621371;
				},
			};
			//Setter 호출
			car.kmSpeed = 60; //속성(set 호출) 대입연산자 왼쪽이면  setter 아닐경우에는 getter
			//Getter 호출
			console.log("현재 속도(km/h):" , car.kmSpeed);
		</script>
		
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam07_getter_settter</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>