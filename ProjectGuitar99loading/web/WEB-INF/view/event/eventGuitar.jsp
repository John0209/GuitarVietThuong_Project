<%-- 
    Document   : eventGuitar
    Created on : Jun 10, 2022, 11:10:35 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Guitar</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            /* The actual timeline (the vertical ruler) */
            .main-timeline {
                position: relative;
            }

            /* The actual timeline (the vertical ruler) */
            .main-timeline::after {
                content: '';
                position: absolute;
                width: 6px;
                background-color: #939597;
                top: 0;
                bottom: 0;
                left: 50%;
                margin-left: -3px;
            }

            /* Container around content */
            .timeline {
                position: relative;
                background-color: inherit;
                width: 50%;
            }

            /* The circles on the timeline */
            .timeline::after {
                content: '';
                position: absolute;
                width: 25px;
                height: 25px;
                right: -13px;
                background-color: #939597;
                border: 5px solid #F5DF4D;
                top: 15px;
                border-radius: 50%;
                z-index: 1;
            }

            /* Place the container to the left */
            .left {
                padding: 0px 40px 20px 0px;
                left: 0;
            }

            /* Place the container to the right */
            .right {
                padding: 0px 0px 20px 40px;
                left: 50%;
            }

            /* Add arrows to the left container (pointing right) */
            .left::before {
                content: " ";
                position: absolute;
                top: 18px;
                z-index: 1;
                right: 30px;
                border: medium solid white;
                border-width: 10px 0 10px 10px;
                border-color: transparent transparent transparent white;
            }

            /* Add arrows to the right container (pointing left) */
            .right::before {
                content: " ";
                position: absolute;
                top: 18px;
                z-index: 1;
                left: 30px;
                border: medium solid white;
                border-width: 10px 10px 10px 0;
                border-color: transparent white transparent transparent;
            }

            /* Fix the circle for containers on the right side */
            .right::after {
                left: -12px;
            }

            /* Media queries - Responsive timeline on screens less than 600px wide */
            @media screen and (max-width: 600px) {
                /* Place the timelime to the left */
                .main-timeline::after {
                    left: 31px;
                }

                /* Full-width containers */
                .timeline {
                    width: 100%;
                    padding-left: 70px;
                    padding-right: 25px;
                }

                /* Make sure that all arrows are pointing leftwards */
                .timeline::before {
                    left: 60px;
                    border: medium solid white;
                    border-width: 10px 10px 10px 0;
                    border-color: transparent white transparent transparent;
                }

                /* Make sure all circles are at the same spot */
                .left::after, .right::after {
                    left: 18px;
                }

                .left::before {
                    right: auto;
                }

                /* Make all right containers behave like the left ones */
                .right {
                    left: 0%;
                }
            }
            .card-body.p-4 {
                border: 3px groove #49e3f1;
            }
        </style>
    </head>
    <body>
<!--        <h1><a  style="text-decoration: none" href="<c:url value="/event/event1.do"/>">TR???NG V?? BASS - S??? LI??N K???T K??? DI???U</a></h1>
        <img src="<c:url value="/images/event/event1.png"/>"/>
        <h1><a style="text-decoration: none" href="<c:url value="/event/event2.do"/>">CASIO RA M???T ????N ??I???N T???</a></h1>
        <img src="<c:url value="/images/event/event2.jpg"/>"/>-->

        <div style="background-image: url('https://static9.depositphotos.com/1004996/1111/v/950/depositphotos_11119809-stock-illustration-music-background.jpg')">
            <div class="container py-5">
                <div class="main-timeline">
                    <div class="timeline left">
                        <div class="card">
                            <div class="card-body p-4">
                                <h3 style="color: #005fa4">Tr???ng v?? Bass</h3>
                                <p class="mb-0">S??? li??n k???t k?? di???u t???o n??n nh???ng giai ??i???u khi???n
                                    ng?????i nghe kh??ng th??? c?????ng l???i. Hai nh???c c??? t?????ng ch???ng
                                    nh?? kh??ng h???p nh??ng l???i t???o n??n nh???ng b???n nh???c h???p 
                                    kh??ng t?????ng.</p>
                                <a style="text-decoration: none" href="<c:url value="/event/event1.do"/>">-->View details</a>
                            </div>
                        </div>
                    </div>
                    <div class="timeline right">
                        <div class="card">
                            <div class="card-body p-4">
                                <h3 style="color: #005fa4">Casio ra m???t ????n ??i???n t???</h3>
                                <p class="mb-0">S??? ki???n s??? ??em ?????n s??? h???ng th?? ?????i v???i nh???ng ng?????i
                                    c?? ??am m?? v???i ????n ??i???n t??? n??i chung v?? Casio n??i ri??ng</p>
                                <a style="text-decoration: none" href="<c:url value="/event/event2.do"/>">-->View details</a>
                            </div>
                        </div>
                    </div>
                    <div class="timeline left">
                        <div class="card">
                            <div class="card-body p-4">
                                <h3 style="color: #005fa4">YOUTH PIANO COMPETITION 2022</h3>
                                <p class="mb-0">Vietnam Steinway Youth Piano Competition l?? cu???c thi
                                    d??nh cho t???t c??? C??ng d??n v?? Th?????ng tr?? nh??n Vi???t Nam t??? 17 tu???i tr??? xu???ng.</p>
                                <a style="text-decoration: none" href="<c:url value="/event/event3.do"/>">-->View details</a>
                            </div>
                        </div>
                    </div>
                    <div class="timeline right">
                        <div class="card">
                            <div class="card-body p-4">
                                <h3 style="color: #005fa4">BEST COVER SONGS CONTEST</h3>
                                <p class="mb-0">Nh???m t???o ra s??n ch??i l??nh m???nh d??nh cho c??c b???n ??am m??
                                    ??m nh???c, Vi???t Th????ng Music t??? ch???c cu???c thi ???BEST SONG COVER CONTEST??? 
                                    Cover nh???c tr??? hay nh???t th???i 8x-9x</p>
                                <a style="text-decoration: none" href="<c:url value="/event/event4.do"/>">-->View details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
