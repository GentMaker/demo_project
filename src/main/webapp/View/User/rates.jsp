<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html><html lang="en"><head>    <title>Gent Steak</title>    <meta charset="utf-8">    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"          rel="stylesheet">    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/open-iconic-bootstrap.min.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/animate.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/owl.carousel.min.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/owl.theme.default.min.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/magnific-popup.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/aos.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/ionicons.min.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/bootstrap-datepicker.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/jquery.timepicker.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/flaticon.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/icomoon.css">    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/style.css">    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <%--    <link rel="stylesheet" href="<%=request.getContextPath()%>/View/User/css/rate.css">--%></head><body class="goto-here"><jsp:include page="../header.jsp"/><div class="hero-wrap hero-bread"     style="background-image: url('<%=request.getContextPath()%>/View/User/images/food-tableware-ingredient-cake-recipe-baking-cup-1984669-wallhere.com.jpg');">    <div class="container">        <div class="row no-gutters slider-text align-items-center justify-content-center">            <div class="col-md-9 ftco-animate text-center">                <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>                <h1 class="mb-0 bread">Send Rate</h1>            </div>        </div>    </div></div><section class="ftco-section ftco-cart">    <form action="<%=request.getContextPath()%>/StarServlet" method="post">        <div class="container">            <div class="row">                <div class="col-md-12 ftco-animate">                    <div class="cart-list">                        <form action="<%=request.getContextPath()%>/StarServlet" method="post">                            <table class="table">                                <thead class="thead-primary">                                <tr class="text-center, pro">                                    <th>&nbsp;</th>                                    <th>&nbsp;</th>                                    <th id="poduct-name">Product name</th>                                    <th>Rate</th>                                    <th>Update</th>                                </tr>                                </thead>                                <tbody>                                    <tr class="text-center">                                        <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a>                                        </td>                                        <td class="image-prod">                                            <div class="img"                                                 style="background-image:url(<%=request.getContextPath()%>/View/User/images/${listCart.productImg});"></div>                                        </td>                                        <td class="product-name">                                            <h3>${listCart.productName}</h3>                                        </td>                                        <td>                                            <select name="rateStar" id="rateStar">                                                <option value="0" selected>Rate Star</option>                                                <option value="1">⭐</option>                                                <option value="2">⭐⭐</option>                                                <option value="3">⭐⭐⭐</option>                                                <option value="4">⭐⭐⭐⭐</option>                                                <option value="5">⭐⭐⭐⭐⭐</option>                                            </select>                                        </td>                                        <input type="hidden" name="orderID" value="${orderID}">                                        <input type="hidden" name="productID" value="${listCart.productID}">                                    </tr>                                    <!-- END TR-->                                </tbody>                            </table>                        </form>                    </div>                </div>            </div>            <div class="row justify-content-end">                <div class="col-lg-4 mt-5 cart-wrap ftco-animate">                    <p><input type="submit" name="action" class="btn btn-black py-3 px-5" value="Send Rate"></p>                    <input type="hidden" name="rateStar" id="rateStar1">                </div>            </div>        </div>    </form></section><jsp:include page="footer.jsp" /><!-- loader --><div id="ftco-loader" class="show fullscreen">    <svg class="circular" width="48px" height="48px">        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"                stroke="#F96D00"/>    </svg></div><script src="<%=request.getContextPath()%>/View/User/js/jquery.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery-migrate-3.0.1.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/popper.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/bootstrap.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery.easing.1.3.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery.waypoints.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery.stellar.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/owl.carousel.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery.magnific-popup.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/aos.js"></script><script src="<%=request.getContextPath()%>/View/User/js/jquery.animateNumber.min.js"></script><script src="<%=request.getContextPath()%>/View/User/js/bootstrap-datepicker.js"></script><script src="<%=request.getContextPath()%>/View/User/js/scrollax.min.js"></script><script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script><script src="<%=request.getContextPath()%>/View/User/js/google-map.js"></script><script src="<%=request.getContextPath()%>/View/User/js/main.js"></script><script>    $(document).ready(function () {        var quantitiy = 0;        $('.quantity-right-plus').click(function (e) {            // Stop acting like a button            e.preventDefault();            // Get the field name            var quantity = parseInt($('#quantity').val());            // If is not undefined            $('#quantity').val(quantity + 1);            // Increment        });        $('.quantity-left-minus').click(function (e) {            // Stop acting like a button            e.preventDefault();            // Get the field name            var quantity = parseInt($('#quantity').val());            // If is not undefined            // Increment            if (quantity > 0) {                $('#quantity').val(quantity - 1);            }        });    });</script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script><script>    $(document).ready(function () {        /* 1. Visualizing things on Hover - See next part for action on click */        $('#stars li').on('mouseover', function () {            var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on            // Now highlight all the stars that's not after the current hovered star            $(this).parent().children('li.star').each(function (e) {                if (e < onStar) {                    $(this).addClass('hover');                } else {                    $(this).removeClass('hover');                }            });        }).on('mouseout', function () {            $(this).parent().children('li.star').each(function (e) {                $(this).removeClass('hover');            });        });        /* 2. Action to perform on click */        $('#stars li').on('click', function () {            var onStar = parseInt($(this).data('value'), 10); // The star currently selected            var stars = $(this).parent().children('li.star');            for (i = 0; i < stars.length; i++) {                $(stars[i]).removeClass('selected');            }            for (i = 0; i < onStar; i++) {                $(stars[i]).addClass('selected');            }            let ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);            ${'#rateStar'}.            val(ratingValue)            // $.ajax({            //     url:'StarServlet',            //     data:{rateStar:ratingValue},            //     type:'post',            // })            console.log(ratingValue)        });    });</script></body></html>