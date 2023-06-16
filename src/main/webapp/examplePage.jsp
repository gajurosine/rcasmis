<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Login page</title>
</head>
<body>
    <form action="login.php" method="post">
        <table>
          <tr class="color-red">
              <td align="right" class="font-weight"><b>Username</b></td>
              <td align="left"><input type="text" size="25" maxlength="50" name="username" id="username" /></td>
          </tr>

           <tr class="bg-light-black">
               <td align="right" class="bg-sky-600 hover:bg-sky-700 px-5 py-3 text-white rounded-lg">Password</td>
               <td align="left"><input type="password" size="25" maxlength="50" name="password" id="password" /></td>
           </tr>

          <tr style="background-color: lightblue;">
              <td align="right">&nbsp;</td>
              <td align="left"><input class="" type="submit" value="Login" class="bg-sky-600 hover:bg-sky-700 px-5 py-3 text-white rounded-lg" /></td>
          </tr>

        </table>
    </form>
</body>
</html>
