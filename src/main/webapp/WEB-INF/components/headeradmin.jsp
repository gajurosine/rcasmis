
<%@include file="mainheader.jsp"%>
<div id="flex  w-full">
    <%@ include file="../sidebar.jsp" %>
    <div class="flex flex-col w-full md:pl-[250px] min-h-screen">
        <div class="flex bg-white w-full justify-between p-4 border-b-[1px] sticky top-0">
            <form action="${pageContext.request.contextPath}/search.php" class="flex w-full max-w-[400px] py-2 px-3 border-2 rounded-md">
                <i class='bx bx-search text-2xl'></i>
                <input type="text" class="w-full outline-none px-2" placeholder="Search...">
                <input type="submit" hidden="hidden" color="red" />
            </form>
            <div class="flex gap-x-4 items-center">
                <i class='bx bxs-bell text-2xl'></i>
                <div class="flex gap-x-2 items-center">
                    <i class="bx bxs-user-circle text-4xl"></i>
                    <span class="flex items-center cursor-pointer">
                        <c:out value="${authenticatedUser.username}"/>
                        <i class='bx bx-chevron-down text-2xl'></i>
                    </span>
                </div>
            </div>
        </div>
        <div class="flex flex-col w-full h-full p-3">
