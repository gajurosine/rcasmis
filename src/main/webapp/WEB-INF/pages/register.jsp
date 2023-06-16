<%--
  Created by IntelliJ IDEA.
  User: carim
  Date: 4/28/2023
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="../components/mainheader.jsp">
    <jsp:param value="Register" name="title"/>
</jsp:include>
<form
        class="flex rounded-md border-2 h-fit flex-col mx-auto p-4 w-full mt-28 gap-y-4 max-w-[450px]"
        method="POST"
        action="register.php"
>
    <c:if test="${message != null}">
        <fieldset>
            <h3 class="w-full flex items-center justify-center">
                <span class="text-yellow-700 text-center" > ${message}</span>
            </h3>
        </fieldset>
    </c:if>
    <h2 class=" text-2xl mx-auto">User Registration</h2>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="username"> Username </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="username"
                type="text"
        />
    </div>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="email"> Email </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="email"
                type="text"
        />
    </div>
    <div class="flex flex-col gap-y-1">
        <label class=" px-2" for="userfullname"> Full Name </label>
        <input
                class="p-2 w-full border-blue-700/50 duration-300 focus:border-blue-700 rounded-md outline-none border-2"
                name="userfullname"
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
    <button
            class="p-3 mt-1 px-9 rounded-md hover:bg-blue-700/90 active:bg-blue-700/50 duration-300 uppercase bg-blue-700 text-white text-sm"
            type="submit"
    >
        Register User
    </button>
    <div class="flex w-full items-center justify-between">
        <p>Already have an account</p>
        <a class="mt-6 text-blue-700" href="login.php">Login</a>
    </div>
</form>
<%@ include file="../components/footer.jsp" %>
</body>
</html>
