<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<jsp:include page="../components/headeradmin.jsp">
    <jsp:param
            name="title" value="Create User"/>
</jsp:include>
<form
        class="flex h-fit flex-col max-w-[600px] p-4 w-full gap-y-4"
        method="POST"
        action="createuser.php?page=createuser"
>
    <c:if test="${message != null}">
        <span class="text-yellow-700"> ${message}</span>
    </c:if>
    <h2 class=" text-2xl ">User Registration</h2>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="username"> Username </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="username"
                type="text"
        required/>
    </div>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="email"> Email </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="email"
                type="text"
        required />
    </div>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="userfullname"> Full Names </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="userfullname"
                type="text"
        required />
    </div>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="password"> Password </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="password"
                type="password"
        required/>
    </div>
    <tr>
        <td align="right"><b>Role</b></td>
        <td><select name="userRole" id="userRole" required>
            <option value="">Select Role</option>
            <c:forEach items="${userRoles}" var="userrole"
                       varStatus="userrolestatus">
                <option value="${userrole}">
                    <c:out value="${userrole.getRoleDescription()}"/>
                </option>
            </c:forEach>
        </select></td>
    </tr>
    <button
            class="p-3 mt-1 px-9 rounded-md w-fit bg-violet-800 hover:bg-violet-900 duration-300 uppercase  text-white text-sm"
            type="submit"
    >
        Register User
    </button>
</form>
<%@ include file="../components/footer.jsp" %>