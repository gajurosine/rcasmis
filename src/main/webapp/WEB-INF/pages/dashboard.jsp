<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../components/headeradmin.jsp">
    <jsp:param value="Home" name="title"/>
</jsp:include>

<div class="flex flex-col w-full gap-5  background-color: yellow;">
    <h1 class="text-xl font-semibold gap-4 flex items-center">
        <i class="bx bx-image text-3xl text-violet-800"></i>
        Some Pictures From Rwanda Academy</h1>
    <div class="grid w-full gap-4 xl:grid-cols-4 md:grid-cols-3 sm:grid-cols-2">
        <img src="https://www.rca.ac.rw/images/Amb-Israel-Ron-Adam.JPG" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="https://www.rca.ac.rw/images/05.jpg" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="https://www.rca.ac.rw/images/09.jpg" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="https://www.rca.ac.rw/images/visit-to-DMM-Hehe2.jpg" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="images/girls.JPG" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="images/girls3.JPG" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="images/im3.JPG" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
        <img src="images/im4.JPG" class="w-full h-full object-cover rounded-md aspect-[3/2]"/>
    </div>
    <h1 class="text-xl font-semibold gap-4 flex items-center" >
        <i class="bx bx-compass  text-3xl text-violet-800"></i>
        <h1 class="text-lg font-semibold" style="color: red;">View Courses</h1>


    <div class="grid w-full gap-4 xl:grid-cols-6 md:grid-cols-5 sm:grid-cols-4">
        <a href="listcourse.php" class="flex flex-col gap-2 rounded-md duration-300 hover-text-white shadow-md border-[1px] hover:scale-110 hover:bg-slate-200 p-4 items-center">
            <i class="bx bx-book-open text-3xl text-violet-800"></i>
            <h1 class="text-lg font-semibold" style="color: red;">View Courses</h1>

        </a>
        <a href="listuser.php" class="flex flex-col gap-2 rounded-md duration-300 hover-text-white shadow-md border-[1px] hover:scale-110 hover:bg-slate-200 p-4 items-center">
            <i class="bx bx-user text-3xl text-violet-800"></i>
         <h1 class="text-lg font-semibold" style="color: red;">View Courses</h1>

        </a>
    </div>
</div>
<%@ include file="../components/footer.jsp" %>