<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="../components/mainheader.jsp">
	<jsp:param value="Login page" name="title" />
</jsp:include>
<div class="h-screen flex flex-col items-center justify-center">
	<img src="images/rcalogo.png" />
<form
		class="flex rounded-md border-2 h-fit flex-col mx-auto p-4 w-full gap-y-4 max-w-[450px]"
		method="POST"
		action="login.php"
>
	<c:if test="${error != null}">
		<p class="text-center text-red-500 text-sm">${error}</p>
	</c:if>
	<h2 class=" text-2xl mx-auto">Get into your account</h2>
	<div class="flex flex-col gap-y-1">
		<label class=" px-2" for="username"> Username </label>
		<input
				class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
				name="username"
				type="text"
		/>
	</div>
	<div class="flex flex-col gap-y-1">
		<label class=" px-2" for="password"> Password </label>
		<input
				class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
				name="password"
				type="password"
		/>
	</div>
<%--	<p class={`${form?.success ? 'success' : 'fail'} text-center text-xs`}>{form?.message ?? ''}</p>--%>
	<button
			class="p-3 mt-1 px-9 rounded-md hover:bg-violet-800/90 active:bg-violet-800/50 duration-300 uppercase bg-violet-900 text-white text-sm"
			type="submit"
	>
		Login
	</button>
	<div class="flex w-full items-center justify-between">
		<p>Don't have an account</p>
		<a class="mt-6 text-violet-800" href="register.php">Register</a>
	</div>
</form>
</div>
</div>
<%--<%@ include file="footer.jsp"%>--%>