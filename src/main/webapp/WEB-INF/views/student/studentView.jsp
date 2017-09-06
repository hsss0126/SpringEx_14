<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>StudentView.jsp</title>
</head>
<body>
	<% String method = request.getMethod();
	System.out.println(method+"방식으로 호출");
		if(method.equals("GET")){ 
			System.out.println("GET방식");%>
			<form action="studentView" method="post">
				이름 : <input type="text" name="name"><br />
				나이 : <input type="text" name="age"><br />
				학과 : <input type="text" name="department"><br />
				학년 : <input type="text" name="gradeNum"><br />
				핸드폰 : <input type="text" name="callNum"><br />
				<input type="submit" value="등록">
			</form>		
		<%
		} else if(method.equals("POST")){ 
			System.out.println("POST방식");%>
			<form action="studentView" method="get">
			이름 : <input type="text" name="name" value="${student.name}"><br />
			나이 : <input type="text" name="age" value="${student.age}"><br />
			학과 : <input type="text" name="department" value="${student.department}"><br />
			학년 : <input type="text" name="gradeNum" value="${student.gradeNum}"><br />
			핸드폰 : <input type="text" name="callNum" value="${student.callNum}"><br />
			<input type="submit" value="초기화">
		</form>	
		<%
		}
	%>

	
</body>
</html>