<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script type="text/javascript">
		//-------------------------------------
		//함수선언
		function fun1() {
			console.log("fun1() 실행");
		}
		//함수 호출
		fun1();
		//--------------------------------------
		//함수 선언
		var fun2 = function() {
			console.log("fun2() 실행");
		};// 변수에 값을 대입 하는 실행문 이기 때문에 }뒤에 ;이 붙어야된다
		//함수 호출
		fun2();
		//--------------------------------------
		//화살표 함수(arrow function)선언 E6 문법
		var fun3= () => {
			console.log("fun3()실행"); //fun2 랑  똑같기떄문에 뒤 에 ;이 붙어야 된다.
		};
		//함수 호출
		fun3();
		//---------------------------------------
		//함수 대입과 호출
		var fun4 = fun3;
		fun4();
		//---------------------------------------
		//매개 변수가 있는 함수 var, let안붙는다 그냥 변수만 선언
		function fun5(arg1, arg2) {
			console.log("fun5()실행");
			console.log("arg1:" , arg1);
			console.log("arg2:" , arg2);
		}
		fun5(10, "abc");
		fun5(10); // 매개변수 하나만 들어갈경우 기본값을 설정해주면 하나는 기본값으로 나오게된다.
	
		var var6 =(arg1, arg2)=> {
			console.log("fun6()실행");
			console.log("arg1", arg1);
			console.log("arg2", arg2); //리턴값이 없는 함수
		};
		var6('abc', "def");// 자바스크립트는 char타입이 없다. 전부 문자열
		
		var var7 =(arg1) => console.log("arg1:", arg1); //실행문이 하나일 경우 중괄호{} 생략가능
		var var8 = arg1 => console.log("arg1:" , arg1); // 매개변수가 하나일 경우 괄호 ()생략가능
		//---------------------------------------
		//리턴값이 있는 함수
		function fun9(x,y) {
			return x + y;
		}
		
		const fun10 = (x,y) => {return x + y;};
		
		const fun11=(x,y)=> x+y; //리턴값이 있는 함수
		//함수 호출
		var result1 = fun9(10, 20); 
		var result2 = fun10(10, 20);
		var result3 = fun11(10, 20);
		console.log("result1:", result1);
		console.log("result2:", result2);
		console.log("result3:", result3);
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam04_function</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>