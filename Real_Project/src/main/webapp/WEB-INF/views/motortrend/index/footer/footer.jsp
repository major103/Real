<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- footer:s -->
<div class="footer">
			<footer>
				<div class="footer_logo">
					<a href="/index.html"><img src="../images/main/footer/logo.png"
						alt="KAYA MEDIA CORPORATION" /></a>
				</div>
				<div class="company_info">
					(주)이은구바보<u class="br_1"></u><u class="br_2"></u><u class="br_3"></u><u
						class="br_4"></u> 발행인 | 서현철 &nbsp; 편집인 | 최지영<u class="br_1"></u><u
						class="br_2"></u><u class="br_4"></u> 등록일: 2018년 10월 5일 &nbsp;<u
						class="br_3"></u><u class="br_4"></u> 주소: 서울특별시 종로구 창경궁로 120
					종로플레이스 12층 03130 &nbsp; 연락처: 02-317-4800<u class="br_1"></u><u
						class="br_4"></u> 발행일: 2018년 10월 1일 &nbsp;<u class="br_2"></u><u
						class="br_3"></u><u class="br_4"></u> 사업자등록번호 120-81-28164 |
					부가통신사업 신고 제 2-01-14-0017호 &nbsp;<u class="br_3"></u><u class="br_4"></u>
					통신판매신고 제 2009-서울강남-01075호 &nbsp; <a
						href="http://motortrendkorea.com/sub/code_of_ethics.html"><br>
						<span style="color: #FFFFFF; font-weight: bold;">윤리강령</span></a> | <a
						href="https://www.imagazinekorea.com/etc/personalinformation.asp"
						target="_blank"><span
						style="color: #FFFFFF; font-weight: bold;">개인정보 처리 방침</span></a>
					<p>Copyright Kayamedia Corp. All rights reserved.</p>
				</div>
				<!--company_info-->
			</footer>
		</div>
		<!--footer-->
			<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag('js', new Date());
			gtag('config', 'UA-126955079-1');
		</script>

		<script language="javascript">
			//배너 링크
			function clickCtrl(area, no) {

				if (area == "TOP") {
					$.ajax({
						type : "GET",
						url : "/include/BannerClick_Ajax.php?no=" + no,
						dataType : "text",
						success : function(msg) {
						}
					});

				} else if (area == "MOBILE") {
					$.ajax({
						type : "GET",
						url : "/include/BannerClick_Ajax.php?no=" + no,
						dataType : "text",
						success : function(msg) {
						}
					});

				}
			}
		</script>
		
		
</body>
</html>