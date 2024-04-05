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
		class Car {
			 	//정적 필드와 초기화
			 	static company ="현대 자동차";
			 	
			constructor(name="그랜져" , price=5000000) {
				//인스턴스 필드와 초기화
				this.name = name;
				this.price= price;
			}
			 	//정적 메소드 선언
			 	static setCompany(company) {
			 		 Car.company =company;
			 	}
			 	static getCompany() { // 정적매소드 안에서는 this를 사용할수 없다 항상 클래스 이름을 사용해서 접근, 객체가 없어도 사용가능
			 		return Car.company;
			 		
			 	}
			 	
			 	//인스턴스 메소드 선언
			 	setPrice(price) { //this 사용가능 , 객체가 있어야 사용할수있기 때문에
			 		this.price =price;
			 		
			 	}
			 	getPrice(){
			 		return this.price;
			 	}
			 	
		}
		//정적 맴버 사용
		console.log(Car.company);
		Car.setCompany("KIA 자동차");
		console.log(Car.getCompany());
		
		//인스턴스 멤버 사용
		const myCar = new Car("포르쉐", 2500000000);
		console.log(myCar.name);//참조 변수 사용
		myCar.setPrice(300000000);		
		console.log(myCar.getPrice());
	</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam10_static</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>