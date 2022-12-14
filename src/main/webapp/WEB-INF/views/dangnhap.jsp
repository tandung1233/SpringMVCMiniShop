<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body id="body-login">
	<!-- 	<form method="post">
		<input type="text" name="tendangnhap">
		<input type="password" name="matkhau">
		<input type="submit">
	</form> -->

	<div id="body-flex-login">
		<div id="container-login">

			<div id="container-login-left">
				<div id="header-left" class="header-login">
					<span id="text-logo">Welcome</span><br /> <span
						id="hint-text-logo">Hãy tạo nên phong cách của bạn cùng
						MiniShop</span>
				</div>
				<div id="header-bottom-left">
					<p>
						<img alt="icon_oval"
							src='<c:url value="/resources/image/icon_oval.png" />'><span>Luôn
							cập nhật xu hướng thời trang mới nhất</span>
					</p>
					<p>
						<img alt="icon_oval"
							src='<c:url value="/resources/image/icon_oval.png" />'><span>Giarm
							hơn 50% tất cả các mặt hàng giành cho khách VIP</span>
					</p>
					<p>
						<img alt="icon_oval"
							src='<c:url value="/resources/image/icon_oval.png" />'><span>Tận
							tình tư vấn để tạo phong cách của bạn</span>
					</p>
				</div>
			</div>

			<div id="container-login-rigth">
				<div id="header-top-right" class="header-login">
					<span class="active" id="dangnhap">Đăng nhập</span> / <span
						id="dangky">Đăng ký</span>
				</div>

				<div id="container-center-login-right">
					<div class="container-login-form" id="container-center-login-right">
						<input id="email" class="meterial-textinput input-icon-email"
							type="text" name="email" placeholder="Email"><br /> <input
							id="matkhau" class="meterial-textinput input-icon-password"
							type="password" name="matkhau" placeholder="Password"> <br />
						<input id="btnDangNhap" type="submit"
							class="meterial-primary-button" value="Đăng nhập" /> <br />
					</div>
					<div class="container-signup-form"
						id="container-center-login-right">
						<form action="/dangnhap/" method="post">
							<input id="email" class="meterial-textinput input-icon-email"
								type="text" name="email" placeholder="Email"><br /> <input
								id="matkhau" class="meterial-textinput input-icon-password"
								type="password" name="matkhau" placeholder="Mật khẩu">
							<br /> <input id="nhaplaimatkhau"
								class="meterial-textinput input-icon-password" type="password"
								name="nhaplaimatkhau" placeholder="Nhập lại mật khẩu">
							<br /> <input id="btnDangNhap" type="submit"
								class="meterial-primary-button" value="ĐĂNG KÝ" /> <br />
						</form>
					</div>

					<span id="ketqua"></span> <span>${kiemtradangnhap}</span> <span>${email}</span>
				</div>

				<div id="container-social-login">
					<img alt="icon_facebook"
						src='<c:url value="/resources/image/icon_facebook.png" />'>
					<img alt="icon_google"
						src='<c:url value="/resources/image/icon_google.png" />'>
				</div>



			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" /> 

</body>

</html>