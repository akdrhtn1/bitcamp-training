<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 사용해서 DB데이터 수정 후 화면전환 
	수정성공 : 목록(상세) 페이지로 이동 
	예외발생 : 예외메시지 표시 후 이전화면(수정페이지) 이동
--%>
<%
	request.setCharacterEncoding("UTF-8");

	//1. 파라미터 값 추출
%>
	<jsp:useBean id="vo" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="vo" />
	
<%
	System.out.println("> update_ok vo : " + vo);

	//2. SqlSession 객체 생성 및 DB 작성
	SqlSession ss = DBService.getFactory().openSession(true);
	try{
		ss.update("guestbook.update",vo);
		
		//3. 화면전환 - 정상처리시 
		response.sendRedirect("onlist.jsp?idx="+vo.getIdx());
	}catch(Exception e){
		e.printStackTrace();	
	}finally{
		ss.close();	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외발생</title>
</head>
<body>
<script>
	alert("예외가 발생했습니다."')
	history.go(-1);
</script>
</body>
</html>