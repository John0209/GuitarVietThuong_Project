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
                font-size: 25px;
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
                        <input type="hidden" name="page" value="/product/Squier-Affinity-J.do"/>
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
    <!--    <h1>Guitar Information</h1>
        <form action="<c:url value="addCart.do"/>">
            <div class="row"> 
                <div class="col-md-4">
                    <img class="img" src="<c:url value="/images/aucoutic/${list.img}"/>"/>
                </div>
                <div class="col-md-4">
                    <input type="hidden" name="proId" value="${list.proID}"/>
                    <input type="hidden" name="cateId" value="${list.cateID}"/>
                    <input type="hidden" name="numDB" value="${list.quantity}"/>
                    <input type="hidden" name="page" value="/product/Squier-Affinity-J.do"/>
    ${list.name}<br/>
    ${list.price}<br/>
    ${list.category}<br/>
    <input type="number" name="quantity" value="${quantity!=null?"value":"1"}"/><br>
    <button type="submit" name="action" value="addCart"> Add to Cart</button>
</div>
</div>    
<i style="color:red">${result}${num}</i>
<div>
<h2>??u ??i???m N???i b???t</h2>
<p>- Th??n ????n nh??? g???n d??? ch???u th??ch h???p v???i l???i ch??i fingerpicking</p>
<p>- M???t tr?????c g??? Sitka nguy??n mi???ng cho ??m thanh linh ho???t v?? ????? vang l???n</p>
<p>- Th??n ????n b???ng c??c l???p g??? sapele mang ?????n m???t khung ????n ch???c ch???n</p>
<p>- B??n ph??m b???ng g??? mun ???????c trang tr?? v???i c??c n???t h???a ti???t acrylic ?? 4mm</p>
<p>- H??? th???ng ??i???n t??? ES-B t??ch h???p tuner cho t??ng ??m khu???ch ?????i c???c chi ti???t</p>
<p>- Thi???t k??? ?????c ????o k???t h???p v???i m???c gi?? ph???i ch??ng.</p>
</div>-->

    <div>
        <h2 style="text-align: center">M?? T??? S???n Ph???m</h2>
        <div style="margin-left: 220px; margin-right: 220px; font-size: 22px">
            <p>?????i di???n cho gi?? tr??? t???t nh???t trong thi???t k??? guitar bass hi???n nay, Affinity Series Jazz Bass mang ?????n ??m thanh m???nh m??? v?? c???m nh???n nh???y b??n. Affinity Series Jazz Bass ???????c bi???t ?????n v???i c???m gi??c ch??i tho???i m??i, v??? ngo??i b???t m???t v?? ?????y ????? t??nh n??ng linh ho???t trong m???t nh???c c???.</p>

            <h2 style="text-align: center">C???n ????n m???nh b???ng g??? maple</h2>

            <p>C???n ????n m???t m???nh b???ng g??? maple c???ng c??p, m???nh m??? gi??p t??ng c?????ng chuy???n ?????ng rung t??? c??c d??y ????n.</p>

            <h2 style="text-align: center">M???t ????n (v???i 20 ph??m) l??m b???ng g??? h???ng m???c</h2>

            <p style="text-align:center"><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/1.jpg"/>" style="height:267px; width:450px"></p>

            <p>G??? h???ng m???c d??ng l??m m???t ph??m ????n mang t???i s??? tho???i m??i cho ng?????i ch??i v?? cho c??y ????n guitar ch???t t????i s??ng, ??m thanh nh??? nh??ng, ??m d???u, ???m ??p, d??? ??i v??o l??ng ng?????i.</p>

            <h2 style="text-align: center">Single-coil Jazz Bass pickups</h2>

            <p style="text-align:center"><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/2.jpg"/>" style="height:267px; width:450px"></strong></p>

            <p>Single coil pickup l?? lo???i ti??u chu???n ???????c s??? d???ng ??? guitar ??i???n Affinity Series Jazz Bass mang ?????n m???t ??m thanh hi???n ?????i v?? ?????c tr??ng c???a Jazz Bass.&nbsp;Pickup ????n n??y c?? ?????c ??i???m ??m thanh r???t trong, s???c b??n v?? nh???y m?? c??c b???n c??ng th?????ng ???????c nghe qua v?? bi???t ?????n tr?????c ????y. Nh???ng ng?????i ch??i mu???n t??m nh???ng ??m thanh trong s???ch ho???c ch??? ??t s??? d???ng distortion th?????ng ch???n pickup ????n n??y.</p>

            <h2 style="text-align: center">Mi???ng b???o v??? m???t ????n m??u tr???ng</h2>

            <p>Mi???ng pickguard b???o v??? m???t ????n m??u tr???ng v???a l?? l???p b???o v??? hi???u qu??? cho ????n trong qu?? tr??nh s??? d???ng, v???a mang t???i v??? ngo??i ?????p m???c m???c m?? tinh t???.</p>

            <h2 style="text-align: center">Logo hai m??u v??ng ??en&nbsp;???n t?????ng ??? ?????u ????n</h2>

            <p style="text-align:center"><strong><img alt="" src="<c:url value="/images/product/Squier-Affinity-J/3.jpg"/>" style="height:267px; width:450px"></strong></p>

            <p>Logo c???a Affinity Series Jazz Bass c?? hai m??u v??ng v?? ??en ???n t?????ng, thanh l???ch ??? ?????u ????n mang ?????n ?????ng c???p cho chi???c ????n n??y.</p>

            <p>&nbsp;</p>
        </div>
    </div>
    <hr>

    <div class="high1" style="margin-left: 770px">  
        <p class="special2"style="text-align: center" >Shop Cam K???t</p>
        <p><i class="fa-solid fa-medal" style="color:#ff9933"></i> S???n ph???m nh???p kh???u ch??nh h??ng</p>
        <p><i class="fa-solid fa-circle-check" style="color:blue"></i> B???o h??nh 2 n??m</p>
        <p><i class="fa-solid fa-truck-arrow-right" style="color:green"></i> Giao h??ng to??n qu???c v???i chi ph?? r??? nh???t</p>
        <p><i class="fa-solid fa-location-dot" style="color:red"></i> S??? M??? r???ng h??? th???ng Trong T????ng Lai</p>

    </div>  
</form>

</html>
