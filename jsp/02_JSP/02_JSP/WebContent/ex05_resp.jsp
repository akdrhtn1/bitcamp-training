<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--전달받은 데이터를 --%>
<%
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int tot = kor + eng + math;
	double avg = Math.round(tot * 100 / 3.0) / 100.0;
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 결과</title>
</head>
<body>
	<h2>성적처리결과</h2>
	<table border>
		<thead>
			<tr>
				<th colspan="2">성적처리결과</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>이름</th>
				<td><%=name %></td>
			</tr>
			<tr>
				<th>국어</th>
				<td><%=kor %></td>
			</tr>
			<tr>
				<th>영어</th>
				<td><%=eng %></td>
			</tr>
			<tr>
				<th>수학</th>
				<td><%=math %></td>
			</tr>
			<tr>
				<th>총점</th>
				<td><%=tot %></td>
			</tr>
			<tr>
				<th>평균</th>
				<td><%=avg %></td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>