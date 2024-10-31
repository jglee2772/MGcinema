<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
body{

 background-color:black;
}  
*{
color:white;

}

ul, li {      
    list-style-type: none; 
    padding: 0; 
    margin: 0; 
    /* 점없애는곳*/ 
    
}
.contegory_contents_wrap {
    display: flex; /* flex 레이아웃을 사용 */
    flex-direction: row; /* 자식 요소를 수평으로 나열 */
    justify-content: space-between; /* 자식 요소들 사이에 공간을 균등하게 배분 */
    align-items: center; /* 자식 요소들을 수직으로 가운데 정렬 */
    flex-wrap: wrap; /* 자식 요소가 필요에 따라 줄 바꿈 */
    margin-bottom: 20px; /* 자식 요소와 선 사이의 간격을 추가 */
}
.category_content {
    display: flex; /* flex 레이아웃을 사용 */
    flex-direction: row; /* 자식 요소를 수평으로 나열 */
    gap: 20px; /* 리스트 아이템 사이에 간격 추가 */
    padding: 0; /* 기본 패딩 제거 */
    margin: 0; /* 기본 마진 제거 */
    flex-wrap: wrap; /* 리스트가 넘치지 않도록 줄 바꿈 */
    justify-content: space-around; /* 리스트 항목 사이에 여백 추가 */
}
.category_content li {
    cursor: pointer; /* 클릭 커서로 변경 */
}
 .no-underline {
   	text-decoration: none; /* 링크의 밑줄을 제거합니다 */
     color: white;    
}

.no-underline:hover {
    text-decoration: none; /* 마우스 오버 시에도 밑줄이 보이지 않도록 합니다 */
}
#cart-count, #giftcon {
 display: inline-block; /* 텍스트와 함께 한 줄에 표시 */
margin-left: 5px; /* 텍스트와 숫자 사이의 간격 추가 */
padding: 0 4px; /* 숫자를 감싸는 여백 추가 */
background-color: #ff0000; /* 배경색 */
color: white; /* 글자색 */
border-radius: 50%; /* 원형 배경 */
font-size: 12px; /* 글자 크기 */
line-height: 20px; /* 텍스트 수직 중앙 정렬 */
height: 20px; /* 원형을 유지하기 위한 높이 */
width: 20px; /* 원형을 유지하기 위한 너비 */
text-align: center; /* 텍스트 중앙 정렬 */
vertical-align: middle; /* 수직 중앙 정렬 */

}
.no-style-link {
    text-decoration: none; /* 밑줄 제거 */
    color: inherit; /* 링크 색상 유지 */
	}

.no-style-link:visited {
   color: inherit; /* 방문 후 색상 유지 */
}

.separator1 {
    width: 100%; /* 부모 요소의 전체 너비를 차지하도록 설정 */
    height: 2px;
    margin: 0;
    position: relative; /* 상위 요소에 상대적으로 위치 */
    margin-top: -10px; /* 간격 추가: .contegory_contents_wrap과의 간격 */
    margin-bottom:30px;
    background-color: grey;
    height:3px;
}

/* 여기가 장바구니 링크 스타일*/

/* 기존 스타일 유지 */
#container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 20px;
    width: 1000px;
    margin: 0 auto;
    background-color:black;
    margin-top: 150px; 
    margin-bottom: 335px;
    border: 3px solid #808080; /* 회색 테두리 */
    border-radius: 15px; /* 테두리 둥글게 만들기 */
}
.cart_step {
    list-style-type: none;
    padding: 0px; /* 컨테이너의 패딩 */
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center; /* 항목들을 가운데 정렬 */
    margin-bottom: 30px;
   
}
.cart_step div {
    margin-left: 90px; /* 좌측 여백 */
    margin-right: 90px; /* 우측 여백 */
    display: block;
    font-size: 16px;
    color: #666;
    margin-bottom: 5px; /* 아래쪽 여백 */
}
.cart_step li strong {
    display: block;
    font-size: 16px;
    font-weight: bold;
}
.cart_step .step.step2.active span,
.cart_step .step.step2.active strong {
    color: red; /* STEP 02의 텍스트 색상 */
}
.cart_step .step:not(:last-child)::after {
    content: '>';
    display: inline-block;
    margin: 0 10px; /* 화살표의 좌우 간격 */
    font-size: 20px;
    color: #666;
}
.cart-item {
    display: flex;
     align-items: center; /* 세로 중앙 정렬 */
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    margin-bottom: 10px; 
    background-color:black;
    
}

