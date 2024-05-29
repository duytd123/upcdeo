<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <div id="menu-bar" class="fas fa-bars"></div>
    <a href="#" class="logo"><span>Welcome</span>Stay<span>Ease</span>Booking</a>
    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#book">Book</a>
        <a href="aboutus">About Us</a>
        <a href="#packages">Room</a>
        <a href="#contact">Contact</a>
        <c:if test="${sessionScope.acc != null}">
            <c:choose>
                <c:when test="${acc.role.id == 0}">
                    <a href="DashboardServlet">Dashboard</a>
                </c:when>
                <c:when test="${acc.role.id == 1}">
                    <a href="DashboardHostServlet">Dashboard</a>
                </c:when>
                <c:otherwise>
                    <!-- Additional roles can be added here -->
                </c:otherwise>
            </c:choose>
        </c:if>
    </nav>
    <div class="icons">
        <i class="fas fa-search" id="search-btn"></i>
        <c:if test="${sessionScope.acc == null}">
            <a href="login.jsp" class="icon-link">
                <i class="fas fa-user" id="user-btn"></i>
            </a>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <span class="user-fullname">${acc.fullname}</span>
            <a href="LogoutServlet" class="icon-link">
                <i class="fas fa-sign-out-alt" id="logout-btn"></i> 
            </a>
            <a href="user.jsp" class="icon-link">
                <i class="fas fa-user-circle" id="profile-btn"></i> 
            </a>
        </c:if>
    </div>
</header>
