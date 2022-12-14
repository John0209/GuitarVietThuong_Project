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
                        <input type="hidden" name="page" value="/product/Tanglewood-Dreadnought.do"/>
                        <p class="price"><fmt:formatNumber type="currency" minFractionDigits = "0" value="${list.price}"/></p>

                        <div class="high">  
                            <p class="special1">N???i b???t</p>
                            <p  class="special">- C?? d??ng dreadought khuy???t</p>
                            <p class="special">- ???????c thi???t k??? v???i ch???t li???u ch??nh l?? g???</p>
                            <p class="special">- Trang b??? h??? th???ng Tanglewood TW-EX4</p>
                            <p class="special">- Gi?? c??? r???t ph???i ch??ng</p>
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
                    <input type="hidden" name="page" value="/product/Tanglewood-Dreadnought.do"/>
    ${list.name}<br/>
    ${list.price}<br/>
    ${list.category}<br/>
    <input type="number" name="quantity" value="${quantity!=null?"value":"1"}"/><br>
    <button type="submit" name="action" value="addCart"> Add to Cart</button>
</div>
</div>    
<i style="color:red">${result}${num}</i>
<div >
<h2>??u ??i???m N???i b???t</h2>
<div ><p>- C?? d??ng dreadought khuy???t (cutaway)</p>

    <p>- ???????c thi???t k??? v???i ch???t li???u ch??nh l?? g???&nbsp;Mahogany</p>

    <p>-&nbsp;M???t ph??m v?? ng???a ????n ???????c l??m t??? g??? Rosewood</p>

    <p>- Trang b??? h??? th???ng Tanglewood TW-EX4 EQ&nbsp;</p>

    <p>- Gi?? c??? r???t ph???i ch??ng</p>

    <p>&nbsp;</p>
</div>
</div>-->
    <div >
        <h1 style="text-align: center">M?? T??? S???n Ph???m</h1>
        <div style="margin-left: 220px; margin-right: 220px; font-size: 22px">

            <p >Crossroads
                b??y t??? s??? t??n k??nh ?????i v???i phong c??ch v?? ??m thanh c???a c??c 
                nh???c c??? c??? ??i???n t??? n??m 1930 c???a M???. Nh???ng n??m 30 l?? kho???ng
                th???i gian kh?? kh??n tr??n kh???p n?????c M??? v???i cu???c ?????i suy tho??i
                khi???n c??c c???ng ?????ng ph???i qu??? g???i v?? cu???c chi???n v?? n???i ??au 
                c???a ngh??o ????i v?? n???n ????i ???????c ghi l???i trong c??c t???p ch?? v??
                nh???t k?? v?? t???t nhi??n l?? trong b??i h??t, tr??n kh???p ?????t n?????c.
                M???t s??? ng?????i hi???n ???????c coi l?? nh???ng nh???c s?? gi???i nh???t v?? 
                c?? ???nh h?????ng nh???t tr??n th??? gi???i ???? t???o ra m???t ??m thanh nh???p 
                nh??ng trong su???t nh???ng n??m ???? v?? h??t l??n nh???ng r???c r???i c???a 
                h???, m???t ??m thanh m?? ng??y nay ch??ng ta ngh?? l?? nh???c blues.</p>
        </div>
        <div style="margin-left: 220px; margin-right: 220px; font-size: 22px">

            <p >Nh???ng c??y
                ????n guitar ???????c s??? d???ng ????? ch??i lo???i nh???c n??y kh??ng ???????c 
                trang tr?? l???ng l???y hay ???????c trang tr?? l???ng l???y b???ng nh???ng
                l???p s??n m??i ?????t ti???n, ch??ng r???t ????n gi???n v?? ho???t ?????ng t???t,
                nh??ng trong nhi???u tr?????ng h???p, nh???ng c??y ????n n??y v???n ???????c 
                ch??? t???o kh?? ch??nh x??c cho ng??y nay. V???i m???t chi ph?? th???c 
                s??? ????ng k??? ?????i v???i c??c nh???c s?? v??o th???i ????, ??i???u ???? c?? 
                ngh??a l?? nh???ng c??y ????n guitar c???a th???i ?????i n??y ph???i ch??i
                t???t v?? t???n t???i trong m???t th???i gian d??i, th?????ng ph???i ???????c
                truy???n qua c??c th??? h??? trong gia ????nh.</p>

        </div>
        <h2 style="text-align: center">
            ????N GUITAR TANGLEWOOD TWCR DCE&nbsp;CROSSROADS DREADNOUGHT
            ACOUSTIC</h2>

        <p style="margin-left: 220px; margin-right: 220px; font-size: 22px">????n gutar
            acoustic&nbsp;Tanglewood TWCR DCE&nbsp;???????c thi???t k??? v???i
            ch???t li???u ch??nh l?? g???&nbsp;Mahogany, v???i nhi???u t??nh n??ng 
            v?????t tr???i l?? l???a l???a ch???n l?? t?????ng cho nhi???u ngh??? s?? Guitar.</span></span></p>

        <p style="text-align:center"><img alt="" src="<c:url value="/images/aucoutic/tanglewood-twcrdce-400x400.jpg"/>" style="height:800px; width:800px"></p>

        <h2 style="text-align: center">
                        C??y guitar acoustic d??ng dreadnought</h2>

        <p style="margin-left: 220px; margin-right: 220px; font-size: 22px">????n guitar 
                    Tanglewood TWCR DCE&nbsp;c?? d??ng dreadought khuy???t (cutaway).
                    Th??ng ????n l???n cho ti???ng ????n to, ???m v?? ?????y h??n, 
                    ph?? h???p cho l???i ch??i strumming.</p>

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

</html>