.item-image {
    max-width: 100px;
    margin-right: 20px;
}
.cart-item img {
    max-width: 100px;
    margin-right: 20px;
}
.item-details {
    display: flex;
    flex: 1;
    justify-content: space-between;
}
.item-details div {
    margin-right: 20px;
}
.item-name, .discount, .price, .qty, .total {
    width: 100px; /* Adjust as needed */
}
.header1 {
    display: grid;
    grid-template-columns: 100px 1fr 1fr 1fr 100px 100px 100px 100px;
    gap: 10px;
    font-weight: bold;
    margin-bottom: 10px;
}

.foottable {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto;
   
}
.foottable thead {
    display: block;
}
.foottable tbody {
    display: block;
    overflow-x: auto;
}
.foottable thead th {
    background-color: #f4f4f4;
}
.foottable tbody tr {
    display: flex;
    justify-content: space-between;
}
.foottable tbody td {
    width: 33%;
}
.foottable th, .foottable td {
    text-align: center;
    padding: 10px;
    box-sizing: border-box;
}
.foottable thead {
    width: 100%;
}
.width-40 {
    width: 10%;
    color:black;
}
.width-20 {
    width: 20%;
    color:black;
}
.foottable tbody td {
    box-sizing: border-box;
}
.cartprice {
    text-decoration: line-through;
    color: grey;
}
.cart-table {
    width: 100%;
    border-collapse: collapse;
   
}
.cart-table td {
    text-align: left;
    margin-right: 50px;
}
.cart_price {
    text-decoration: line-through; /* 취소선 추가 */
    color:grey;
}

#head1{
	position: relative;
    left:10px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */

}
#head2{
	position: relative;
    left:70px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */

}
#head3{
	position: relative;
    left:230px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */

}
#head4{
	position: relative;
    left:210px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */

}
#head5{
	position: relative;
    left:250px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */
}
.totalprice{

position: relative;
    left:23px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */
}
.finalprice{
	position: relative;
    left:-29px; /* 원하는 위치로 이동 (음수 값으로 왼쪽으로 이동) */
}

#btnback {  
   border-color: #0056b3;
   font-size:20px;
   position: relative; /* 버튼의 위치를 조정할 수 있게 함 */
   left:150px;
   
}

#btnpay {
  padding: 10px 20px; /* 버튼의 여백 조정 */
  font-size: 16px;    /* 글자 크기 조정 */
  border: 2px solid #666; /* 테두리 색상 및 두께 설정 */
  background-color: #444;
  color: white;       /* 글자 색상 검정으로 설정 */
  cursor: pointer;    /* 커서가 버튼 위에 있을 때 손 모양으로 변경 */
  margin: 0 5px;      /* 버튼 간격 조정 */
  position: relative; /* 버튼의 위치를 조정할 수 있게 함 */
  left:490px;
  border-radius: 5px; /* 테두리를 둥글게 설정 */
}
.tol{
 border: 2px solid white;
 margin-bottom:30px;

}
 
.category_wrap {
    width: 80%; /* 원하는 너비로 설정 */
    margin: auto; /* 위쪽 마진 20px 추가, 좌우 자동 마진으로 중앙 정렬, 아래 여백 10px 유지 */
    padding-top: 5px; /* 위쪽 안쪽 여백 추가 */
}
.separator2 {
    width: 100%; /* 부모 요소의 전체 너비를 차지하도록 설정 */
    height: 2px;
    margin: 0;
}
.separator2 {
 width: 100%; 
 height: 2px;
 margin: 0;
}
.separator2 {
   
    background-color: black; 
    margin-bottom:20px;
}
.category_content a:hover {
    text-decoration: underline; /* 마우스 오버 시 밑줄 추가 */
}
.cart_content a {
    text-decoration: none; /* 기본 상태에서 밑줄 제거 */
    color: inherit; /* 부모 색상 상속 */
}

