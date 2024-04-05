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
		const board ={
				bno:1,
				title: "오늘은 월요일",
				content:"날씨가 좋네요. 자바스크립트 공부해야겠어요.",
				writer: "홍길동",
				
		};
		//------------------------------------
		//var title = board.title;
		var {bno} = board;
		console.log("bno:" , bno);
		console.log("");
		
/* 		var title = board.title;
		var content = board.content; */	
		var {title ,content} = board;
		console.log("title:", title);
		console.log("content:", content);
		console.log("");
		//------------------------------------
		function fun1({title}) {
			console.log(title);
			console.log("");
			
		}
		fun1(board);
		console.log("");
		//-------------------------------------
		//...rest: 나머지 속성은 객체로 감싸서 만듬
		var {writer, ...rest} = board;
		console.log(writer);
		console.log(rest);
		console.log("");
		//-------------------------------------
		//...은 나머지 속성은 구조분해해서 그대로 넣어라
		var newBoard = {...board, bno:2, title:"벚꽃이 좋아요", hitcount:1};// B넘버와 title만 바꾸어라
		console.log(newBoard)
		//-------------------------------------
		//리턴값이 객체일 경우에는()로 감싸야한다.
	/* 	var newBoard2 = (obj) => {
			return ({...obj, hitcount:5});
		}; */
		var newBoard2 = (obj) => ({...obj, hitcount:5});//화살표 함수와 객체 스프레드 문법을 사용하여 객체에 hitcount 
		console.log(newBoard2(board));					//속성을 추가하고 값을 5로 설정한 새로운객체반환코드
		
		
		
		</script>
	</head>
	
	<body>
	   	<div class="card">
  			<div class="card-header">exam12_destructuring_assignment</div>
  			<div class="card-body"></div>
  			 구조분해(destructuring) 할당(assignment)
  		</div>
	</body>
</html>