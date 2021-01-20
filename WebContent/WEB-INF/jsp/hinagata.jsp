<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="postform" action="/sotuken/PostServlet" method="POST" enctype="multipart/form-data">
		<class class="form-group"> <label for="exampleInputEmail1">投稿文</label>

		<input type="text" class="form-control" id="testname"name="PostContents"  placeholder="投稿文を入力">
		<input type="hidden" name="accountid"value=<%=request.getAttribute("accountid")%>>
		<input type="text" name="accountname"value=<%=request.getAttribute("getname")%>>
		<input type="file" name="uploadFile" id="uploadFile" value="null"> </class>
		<div class="form-group col-md-4">
			<select id="inputState" class="form-control" name="PostTags">
				<option selected>タグ選択</option>
				<option value="1">台風</option>
				<option value="2">地震</option>
				<option value="3">津波</option>
				<option value="4">洪水</option>
			</select>
		</div>
		<input type="hidden" name="value" value="post">
		<button type="submit" class="btn btn-primary" id="submit">投稿</button>
	</form>
<form action="/sotuken/FollowServlet" method="post">
			<input type="hidden" name="accountid" value=<%=request.getAttribute("accountid")%>>
			<input type="submit" name="followId" value="1">
		</form>
	<div id="form_group">
		<form action="/sotuken/SignUp" method="get"><button type="submit" class="clear-decoration">登録</button></form>
		<form action="/sotuken/TestServlet" method="get"><button type="submit" class="clear-decoration">ログイン</button></form>
		<form action="/sotuken/MyPageServlet" method="get"><input type="hidden" name="account_id" value=<%=request.getAttribute("accountid")%>><button type="submit" class="clear-decoration" name="name" value=<%=request.getAttribute("getname") %>>マイページ</button></form>
	</div>

	<div id="h_item4">
                <div id="searchform">
                    <form class="form-inline my-2 my-lg-0" style="width: 20vw; display: flex;" action="/sotuken/PostSearch"method="post">
                        <input class="form-control mr-sm-2" type="text" name="Search"placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
                 <!-- 投稿ボタン -->
                 <button type="button" data-toggle="modal" data-target="#exampleModal" class="btn btn-primary" id="post_button">投稿</button>
                <!-- 設定ボタン -->
                <div id="setting">
                    <button type="button" class="btn btn-primary" data-toggle="modal"data-target=".bd-example-modal-sm"><i class="fas fa-cog"></i></button>
                </div>
	</div>
<form action="/sotuken/TimelineServlet" method="get">
                                <input type="hidden" value="台風" name="tag">
                                <input type="submit" class="btn btn-primary stretched-link" value="タイムラインへgo">
                            </form>
	<form action="/sotuken/TimelineServlet" method="get">
                                <input type="hidden" value="東日本大震災" name="tag">
                                <input type="submit" class="btn btn-primary stretched-link" value="タイムラインへgo">
	</form>

	 <form action="/sotuken/TimelineServlet" method="get">
                                <input type="hidden" value="津波" name="tag">
                                <input type="submit" class="btn btn-primary stretched-link" value="タイムラインへgo">
                            </form>
                            <form action="/sotuken/TimelineServlet" method="get">
                                <input type="hidden" value="洪水" name="tag">
                                <input type="submit" class="btn btn-primary stretched-link" value="タイムラインへgo">
                            </form>
</body>
</html>