<%-- 
    Document   : product
    Created on : Jun 8, 2022, 10:22:35 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            body {
                background-color: #d9e7fc;
            }

            .wrapper {
                height: 500px;
                width: 800px;
                background-color: white;
                margin: 50px auto;
                border-radius: 7px 7px 7px 7px;

            }

            .product-img {
                float: left;
                height: 440px;
                width: 400px;
            }

            .product-img img {
                border-radius: 7px 0 0 7px;
                padding-top: 30px;
            }

            .product-info {
                float: left;
                height: 420px;
                width: 327px;
                border-radius: 0 7px 10px 7px;
                background-color: #ffffff;
            }

            .product-text {
                height: 300px;
                width: 327px;
            }

            .product-text h1 {
                margin: 20px;
                padding: auto;
                font-size: 35px;
                text-align: center;
                color: #474747;
            }

            .product-text h1,
            .product-price-btn p {
                font-family: 'Bentham', serif;
            }

            .high {
                margin-right: 20px;
                border: 1px groove rgb(16, 151, 228);
                height: 240px;
                width: 350px;
            }

            .high1 {
                margin-right: 200px;
                margin-left: 200px;
                border: 1px groove red;
                height: 240px;
                width: 370px;

            }

            .high1 p {
                padding-left: 10px;
                font-size: 18px;
            }

            .price {
                font-size: 24px;
                text-align: center;
            }

            .special1 {
                margin-top: 0px; 
                margin-left: 0px;
                padding-left: 10px; 
                font-weight: bold; 
                color: white; 
                font-size: 22px; 
                background-color: #1097e4;
            }

            .special {
                margin-left: 20px;
                padding-left: 0px;
                margin-top: 5px;
                font-size: 18px;
            }

            .special2 {
                margin-top: 0px; 
                margin-left: 0px;
                padding-left: 10px; 
                font-weight: bold; 
                color: white; 
                font-size: 24px; 
                background-color: red;
            }

            .quantity {
                margin-left: 20px;
                width: 70px;
                height: 70px;
                margin-top: 20px;
                font-size: 27px;
            }

            .buy {
                margin-left: 5px;
                margin-top: 20px;
            }


            .product-price-btn {
                height: 103px;
                width: 327px;
                position: relative;
                display: flex;
                margin-top: 50px;
            }

            .product-price-btn p {
                display: inline-block;
                position: absolute;
                top: -13px;
                height: 50px;
                font-family: 'Trocchi', serif;
                margin: 0 0 0 38px;
                font-size: 28px;
                font-weight: lighter;
                color: #474747;
            }



            .product-price-btn button {
                float: right;
                display: inline-block;
                height: 70px;
                width: 176px;
                margin: 0 40px 0 16px;
                box-sizing: border-box;
                border: transparent;
                border-radius: 60px;
                font-family: 'Raleway', sans-serif;
                font-size: 20px;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 0.2em;
                color: #ffffff;
                background-color:  rgb(16, 151, 228);
                cursor: pointer;
                outline: none;
            }

            .product-price-btn button:hover {
                background-color: #79b0a1;
            }

            .add {
                margin-top: 40px; 
                background-color: red; 
                color: white;
                width: 150px;
                height: 100px;

            }

            .title {
                text-align: center;
            }

            .img {
                height: 600px;
                width: 550px;
            }

            .imgp {
                display: block;
                margin-left: auto;
                margin-right: auto;
            }

            .col-md-4 {
                text-align: center;
            }
        </style>
    </head>
    <body>

        <div class="wrapper">
            <form action="addCart.do">
                <div class="wrapper1">

                    <div class="product-img">
                        <img src="<c:url value="/images/aucoutic/${list.img}"/>" 
                             height="420"
                             width="360">
                    </div>


                    <div class="product-info" >
                        <div class="product-text">
                            <h1>${list.name}</h1>
                            <input type="hidden" name="proId" value="${list.proID}"/>
                            <input type="hidden" name="cateId" value="${list.cateID}"/>
                            <input type="hidden" name="numDB" value="${list.quantity}"/>
                            <input type="hidden" name="page" value="/product/fender-cd-60s.do"/>
                            <p class="price"><fmt:formatNumber type="currency" minFractionDigits = "0" value="${list.price}"/></p>

                            <div class="high">  
                                <p class="special1">Nổi bật</p>
                                <p  class="special">- Thân đàn mỏng, nhẹ</p>
                                <p class="special">- Cần đàn dáng C mỏng</p>
                                <p class="special">- PJ pickup</p>
                                <p class="special">- Khóa lên dây mở kiểu cổ điển</p>
                            </div> 


                        </div>
                        <div class="product-price-btn">
                            <div>
                                <input class="quantity" type="number" name="quantity" value="${quantity==null?"1":quantity}" /><br>
                            </div>
                            <div class="buy">
                                <button type="submit" name="action" value="addCart"><i class="fa-solid fa-cart-shopping"></i>Add Cart</button>
                                <i style="color:red">${result}${num}</i>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>

        <!--        <h1 class="title" style="margin-top: 50px">Guitar Information</h1>
        <form action="addCart.do">
                        product start
            <div class="row"> 
                <div class="col-md-4">
                    <img class="img" src="<c:url value="/images/aucoutic/${list.img}"/>"/>
                </div>
                <div class="col-md-4">
                    <input type="hidden" name="proId" value="${list.proID}"/>
                    <input type="hidden" name="cateId" value="${list.cateID}"/>
                    <input type="hidden" name="numDB" value="${list.quantity}"/>
                    <input type="hidden" name="page" value="/product/fender-cd-60s.do"/>
        ${list.name}<br/>
        ${list.price}<br/>
        ${list.category}<br/>
        <input type="number" name="quantity" value="${quantity!=null?"value":"1"}"/><br>
        <button type="submit" name="action" value="addCart"> Add to Cart</button>
    </div>
