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
                                <p class="special1">N???i b???t</p>
                                <p  class="special">- Th??n ????n m???ng, nh???</p>
                                <p class="special">- C???n ????n d??ng C m???ng</p>
                                <p class="special">- PJ pickup</p>
                                <p class="special">- Kh??a l??n d??y m??? ki???u c??? ??i???n</p>
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
<h2 class="title"><strong>N???i b???t</strong></h2>
<ul>
    <li>Th??n ????n m???ng, nh???</li>
    <li>C???n ????n d??ng C m???ng</li>
    <li>PJ pickup</li>
    <li>Kh??a l??n d??y m??? ki???u c??? ??i???n</li>
    <li>4-saddle bass bridge</li>
</ul>
</div>-->
        <hr/>
        <div >
            <h1 class="title" style="text-align: center">M?? T??? S???n Ph???m</h1>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">Fender CD-60S l?? c??y ????n guitar l?? t?????ng cho nh???ng 
                    ng?????i ??ang t??m ki???m chi???c Dreadnought ch???t l?????ng cao, giai
                    ??i???u chu???n v?? kh??? n??ng ch??i tuy???t v???i v???i m???c gi?? ph???i ch??ng
                    . Guitar CD-60S th??ch h???p cho nh???ng bu???i d?? ngo???i, qu??n c?? ph??.
                    .. v?? th??ch h???p cho phong c??ch Fender c??? ??i???n.</p>
            </div>

            <h2 class="title"><strong>Thi???t k??? chuy??n nghi???p</strong></h2>
            <p><strong><img class="imgp" alt="" src="<c:url value="/images/product/fender-cd-60s/1.jpg"/>" style="height:502px; width:750px"></strong></p>
            <div style="margin-left: 220px; margin-right: 220px">


                <p style="font-size: 20px">Guitar Fender CD-60S n???i b???t v???i thi???t k??? ?????p m???t. ????n c?? d??ng
                    Dreadnought, th??ng ????n l???n cho ti???ng ????n to, ???m v?? ?????y h??n, 
                    ph?? h???p cho c??c b???n ch??i ?????m v?? d??ng pick. C??y ????n l?? m???t trong
                    nh???ng m???u Guitar ph??? bi???n nh???t c???a<strong>&nbsp;</strong>th????ng
                    hi???u Fender&nbsp;??? m???c gi?? t???m trung.</p>
            </div>
            <h2 class="title"><strong>M???t tr?????c ???????c ???????c l??m b???ng g??? Spruce</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">M???t tr?????c&nbsp;Fender CD-60S ???????c l??m b???ng g??? Spruce ch???c ch???n.
                    ?????c t??nh c???a g??? Spruce l?? r???t c???ng v?? nh???, c?? t???c ????? truy???n ??m 
                    thanh, ????? vang r???t cao, giai ??i???u r?? r??ng, ph???n ???ng t???t v???i b???t
                    k??? phong c??ch ch??i acoustic n??o</p>
            </div>

            <p><img class="imgp" src="<c:url value="/images/product/fender-cd-60s/2.jpg"/>" style="height:275px; width:700px"></p>

            <h2 class="title"><strong>M???t sau v?? b??n h??ng</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">M???t sau v?? b??n h??ng ???????c l??m t??? g??? mahogany, cho ??m thanh r???t
                    r?? r??ng v???i trebles chu???n v?? t???m trung. ??m thanh ???m v?? h???p v???i
                    nh???c fingerpickers, blues</p>
            </div>

            <p><img class="imgp" src="<c:url value="/images/product/fender-cd-60s/3.jpg"/>" style="height:267px; width:700px"></p>

            <h2 class="title"><strong>??i???u khi???n c??? ????n d??? d??ng</strong></h2>
            <div style="margin-left: 220px; margin-right: 220px">

                <p style="font-size: 20px">V???i c??c c???nh c?? ng??n tay l??n tho???i m??i, c??? c???a chi???c guitar n
                    ??y t???o ra c???m gi??c tho???i m??i v?? c??ng, l?? t?????ng cho ng?????i b???t 
                    ?????u ch??i ho???c nh???ng ng?????i ch??a c?? nhi???u kinh nghi???m.</p>
            </div>
        </div>

        <hr>

        <div class="high1" style="margin-left: 770px">  
            <p class="special2" style="text-align: center">Shop Cam K???t</p>
            <p><i class="fa-solid fa-medal" style="color:#ff9933"></i> S???n ph???m nh???p kh???u ch??nh h??ng</p>
            <p><i class="fa-solid fa-circle-check" style="color:blue"></i> B???o h??nh 2 n??m</p>
            <p><i class="fa-solid fa-truck-arrow-right" style="color:green"></i> Giao h??ng to??n qu???c v???i chi ph?? r??? nh???t</p>
            <p><i class="fa-solid fa-location-dot" style="color:red"></i> S??? M??? r???ng h??? th???ng Trong T????ng Lai</p>

        </div>     
    </form>
</body>
</html>
