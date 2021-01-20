<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/sotuken/MainServlet" method="post">
			<div class="form-item">
				<label for="name"></label> <input type="text" name="name"
					required="required" placeholder="ユーザ名"></input>
			</div>
			<div class="form-item">
				<label for="password"></label> <input type="password"
					name="password" required="required" placeholder="パスワード"></input>
			</div>
			<p id="misstext">　</p>
			<div class="button-panel">
			<input type="hidden" name="judge" value="log">
				<input type="submit" class="button" title="Sign In" value="サインイン"></input>
			</div>
		</form>
</body>
</html>