</div>    
<i style="color:red">${result}${num}</i>
        
        product end
<div>
<h2 class="title"><strong>Nổi bật</strong></h2>
<ul>
    <li>Thân đàn mỏng, nhẹ</li>
    <li>Cần đàn dáng C mỏng</li>
    <li>PJ pickup</li>
    <li>Khóa lên dây mở kiểu cổ điển</li>
    <li>4-saddle bass bridge</li>
</ul>
</div>-->
        <hr/>
        <div >
            <h1 class="title" style="text-align: center">Mô Tả Sản Phẩm</h1>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">Fender CD-60S là cây đàn guitar lý tưởng cho những 
                    người đang tìm kiếm chiếc Dreadnought chất lượng cao, giai
                    điệu chuẩn và khả năng chơi tuyệt vời với mức giá phải chăng
                    . Guitar CD-60S thích hợp cho những buổi dã ngoại, quán cà phê.
                    .. và thích hợp cho phong cách Fender cổ điển.</p>
            </div>

            <h2 class="title"><strong>Thiết kế chuyên nghiệp</strong></h2>
            <p><strong><img class="imgp" alt="" src="<c:url value="/images/product/fender-cd-60s/1.jpg"/>" style="height:502px; width:750px"></strong></p>
            <div style="margin-left: 220px; margin-right: 220px">


                <p style="font-size: 20px">Guitar Fender CD-60S nổi bật với thiết kế đẹp mắt. Đàn có dáng
                    Dreadnought, thùng đàn lớn cho tiếng đàn to, ấm và đầy hơn, 
                    phù hợp cho các bạn chơi đệm và dùng pick. Cây đàn là một trong
                    những mẫu Guitar phổ biến nhất của<strong>&nbsp;</strong>thương
                    hiệu Fender&nbsp;ở mức giá tầm trung.</p>
            </div>
            <h2 class="title"><strong>Mặt trước được được làm bằng gỗ Spruce</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">Mặt trước&nbsp;Fender CD-60S được làm bằng gỗ Spruce chắc chắn.
                    Đặc tính của gỗ Spruce là rất cứng và nhẹ, có tốc độ truyền âm 
                    thanh, độ vang rất cao, giai điệu rõ ràng, phản ứng tốt với bất
                    kỳ phong cách chơi acoustic nào</p>
            </div>

            <p><img class="imgp" src="<c:url value="/images/product/fender-cd-60s/2.jpg"/>" style="height:275px; width:700px"></p>

            <h2 class="title"><strong>Mặt sau và bên hông</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">Mặt sau và bên hông được làm từ gỗ mahogany, cho âm thanh rất
                    rõ ràng với trebles chuẩn và tầm trung. Âm thanh ấm và hợp với
                    nhạc fingerpickers, blues</p>
            </div>

            <p><img class="imgp" src="<c:url value="/images/product/fender-cd-60s/3.jpg"/>" style="height:267px; width:700px"></p>

            <h2 class="title"><strong>Điều khiển cổ đàn dễ dàng</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">Với các cạnh có ngón tay lăn thoải mái, cổ của chiếc guitar n
                    ày tạo ra cảm giác thoải mái vô cùng, lý tưởng cho người bắt 
                    đầu chơi hoặc những người chưa có nhiều kinh nghiệm.</p>
            </div>
        </div>

        <hr>

        <div class="high1" style="margin-left: 770px">  
            <p class="special2" style="text-align: center">Shop Cam Kết</p>
            <p><i class="fa-solid fa-medal" style="color:#ff9933"></i> Sản phẩm nhập khẩu chính hãng</p>
            <p><i class="fa-solid fa-circle-check" style="color:blue"></i> Bảo hành 2 năm</p>
            <p><i class="fa-solid fa-truck-arrow-right" style="color:green"></i> Giao hàng toàn quốc với chi phí rẻ nhất</p>
            <p><i class="fa-solid fa-location-dot" style="color:red"></i> Sẽ Mở rộng hệ thống Trong Tương Lai</p>

        </div>     
    </form>
</body>
</html>
