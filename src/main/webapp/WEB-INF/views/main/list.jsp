<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> <%-- security 사용하기위해 --%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
<link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="collapzion.min.css">
<style>
/* 플로팅 버튼 */
.fab-container {
	position: fixed;
	bottom: 50px;
	right: 50px;
	z-index: 999;
	cursor: pointer;
}

.fab-icon-holder {
	width: 50px;
	height: 50px;
	border-radius: 100%;
	background: #016fb9;
	
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
}

.fab-icon-holder:hover {
	opacity: 0.8;
}

.fab-icon-holder i {
	display: flex;
	align-items: center;
	justify-content: center;
	
	height: 100%;
	font-style: 25px;
	color: #ffffff;
}

.fab {
	width: 60px;
	height: 60px;
	background: #193f80;
}

.fab-options {
	list-style-type: none;
	margin: 0;
	
	position: absolute;
	bottom: 70px;
	right: 0;
	
	opacity: 0;
	
	transition: all 0.3s ease;
	transform: scale(0);
	transform-origin: 85% bottom;
}

.fab:hover + .fab-options, .fab-options:hover {
	opacity: 1;
	transform: scale(1);
}

.fab-options li {
	display: flex;
	justify-content: flex-end;
	padding: 5px;
}

.fab-label {
	padding: 2px 5px;
	align-self: center;
	user-select: none;
	white-space: nowrap;
	border-radius: 3px;
	font-size: 16px;
	background: #666666;
	color: #ffffff;
	box-shadow: 0 6px 20px rgba(0,0,0,0.2);
	margin-right: 10px;
}

#body {
	max-width: 928px;
	margin: 0 auto;
	background-color: #faf5f5;
}

#wrapper {
	display: block;
	width: 100%;
	background-color: #faf5f5;
}

/* 게시글 body */
.contents-box {
	display: -webkit-box;
	padding: 0 16px;
	width: 100%;
	height: 42px;
	box-sizing: border-box;
	background-color: #000;
	
}

.matches {
	display: block;
	width: 100%;s
}


</style>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script> 
<body>
<%-- 시큐리티 로그인된 userId = userIdValue -> ${userIdValue } 으로 사용하겠습니다.--%>
<sec:authentication property="name" var="userIdValue"/>

<c:url value="/main/insert" var="insertLink" >
	<c:param name="userId" value="${userIdValue }"></c:param>
</c:url>
<c:url value="/member/login" var="loginLink"></c:url>


<div id="wrapper">
	<my:navbar></my:navbar>
	
	<!-- carousel slide -->
	<div id="body" class="container">
        <div class="row">
            <div class="col">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner" style="border-radius: 5%">
                        <div class="carousel-item active">
                            <img src="https://thumb.mt.co.kr/06/2022/10/2022100408360974086_1.jpg/dims/optimize/" class="w-100" style="margin: 0 auto;" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>1</h5>
                                <p></p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="http://www.footballist.co.kr/news/photo/201802/105313_40203_012.jpg" class="w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>2</h5>
                                <p></p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fs0Yc1%2FbtrnL7wfLC6%2FT28ucgZkikSLV7pdnxIkLk%2Fimg.jpg" class="w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>3</h5>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

<!-- 플로팅 버튼 -->
<sec:authorize access="isAuthenticated()" var="loggedIn"/>
<c:if test="${loggedIn }">
<div class="fab-container">
	<div class="fab fab-icon-holder">
		<i class="fa-solid fa-pen-nib"></i>
	</div>

	<ul class="fab-options">
		<li>
			<span class="fab-label">작성하기</span>
			<div onclick="location.href='${insertLink}'" class="fab-icon-holder">
				<i class="fa-solid fa-pen-nib"></i>
			</div>
		</li>
		<li>
			<span class="fab-label">지역</span>
			<div class="fab-icon-holder">
				<i class="fa-solid fa-location-dot"></i>
			</div>
		</li>
		<li>
			<span class="fab-label">달력</span>
			<div class="fab-icon-holder">
				<i class="fa-solid fa-calendar-week"></i>
			</div>
		</li>
		<li>
			<span class="fab-label">마이페이지</span>
			<div class="fab-icon-holder">
				<i class="fa-solid fa-circle-user"></i>
			</div>
		</li>
	</ul>
</div>
</c:if>

<c:if test="${not loggedIn }">
	<div class="fab-container">
		<div onclick="location.href='${loginLink}'" class="fab fab-icon-holder"><i class="fa-solid fa-pen-nib"></i></div>
	</div>
</c:if>


<!-- 게시글 목록 -->
<div class="matches" id="body">
	<table class="table">
		<thead class="table-light">
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>예약날짜</th>
				<th>예약시간</th>
				<th>구장이름</th>
				<th>작성자</th>
				<th>모집상태</th>
				<th>매치방식</th>
				<th>실력</th>
				<th>지역</th>
			</tr>
		</thead>
		<tbody>
			 <c:forEach items="${bookList }" var="main">
				<tr>
					<td>${main.bookId }</td>
					<td>
					<c:url value="/main/get" var="getLink">
						<c:param name="bookId" value="${main.bookId }"></c:param>
					</c:url>
						<a href="${getLink }">
							${main.title }
						</a>
					</td>
					<td>${main.bookDate }</td>			
					<td>${main.bookTime }</td>			
					<td>${main.stadiumName }</td>			
					<td>${main.nickName }</td>				
					<td>${main.status }</td>			
					<td>${main.matchType }</td>			
					<td>${main.level }</td>			
					<td>${main.region }</td>			
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
</script>

</body>
</html>