.cart_content a:hover {
    text-decoration: underline; /* 마우스 오버 시 밑줄 추가 */
}
#btnpay:hover {
    background-color: red; /* 호버 시 배경색 변경 */
}
#storehead {
    position: relative;
    top: 60px; /* 원하는 만큼 아래로 이동 */
}

</style>
</head>
<body>
<%@ include file="/WEB-INF/views/header/header.jsp" %> <!-- 헤더 포함 -->
<h1 id="storehead">스토어</h1>
<div id="container">
 	<div class="contegory_contents_wrap">
 	  	  <div class="category_wrap">                
             <div class="separator2"></div> <!-- 선을 스토어 아래에 위치 -->                
            </div>
          <ul class="category_content"> <!-- ul로 변경 -->
          	  <li><a href="/store" class="no-underline">베스트상품</a></li>
              <li><a href="/storeall" class="no-underline">전체상품</a></li>
           	  <li><a href="/package" class="no-underline">패키지</a></li>
              <li><a href="/giftcard" class="no-underline">기프트카드</a></li>
              <li><a href="/combo" class="no-underline">콤보</a></li>
              <li><a href="/popcorn" class="no-underline">팝콘</a></li>
              <li><a href="/drink" class="no-underline">음료</a></li>
              <li><a href="/snack" class="no-underline">스낵</a></li>
          </ul>
          <ul class="cart_content"> <!-- ul로 변경 -->                  
    		<li><a href="/cart" class="no-style-link">장바구니</a><span id="cart-count">0</span></li>
          </ul>   
    </div>
    <div class="separator1"></div> <!-- 선을 contegory_contents_wrap 아래에 위치 -->
    <div class="cart_step">
        <div class="step step1"><span>STEP 01</span>&nbsp;<strong>장바구니</strong></div>
        <div class="step step2 active"><span>STEP 02</span>&nbsp;<strong>결제하기</strong></div>              
    </div>
    <div class="cart_details">
        <table class="cart-table">
            <thead>
                <tr class="header1">
                    <th id="head1">상품이미지</th>
                    <th id="head2">상품이름</th>
                    <th id="head3">판매금액</th>
                    <th id="head4">수량</th>
                    <th id="head5">구매금액</th>                   
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${items}" var="item">
                    <tr class="cart-item">
                        <td>
                        	<input type="hidden" class="uid" value='${uid}'>
                            <input type="hidden" class="item_id" value="${item.item_id}">
                            <img src="${item.image_path}" id="imagepath" alt="${item.item_id}">
                        </td>
                        <td class="item-details">
                            <div class="item_name">
                                <span class="itemname">${item.name}</span><br>
                                <span class="itemcompo">${item.composition}</span>
                            </div>
                        </td>
                        <td>
                            <div class="discount">
				                <!-- Check if discount price and cart price are equal and cart price is not zero -->
				                <c:choose>
				                    <c:when test="${item.discount_price == item.cart_price && item.cart_price > 0}">
				                        <span class="discount_price">${item.discount_price}</span>
				                        <!-- Hide the cart price -->
				                    </c:when>
				                    <c:otherwise>
				                        <span class="discount_price">${item.discount_price}</span>
				                        <span class="cart_price">${item.cart_price}</span>
				                    </c:otherwise>
				                </c:choose>
				            </div>
                        </td>
                        <td class="qty">${item.qty}개</td>
                        <td class="total">${item.total}원</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="separator"></div>
        <table class="foottable">
            <thead class="footthead">
                <tr>
                    <th class="width-40">총 상품 금액</th>
                    <th class="width-20">할인금액</th>
                    <th class="width-40">총 결제 예정금액</th>
                </tr>
            </thead>
            <tbody class="tol">
                <tr>
                    <td class="totalprice">${totalPrice}원</td>
                    <td class="minus">-</td>
                    <td class="totaldiscount">${totalDiscount}원</td>
                    <td class="equal">=</td>
                    <td class="finalprice">${finalPrice}원</td>
                </tr>
            </tbody>
            <tr>
               <td>
					<a href="javascript:history.back()" id="btnback"> 뒤로가기</a>               
               		<input type="button" id="btnpay" value="결제하기">              
               </td>
            </tr>	
          
        </table>
    </div>  
