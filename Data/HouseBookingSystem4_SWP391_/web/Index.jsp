<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>StayEaseBooking</title>
        <link rel="icon" href="Images/logo1.png"/>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="StyleSheet.css">      
    </head>
    <style>
        .user-fullname {
            font-weight: bold;
            color: #fd7e14;
            margin-left: 20px;
            font-size: 1.6em;

        }
    </style>
    <body>

        <!-- Include header -->
        <%@ include file="header.jsp" %>

        <!-- home section starts  -->

        <section class="home" id="home">
            <div class="content">
                <h3>Adventure is worthwhile</h3>
                <p>Discover new places with us, adventure awaits</p>
                <a href="#" class="btn">Discover more</a>
            </div>

            <div class="video-container">
                <video width="350" height="250" id="video-slider" loop autoplay muted>
                    <source src="Images/vid-1.mp4" type="video/mp4">
                </video>
            </div>
        </section>


        <!-- home section ends -->
        <%@ include file="bookNowSection.jsp" %>
        <!-- book section starts  -->

        <section class="book" id="book">
            <h1 class="heading">
                <span>S</span>
                <span>A</span>
                <span>L</span>
                <span>E</span>
                <span>S</span>
            </h1>

            <div class="row">
                <div class="image">
                    <img src="Images/vn.jpg" alt=""/>
                </div>
                <form action="search-house-main" method="get">
                    <div class="inputBox">
                        <input type="text" name="whereTo" placeholder="Place name">
                    </div>
                    <div class="inputBox">
                        <input type="number" name="guests" placeholder="Number of guests">
                    </div>
                    <div class="inputBox">
                        <h3>Arrivals</h3>
                        <input name="arrivals" type="date">
                    </div>
                    <div class="inputBox">
                        <h3>Leaving</h3>
                        <input name="leaving" type="date">
                    </div>
                    <input type="submit" class="btn" value="Book now">
                </form>
            </div>
        </section>

        <!-- book section ends -->

        <!-- gallery section starts  -->

        <section class="gallery" id="gallery">
            <h1 class="heading">
                <span>H</span>
                <span>O</span>
                <span>T</span
            </h1>

            <div class="box-container">
                <div class="box">
                    <img src="Images/g-1.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="Images/g-2.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
                <!-- Add more gallery boxes as needed -->
                <div class="box">
                    <img src="Images/g-2.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
            </div>
        </section>


        <section class="gallery" id="gallery">

            <div class="box-container">
                <div class="box">
                    <img src="Images/g-1.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="Images/g-2.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
                <!-- Add more gallery boxes as needed -->
                <div class="box">
                    <img src="Images/g-2.jpg" alt="">
                    <div class="content">
                        <h3>About more</h3>
                        <p>...</p>
                        <a href="#" class="btn">See more</a>
                    </div>
                </div>
            </div>
        </section>


        <!-- gallery section ends -->

        <!-- contact section starts  -->

        <section class="contact" id="contact">
            <h1 class="heading">
                <span>C</span>
                <span>O</span>
                <span>N</span>
                <span>T</span>
                <span>A</span>
                <span>C</span>
                <span>T</span>
            </h1>

            <div class="row">
                <div class="image">
                    <img src="Images/travel.jpg" alt=""/>
                </div>
                <form name="submit-to-google-sheet">
                    <div class="inputBox">
                        <% String username = (String)session.getAttribute("username"); %>
                        <input type="text" name="Name" placeholder="Name" value="<%= username != null ? username : "" %>">
                        <% String email = (String)session.getAttribute("email"); %>
                        <input type="email" name="Email" placeholder="Email" value="<%= email != null ? email : "" %>">
                    </div>
                    <div class="inputBox">
                        <input type="number" name="Number" placeholder="Number">
                        <input type="text" name="Subject" placeholder="Subject">
                    </div>
                    <textarea name="Message" placeholder="Message" cols="30" rows="10"></textarea>
                    <input type="submit" class="btn" value="Send message">

                </form>
            </div>
        </section>

        <!-- contact section ends -->

        <!-- brand section starts  -->

        <section class="brand-container">
            <div class="swiper-container brand-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="Images/brand.png" alt=""></div>
                    <div class="swiper-slide"><img src="Images/2.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="Images/3.jpg" alt=""></div>
                    <!-- Add more swiper slides as needed -->
                </div>
            </div>
        </section>

        <!-- brand section ends -->

        <!-- Include footer -->
        <%@ include file="footer.jsp" %>

        <script>
            const scriptURL = "https://script.google.com/macros/s/AKfycbzmx3GEyLiss69xqkLRzbnbatnyo3kYTUCatb3PQUEGjxJbL3HubmFjoPFAYxoWXylIZg/exec";
            const form = document.forms["submit-to-google-sheet"];
            form.addEventListener("submit", (e) => {
                e.preventDefault();
                fetch(scriptURL, {method: "POST", body: new FormData(form)})
                        .then((response) => console.log("Success!", response))
                        .catch((error) => console.error("Error!", error.message));
            });
        </script>

        <!-- jquery cdn link  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="JavaScript.js"></script>

    </body>
</html>
