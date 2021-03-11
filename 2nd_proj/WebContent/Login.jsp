<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap');

body {
  background: #f5f6f7;
  font-family: 'Open Sans', sans-serif;
}

.login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: #28d;
}

.login-header {
  background: #28d;
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
}

.login-container {
  background: #ebebeb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}

.login input {
  box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  padding: 16px;
  outline: 0;
  font-family: inherit;
  font-size: 0.95em;
}

.login input[type="email"],
.login input[type="password"] {
  background: #fff;
  border-color: #bbb;
  color: #555;
}

/* Text fields' focus effect */
.login input[type="text"]:focus,
.login input[type="password"]:focus {
  border-color: #888;
}

.login input[type="submit"] {
  background: #28d;
  border-color: transparent;
  color: #fff;
  cursor: pointer;
}
.login input[type="button"] {
  background: #28d;
  border-color: transparent;
  color: #fff;
  cursor: pointer;
  margin-top : 15px;
}

.login input[type="submit"]:hover {
  background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
  border-color: #05a;
}
.login input[type="button"]:hover {
background: #17c;
}
.login input[type="button"]:focus {
 border-color: #05a;
}
</style>

</head>
<body>

   <form action="LoginService" method="post" style="margin-top : 200px">
      <div class="login">
         <div class="login-triangle"></div>

         <h2 class="login-header">Log in</h2>

         <form class="login-container">
            <p>
               <input type="text" id="id" placeholder="���̵�" name="id">
            </p>
            <p>
               <input type="password" id="pw" placeholder="��й�ȣ" name="pw">
            </p>
            <p>
               <input type="submit" value="�α���">
               <a href="home.jsp" style="text-decoration : none"><input type="button" value="���ư���"></a>
            </p>
         </form>
      </div>
   </form>
</body>
</html>