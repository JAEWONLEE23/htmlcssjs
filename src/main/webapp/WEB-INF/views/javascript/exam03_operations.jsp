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
			//산술 연산자
			var var1 = 2 ** 3;
			console.log("var1:", var1);
			console.log("");
			//비교 연산자
			console.log(3=="3"); //true(문자열 3 구조로 바뀌기때문에)
			console.log(3==="3"); //false(타입을 검사하기 때문에 서로 타입이 달라서 false)
			console.log(3 !="3"); //false(문자열 끼리 바뀌기때문에)
			console.log(3 !=="3"); //true
			
			//논리 연산자
			var var2 = true;
			var var3 = false;
			
			console.log(var2 && var3); //false     앞&&뒤  앞에서f 가 나오면 false
 			console.log(var2 && "홍길동"); //홍길동이 나온다. 앞&&뒤 앞에서 t가 나오면 뒷문자가 나온다.
 			console.log(var3 && "홍길동"); //false
 			
 			console.log(var2 || var3); //true (앞이  t면 무조건 t)
 			console.log(var2 || "홍길동"); //true
 			console.log(var3 || "홍길동"); // 홍길동 (앞이 f면 뒤에 값이 나온다.)
 			
 			console.log(!var3);
 			
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam03_operations</div>
  			<div class="card-body"></div>
  			content
  		</div>
	</body>
</html>