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
			//객체를  초기화 하는 생성자 정의
			function Car() {
				this.name ="그랜져"; //this 란 객체 자기자신 
				this.price= 50000000;
				this.start = function() {
					console.log("시동을 겁니다.");
				};
			}
			function Person(name, age) {//메소드만 있고 필드는 없는것
				this.name =name;
				this.age = age;
			}
			
			//객체 생성
			const myCar = new Car();
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.start();
			
			//생성자를 선언하고 객체 생성
			const my = new Person("홍길동", 30);
			const you = new Person("김자바" , 27);
			console.log(my);
			console.log(you);
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">index</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>