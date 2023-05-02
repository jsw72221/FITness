<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="path" value="${ pageContext.request.contextPath }"/>    
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <script src="${ path }/resources/js/jquery-3.6.3.js"></script>
    <style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&family=Open+Sans&display=swap');
        @font-face {
            font-family: 'GmarketSansMedium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        * {
            font-family: 'GmarketSansMedium';
        }
        body {
            font-family: 'Noto Sans', sans-serif;
        }
        div {
            /* border: 2px solid red; */
            box-sizing: border-box;
        }
        .wrap{
            width:1000px;
            height:1400px;
            margin:auto;
        }
        .logo {
            line-height: 2;
            color: yellowgreen;
        }

/* 헤더 */
        #header{
            height: 10%
        }

        #header1{
            width: 30%;  
        }

        #header2{
            width: 40%;
        }

        #header3 {
            padding-top: 37px;
            padding-bottom: 15px;
            border: 1px;
            text-align: right;
            width: 26%;
        }
        #header>div{
            float: left;
            height: 100%;
        }

        .mainlogin{  
        font-size:13px;
        color: #999999;
        text-decoration: none;
        letter-spacing: 0.01em;
        margin: 5px;
        line-height: 6;
        }

        .mainlogin:hover {
        color: #00FF00;
        text-decoration : none;
        font-size: 13px;
        }

/* 메뉴바 */
        #navigator {
            height: 3%;
            border-bottom: 1px solid;
            z-index:999;           
        }

        #navi{
            list-style-type: none;
            margin:0;
            padding:0;
            height:100%;
            position: relative;
            z-index: 9999;
        }


        #navi> li{
            float:left;
            width:25%;
            height:100%;
            text-align:center;
            font-size:13px;
            line-height:5px;
        }
        
        #navi> li:hover{
            background-color: rgba(246, 139, 0, 0.917);
        }
        

        #navi a{
            text-decoration: none;
            color: black;
            font-size: 1.5em;
            font-weight: 900;
            height: 100%;
            line-height: 35px;
            vertical-align: middle;
        }

        #navi>li>ul a:hover{
            color: orangered;
            
        }

        #navi>li>ul{
            list-style-type: none;
            display: none;
            background-color: rgb(221, 215, 215, 0.8);
            padding: 5px 0 0 0 ;
            margin: 10px 0 0 0 ; 
        }

        #navi>li:hover>ul{
            display: block;
        }

        #navi>li>ul>li:hover {
            display: block;
            transition: ease 1s;
        }

        #navi>li>ul a{
            font-size: 1.4em;
        }

/* 본문 */ 
        #section {
            height: 87%;
            font-family: 'GmarketSansMedium';
            z-index:1;
        }

        #banner1{
            background-color: black;
            text-align: center;
            position: relative;
            width: 100%;
            height: 300px;
            margin: 11px 0 80px 0;
        }
        #bannerimg1 {
            display: inline-block;
            height: 300px;
            width: 100%;
        }
        #banner2{
            text-align: center;
            position: relative;
            margin: 80px 0 20px 0;
            }
            
        #bannerimg2 {
            display: inline-block;
            width: 100%;
        }
            
    /* 가이드(공지사항, 개인운동, 그룹운동, 상담문의) 구역 */
        #contentguide{
            background-color: rgb(52, 73, 94);
            margin: 80px 0 80px 0;
        }
        #divguide{
            width:  940px;
            display: flex;
            margin: 24px auto;
            height: 290px;
        }
        .guide{
            border-radius: 55px;
            width: 25%;
            height: 90%;
            margin: 15px;
            text-align: center;
        }
        #guide1{
            background-color: rgb(243, 156, 18);
        }
        #guide2{
            background-color: rgb(241, 196, 15);
        }
        #guide3{
            background-color: rgb(241, 196, 15);
        }
        #guide4{
            background-color: rgb(243, 156, 18);
        }
        .icon{
            margin: 20px 10px 10px 10px;
        }
        .guide  h2 {
            font-size: 23pt;
            color: white;
            margin: 0px;
        }
        .guide  h4 {
            font-size: 15pt;
            margin: 3px;
        }
        .guide  p {
            font-size: 10pt;
            font-weight:bold;
            color: rgb(79, 79, 79);
        }
    /* 가이드 버튼 */
        #contentguide button {
            background-color: rgb(94, 94, 94);
            color: white;
            border-radius: 5px;
            width: 85px;
            height: 35px;
            border: none;
        }
        #contentguide button:hover{
            background-color: white;
            color: orange;
        }

    /* 하단 */
        #footer {
            height: 15%;
            border-top: 1px solid;
            border-bottom: 1px solid;
            margin-top: 30px;
            padding-top: 20px;
        }

        #footer>div {
            float: left;
            height: 100%;
            margin-bottom: 7px;
        }

        #footer1 {
            width: 30%;
        }

        #footer2 {
            width: 40%;
            font-size: small;
            font-weight: bold;
        }

        #footer3 {
            width: 30%;
        }

        #footer4{
            width: 100%;
            
        }
        #footer2> p {
            font-weight: bold;
            text-align: left;
            font-size: small;
        }

        #footer3> p { 
            font-weight: bold;
            text-align: left;
        }

        table {
            width: 100%;
            height: 100%;
            border-width:medium;
            border-bottom: 1px solid;
            text-align:center;
            font-size: 13px;
        
        }

        #content1 {
            height: 5%;
        }

        #content2 {
            height: 60%;
            
        }

        #content3 {
            height: 35%;
            margin-top:10px; text-align:center;
        }

        thead {
            background-color: yellowgreen;
            font-weight:bold;
            
        }

		 #update {
        height: 40px;
