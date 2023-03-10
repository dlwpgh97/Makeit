<%@page import="com.makeit.fund.FundVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Make-It 펀딩</title>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="icon" href="img/core-img/favicon.ico">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
</head>

<body>
<c:if test="${user.memberId ne ''}">
	<%@include file ="/common/Header.jsp" %>
</c:if>
<c:if test="${user.memberId eq ''}">
	<%@include file ="/common/Header_N.jsp" %>
</c:if>n/Header.jsp" %>

    <!-- Shop Catagory Area -->
    <div class="shop_by_catagory_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading mb-50">
                        <h5>펀딩 카테고리</h5>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="shop_by_catagory_slides owl-carousel">
                    	
                    	<!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageAll.do">
                                <img src="img/fund/categoryImg/all.png" alt="">
                            </a>
                            <p>전체</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageFashion.do">
                                <img src="img/fund/categoryImg/fashion.png" alt="" style="border-color: #3fe8d9;">
                            </a>
                  				패션 잡화
                        </div>
                        
                    	<!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageFood.do">
                                <img src="img/fund/categoryImg/food.png" alt="">
                            </a>
                            <p>푸드</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageTech.do">
                                <img src="img/fund/categoryImg/tech.png" alt="">
                            </a>
                            	테크· 가전
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageBeauty.do">
                                <img src="img/fund/categoryImg/beauty.png" alt="">
                            </a>
                            <p>뷰티</p>
                        </div>
                        
                          <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageBaby.do">
                                <img src="img/fund/categoryImg/baby.png" alt="">
                            </a>
                            <p>리빙·베이비</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageTravel.do">
                                <img src="img/fund/categoryImg/travel.png" alt="">
                            </a>
                            <p>여행·스포츠</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageAnimal.do">
                                <img src="img/fund/categoryImg/animal.png" alt="">
                            </a>
                            <p>반려동물</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Catagory Area -->

    <!-- All Products -->
    <section class="best-selling-products-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="section-heading mb-50">
                    	<h5>&nbsp;</h5>
                        <h5>패션 잡화</h5>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="section-heading mb-50">
                       	<div class="classy-nav-container breakpoint-off" style="float: right; postion: absolute; z-index:2;">
                   			<nav class="classy-navbar" id="bigshopNav">
                   				<div class="classy-menu" >
                   					<div class="classynav" >
                   						<ul >
                   							<li><a href="fundingPageAll.do">펀딩 홈</a>
		                                        <ul class="dropdown" style=" position: absolute; z-index: auto">
		                                            <li><a href="fundingPageFashionEndDate.do" style="  position: relative; z-index: 2;">마감 임박순</a></li>
		                                            <li><a href="fundingPageFashionFundPrice.do" style="  position: relative; z-index: 2;">펀딩액 순</a></li>
		                                            <li><a href="fundingPageFashionRecent.do" style="  position: relative; z-index: 2;">펀딩 시작일순</a></li>
		                                        </ul>
                                   			</li>
                   						</ul>
                   					</div>
                   				</div>
                   			</nav>
               			</div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
           		<c:if test="${empty fundingPageFashionRecent}">
           			<tr>
           				<td>아직 데이터가 없습니다^^;;</td>
           			</tr>
           		</c:if>
                <c:if test="${not empty fundingPageFashionRecent }">
	                <c:forEach var="fundingPageFashionRecent" items="${fundingPageFashionRecent}">
			                <div class="col-9 col-sm-6 col-md-4 col-lg-4">
			                    <div class="single-product-area mb-30">
			                        <div class="product_image">
			                            <!-- Product Image -->
			                           <a href="productDetailView.do?fundIdx=${fundingPageFashionRecent.fundIdx}&memberId=${user.memberId}&fundMakerId=${getBoardListAll.fundMakerId}">
			                           		<img style="width: 350px; height: 210px;" class="normal_img" src="img/fundingMainImg/${fundingPageFashionRecent.fundMainImg }">
			                            </a>
			                            
			                            <!-- Wishlist -->
			                            <c:if test="${fn:contains(bool,fundingPageFashionRecent.fundIdx)}">
		                            		<div class="product_wishlist">
						                 		<a href="javascript:fundLikeUpdate(${fundingPageFashionRecent.fundIdx })">
						                 			<i id="heart1${fundingPageFashionRecent.fundIdx }" class="fa-solid fa-heart-circle-minus"></i>
						                 		</a>
						         			</div>
			                            </c:if>
			                    		<c:if test="${not fn:contains(bool,fundingPageFashionRecent.fundIdx)}">
			                    			<div class="product_wishlist">
						                 		<a href="javascript:fundLikeUpdate(${fundingPageFashionRecent.fundIdx })">
					                 				<i id="heart${fundingPageFashionRecent.fundIdx }" class="fa-solid fa-heart-circle-plus"></i>
						                 		</a>
						         			</div>
			                    		</c:if>
			                        </div>
			                        
			                        <!-- Product Description -->
			                        <div class="product_description">
			                       	 	<c:choose>
			                       	 		<c:when test ="${fn:length(fundingPageFashionRecent.fundTitle) > 15 }">
			                           			<a href="productDetailView.do?fundIdx=${fundingPageFashionRecent.fundIdx}&memberId=${user.memberId}&fundMakerId=${getBoardListAll.fundMakerId}">${fn:substring(fundingPageFashionRecent.fundTitle,0,15) }...</a>
			                           		</c:when>
			                           		<c:otherwise>
			                           			<a href="productDetailView.do?fundIdx=${fundingPageFashionRecent.fundIdx}&memberId=${user.memberId}&fundMakerId=${getBoardListAll.fundMakerId}">${fn:substring(fundingPageFashionRecent.fundTitle,0,15) }</a>
			                           		</c:otherwise>
			                           </c:choose>
			                        </div>
			                         <div class="progress mb-3">
		                            	<div class="progress-bar" role="progressbar" style="width: ${fundingPageFashionRecent.fundTotalPricePercent }%; background-color:#00c4c4;" aria-valuenow="${fundingPageFashionRecent.fundTotalPricePercent }" aria-valuemin="0" aria-valuemax="100"></div>
		                       	 	</div>
		                       	 	
		                             <p class="price mb-2" style="font-weight:bold">
		                            	<b style="font-size:17px; color: #00c4c4;">${fundingPageFashionRecent.fundTotalPricePercent } % </b><b>·  ${fundingPageFashionRecent.fundPrice} 원 펀딩</b>
	                            		<c:choose >
			                            	<c:when test="${fundingPageFashionRecent.fundDday > 10 }">
					                       		<b class="product-price"style="float: right; font-size:17px;">${fundingPageFashionRecent.fundDday } 일 남음</b>
				                       		</c:when>
				                            <c:otherwise>
					                       		<b class="title mb-2" style="color:red; float: right; font-size:17px;">${fundingPageFashionRecent.fundDday } 일 남음</b>
				                       		</c:otherwise>
			                       		</c:choose>
	                            	</p>
			                    </div>
			                </div>
	                </c:forEach>
           		</c:if>
            </div>
        </div>
    </section>
    <!-- All Products End -->
  <script>
//Ajax 요청처리로 찜하기
	function fundLikeUpdate(data) {
		//alert("좋아요 실행~~~ ");
		if('${user.memberId}' == null || '${user.memberId}' == '' ) {
			alert("로그인 화면으로 이동합니다.")
			 location.href = 'loginForm.do';
		} else if('${user.memberId}' != null || '${user.memberId}' != '') {
			 $.ajax("fundLikeUpdate.do", {
				type: "post",
				data: JSON.stringify({fundIdx: data, memberId: '${user.memberId}'}), // 서버쪽으로 JSON 문자열 전달
				contentType: "application/json",
				dataType: "json",
				traditional : true, //배열 넘기기
				success: function(data){
					 if(data == 1){
						alert('좋아요가 추가되었습니다');
						$("#heart1").attr('class','fa-solid fa-heart-circle-minus');
					} else{
						alert('좋아요가 취소되었습니다.');
						$("#heart").attr('class','fa-solid fa-heart-circle-plus');
					} 
					 
				},
				error: function(){
					alert("실패~~");
				}
			}); 
		}
	}
	
	
</script>
<%@include file ="/common/Footer.jsp" %>