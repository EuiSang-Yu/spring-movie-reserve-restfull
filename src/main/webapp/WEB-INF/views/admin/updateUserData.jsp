<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
    
    <!-- 관리자 회원관리 ---- 회원 정보 수정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- 아이콘 -->
	<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

	<!-- 구글 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">


	
	
	<!-- 파비콘 설정-->
	<link rel="shortcut icon" href="img/movie_favicon.ico" type="image/x-icon">

<title>KOREA BOX</title>
</head>
<body>

	<jsp:include page="managerTheme.jsp" />

		     <div class="container">
    <h2>회원 정보 수정</h2>
    
    <span>* 회원님의 정보를 정확히 수정해 주세요.</span>
    <hr>
    <div class="row text-center" >
    <div class="col-sm-12">
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6" id = "form1">
    <form action="updateUserDataOk">
        <input type="hidden" name="mem_uid" value="${list.mem_uid }"/>
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="mem_id" placeholder="id를 넣으세요" value="${list.mem_id }"></td>        
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control" name="mem_name" value="${list.mem_name }"></td>      
            </tr>
             
            <tr>
                <th>비밀번호</th>
                <td><input type="text" class="form-control" name="mem_pw" value="${list.mem_pw }"></td>        
            </tr>
             
            <tr>
                <th>생년월일</th>
                <td><input type="date" class="form-control" name="mem_birth" value="${list.mem_birth }"></td>       
            </tr>
             
            <tr>
                <th>전화번호</th>
                <td><input type="text" class="form-control" name="mem_phone" value="${list.mem_phone }"></td>       
            </tr>
            
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="mem_email" value="${list.mem_email }"></td>       
            </tr>
            <tr>
                <th>가입일자</th>
                <td><p>${list.mem_regDate }</p></td>       
            </tr>
            <tr>
            <th></th>
            <td>
                
             </td>
             </tr>
            <tr>
                <td colspan="2">
                <input type="submit" class="btn btn-primary" value="수정">
                <button type="button" class="btn btn-danger" onclick="history.back()">취소</button>
                </td>
            </tr>
             
             
        </table>

     
    </form>
    </div>
     
    </div>
    </div>
</div>

	<jsp:include page="managerFooter.jsp" />

	<!-- JS파일 -->
	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>