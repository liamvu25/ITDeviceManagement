<%-- 
    Document   : Cart
    Created on : Jul 19, 2022, 11:08:16 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CART</title>
        <link rel="stylesheet" href="css/style.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap');
        </style>
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="fonts/themify-icons/themify-icons.css">
        <link rel="icon" href="./img/word-image-1047.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
              integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
        <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/fonts/fontawesome-free-6.1.1-web/css/all.min.css">

    </head>

    <body>
        <!-- navbar -->

        <div class="row navbar">
            <!-- logo -->
            <div class="col-sm-4 navbar-user-left d-flex align-items-center">
                <div class="col-sm-5 logo">
                    <a href="#"><img src="./img/logo.png" height="80" alt="" /></a>
                </div>
                <!-- product-list -->
                <div class="">
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle d-flex align-items-center justify-content-center user-info" href="#"
                           id="navbarDropdownMenuLink" role="button" data-toggle="dropdown">
                            <p class="product-list">Product</p>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <c:forEach var="category" items="${categoryList}">
                                <li>
                                    <a class="dropdown-item" value="${category.key}" href="MainController?search=${category.key}&action=HomeSearchDevice&value=${category.value}">${category.value}</a>
                                </li>
                            </c:forEach>
                            <li>
                                <a class="dropdown-item" href="MainController?search=&action=HomeSearchDevice&value=${category.value}">All Product</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 text-center navbar-user-fill"></div>
            <!-- card-icon -->
            <div class="col-sm-4 text-center navbar-user-right d-flex">
                <div class="col-sm-6 card-shopping">
                    <a href="#" class="" role="button">
                        <i class="fas fa-shopping-cart text-dark ml-5 mt-2"></i>
                    </a>
                </div>
                <!-- welcome -->
                <div class="col-sm-6">
                    <div class="nav-item dropdown align-items-center">
                        <a class="nav-link dropdown-toggle d-flex align-items-center justify-content-center user-info" href="#"
                           id="navbarDropdownMenuLink" role="button" data-toggle="dropdown">
                            <img
                                src="https://scontent.fsgn5-11.fna.fbcdn.net/v/t1.6435-9/148200636_528659258096027_8966625421411191162_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=dzMdGh7CUt4AX978A2p&_nc_ht=scontent.fsgn5-11.fna&oh=00_AT_T8cl7XJeQ7xnVIt7NSbBeFkMmZy_8FtaihBZKvwhxjw&oe=62BB3767"
                                class="rounded-circle" height="25" />
                            <p class="user-name">Thienpnse150137</p>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li>
                                <a class="dropdown-item" href="myprofile.html"><img src="https://scontent.fsgn5-11.fna.fbcdn.net/v/t1.6435-9/148200636_528659258096027_8966625421411191162_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=dzMdGh7CUt4AX978A2p&_nc_ht=scontent.fsgn5-11.fna&oh=00_AT_T8cl7XJeQ7xnVIt7NSbBeFkMmZy_8FtaihBZKvwhxjw&oe=62BB3767"
                                                                                    height="25"> My profile</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="login.html"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-1 ml-3">
            <a href="user.html">
                <button type="button"  onclick="location.href = 'MainController?action=LoadProcessRequest'"  class="btn btn-danger">
                    Home
                </button>
            </a>
        </div>
        <div class="container">
            <div class="row">
                <form action="MainController" method="POST">

                    <div class="table table-all container table-user">
                        <table class="col-sm-12">
                            <thead>

                            <th class="text-center">DeviceID</th>
                            <th class="text-center">Name Product</th>
                            <th class="text-center">Brand</th>
                            <th class="text-center">WarehouseName</th>
                            <th class="text-center">Quantity</th>
                            <th class="text-center">BorrowDate</th>
                            <th class="text-center">Action</th>
                            </thead>
                            <c:forEach var="device" items="${sessionScope.CART.getCart()}" varStatus="counter">
                                <tbody>
                                    <tr id="info">
                                        <td class="text-center">${device.value.deviceID}</td>
                                        <td class="text-center">${device.value.deviceName}</td>
                                        <td class="text-center">${device.value.warehouseName}</td>
                                        <td class="text-center">${device.value.brandName}</td>
                                        <td class="text-center"><input type="number" min="1" value="${device.value.quantity}"name="deviceQuantity"/> </td>       
                                        <td class="text-center">
                                            <select name="borrowedDate${counter.count}">
                                                <option value="15">15 days</option>
                                                <option value="30">30 days</option>
                                                <option value="90">90 days</option>
                                            </select>
                                        </td>
                                        <td class="text-center" >
                                            <input type="hidden" name="deviceID" value="${device.value.deviceID}"/>
                                            <button type="submit"  name="action" value="UpdateCart"  class="btn btn-success center2"><i class="fas fa-recycle"></i></button>
                                            <button type="button"  onclick="location.href = 'MainController?action=DeleteItemInCart&deviceID=${device.value.deviceID}'"  class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                        </table>
                    </div>
                    <button class="btn-color button-rent" type="submit" name="action" value="CreateRequest">
                        Borrow
                    </button>

                </form>
            </div>
        </div>
        <footer>
            <footer class="footer-distributed">

                <div class="footer-left">

                    <h3>Company<span>DRS</span></h3>

                    <p class="footer-company-name">Company DRS ?? 2022</p>
                </div>

                <div class="footer-center">

                    <div>
                        <i class="fa fa-map-marker"></i>
                        <p><span>?????i h???c FPT</span> KCN - TP.Th??? ?????c - TP.HCM</p>
                    </div>

                    <div>
                        <i class="fa fa-phone"></i>
                        <p>3463452343</p>
                    </div>

                    <div>
                        <i class="fa fa-envelope"></i>
                        <p><a href="mailto:admin@gmail.com">admin@gmail.com</a></p>
                    </div>

                </div>

                <div class="footer-right">

                    <p class="footer-company-about">
                        <span>About the company</span>
                        The company specializes in providing and leasing IT equipment to businesses and companies in need.
                    </p>

                    <div class="footer-icons">

                        <a href="https://www.facebook.com/"><i class="ti-facebook"></i></a>
                        <a href="https://www.twitter.com/"><i class="ti-twitter"></i></a>
                        <a href="https://www.instagram.com/"><i class="ti-instagram"></i></a>
                        <a href="https://www.github.com/"><i class="ti-github"></i></a>

                    </div>

                </div>

            </footer>
        </footer>
    </body>


</html>