/*         padding: 10px; */
        box-sizing: border-box;
        width: 100%;
/*         margin-top: 10px; */
        background-color: teal;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        color: white;  
        }
    
    
    	a {
       	
       	text-decoration : none;
       	color : black;
       	
       	}
       	
       	a:hover {
       		color : silver;
       	}
       	
    </style>
</head>
<body>
    <div class="wrap">
        <div id="header">
            <div id="header1"> 
            <img src="${ path }/resources/images/logotext.png" height="100px" align="center">
            </div>
            
            <div id="header3">
                
            </div>
        </div>
        <div id="navigator">
            <ul id="navi">
              
                <li>
                    <a href="${ path }/admin/memberlist">회원 관리</a>
                </li>
                <li>
                    <a href="${ path }/admin/boardnotice">게시판 관리</a>
                
                </li>
                <li><a href="#">센터 관리</a></li>
            </ul>
        </div>
        <div id="section">

            <div id="content1">
                <h3>센터 관리 &nbsp;&nbsp; <span><button id="btn_join" onclick="location.href='${ path }/admin/centerjoin'">센터 등록</button></span>
                <span>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 등록 센터 수 :&nbsp; ${ listCount }</span>
                
                </h3>



            </div>
            <div id="content2">
            <table >
                <thead>
                <tr height="40">
                    <td>센터 명</td>
                    <td>카테고리</td>
                    <td width="100">대표 연락처</td>
                    <td>대표 이메일</td>
                    <td>센터 주소</td>
                    <td width="70">판매 여부</td>
                    <td>이용권 여부</td>
                    
                  
                </tr>
            </thead>
            <tbody>
             <c:if test="${ not empty list }">
            <c:forEach var="gym" items="${ list }">
                <tr>
                <td><a href="${ path }/admin/centerinfo?no=${ gym.no }">
                    	${ gym.gymName }</a>
                    </td>
                    <td>${ gym.category }</td>
                    <td>${ gym.ceoPhone }</td>
                    <td>${ gym.ceoEmail }</td>
                    <td>${ gym.address }</td>
                    <c:if test="${ gym.status.equals('Y') }">
                    <td>O</td>
                    </c:if>
                     <c:if test="${ gym.status.equals('N') }">
                    <td>X</td>
                    </c:if>
                    
                    <c:if test="${ gym.status.equals('N') }">
                    	<td><button id="update" onclick="location.href='${ path }/admin/voucher?no=${ gym.no }'">이용권 등록</button></td>
                    </c:if>
                    <c:if test="${ gym.status.equals('Y') }">
                    	<td><button id="update" onclick="location.href='${ path }/admin/voucher?no=${ gym.no }'">추가 이용권 등록</button></td>
                  	</c:if>
                </tr>
                </c:forEach>
                </c:if>
           
            </tbody>
            </table>
        </div>
        <div id="content3">
        <!-- 맨 처음으로 -->
			<button onclick="location.href='${ path }/admin/centerlist?page=1'">&lt;&lt;</button>

			<!-- 이전 페이지로 -->
			<button onclick="location.href='${ path }/admin/centerlist?page=${ pageInfo.prevPage }'">&lt;</button>

			<!--  10개 페이지 목록 -->
			<!--  -->
			<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
				<c:choose>
					<c:when test="${ status.current == pageInfo.currentPage }">
						<button disabled>${ status.current }</button>
					</c:when>
					<c:otherwise>
						<button onclick="location.href='${ path }/admin/centerlist?page=${ status.current }'">${ status.current }</button>
					</c:otherwise>
				</c:choose>
			</c:forEach>


			<!-- 다음 페이지로 -->
			<button onclick="location.href='${ path }/admin/centerlist?page=${ pageInfo.nextPage }'">&gt;</button>

			<!-- 맨 끝으로 -->
			<button onclick="location.href='${ path }/admin/centerlist?page=${ pageInfo.maxPage }'">&gt;&gt;</button>
        </div>
       
            <p align="center" style="font-size: small;">Copyright © semi 3. All rights reserved.</p>
            <br>
        </div>     
    </div>
</body>
	<script>
		
	
	
	
	
	
	
	
	
	
	</script>

</html>