</div>
<%@ include file="/WEB-INF/views/footer/footer.jsp" %> <!-- 푸터 포함 -->
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
function updateCartCount(customer_id) {
    $.ajax({
        url: '/countcart',
        type: 'post',
        data: { customer_id: customer_id },
        dataType: 'text',
        cache: false,
        success: function(data) {
            $('#cart-count').text(data);
        }
    });
}


$(document).ready(function() {
	
	let customer_id=$('.uid').val();
	
	
	updateCartCount(customer_id);

	
    function formatNumber(num) {
        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }

    $('.discount').each(function() {
        let $discountPrice = $(this).find('.discount_price');
        let $cartPrice = $(this).find('.cart_price');
        
        let discountPriceText = $discountPrice.text().replace(/[^0-9]/g, '');
        let cartPriceText = $cartPrice.text().replace(/[^0-9]/g, '');

        let discountPrice = parseFloat(discountPriceText) || 0;
        let cartPrice = parseFloat(cartPriceText) || 0;

        // Format the numbers
        let formattedDiscountPrice = formatNumber(discountPrice);
        let formattedCartPrice = formatNumber(cartPrice);

        // Set formatted text
        $discountPrice.text(formattedDiscountPrice + '원');
        $cartPrice.text(formattedCartPrice + '원');

        // Hide cart_price if it is equal to discount_price or is 0
        if (cartPrice === discountPrice || cartPrice === 0) {
            $cartPrice.hide();
        }
    });
                       
    $('.discount_price, .cart_price, .total, .totalprice, .totaldiscount, .finalprice').each(function() {
        let text = $(this).text();
        // '원' 단위를 제거하고 숫자만 추출
        let number = text.replace(/[^0-9]/g, '');
        // 숫자를 천 단위 쉼표를 포함하여 포맷
        let formattedNumber = formatNumber(number);
        // 포맷된 숫자와 '원' 단위를 다시 설정
        $(this).text(formattedNumber + '원');
    });
		
    // URL에서 source 파라미터를 읽어옴
    let queryString = window.location.search;
    let params = new URLSearchParams(queryString);
    let source = params.get('source');

    // URL에서 source 값이 없을 경우 경로에 따라 기본값 설정
    if (!source) {
        source = (window.location.pathname === '/cart') ? 'cart' : 'other';
    }

    console.log('source parameter:', source);

    $(document).on('click', '#btnpay', function() {
        let str = '';
        let customer_id = $('.uid').val();    
        let fin = $('.finalprice').text();
        let finalprice = fin.replace(/[^0-9]/g, ''); // 숫자만 추출

        $('.itemname').each(function(index) {
            let itemName = $(this).text().trim();
            let itemCompo = $('.itemcompo').eq(index).text().trim();
            str += itemName + '  ' + itemCompo + ',';
            console.log("str"+str);
        });

        // 마지막 쉼표 제거
        if (str.endsWith(',')) {
            str = str.slice(0, -1);
        }

        console.log(customer_id);
        console.log("price" + finalprice);
        console.log("name" + str);
        
        let select=''

        // 숨겨진 input 필드들 선택
        $('.item_id').each(function() {
        // 현재 input 필드의 값을 문자열로 추가
        select += $(this).val() + ',';
        });

		
        if (select.endsWith(',')) {
            select = select.slice(0, -1);
        }
     
        // 콘솔에 결과 출력 (디버깅용)
        console.log(select);
        
        customer_id = encodeURIComponent(customer_id);
        let totalprice = encodeURIComponent(finalprice);
        let itemname = encodeURIComponent(str);
       

        // Use the dynamically determined source
        source = encodeURIComponent(source);
        
        var popupWidth = 600;
        var popupHeight = 700;
        var leftPosition = (window.screen.width / 2) - (popupWidth / 2);
        var topPosition = (window.screen.height / 2) - (popupHeight / 2);

        // URL 생성
        let url = '/store/storecheck?itemname=' + itemname +
              '&totalprice=' + totalprice +
              '&source=' + source+
              '&select=' + encodeURIComponent(select);

        console.log("Generated URL: " + url);

        // 팝업 창 열기
        window.open(
            url,
            'CheckoutWindow',
            'width=' + popupWidth + ', height=' + popupHeight + ', left=' + leftPosition + ', top=' + topPosition + ', resizable=yes, scrollbars=yes'
        );
    });

 
});
</script>

</html>