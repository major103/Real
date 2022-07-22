<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- css -->
	
	<!-- jQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/jquery-1.8.2.min.js"></script>
	<!-- 스크롤 제어 -->
<script type="text/javascript">
	function scrollX() {
		var left = "-"+$("#scrollX").scrollLeft();
		$('#compRightHead').css("left",left+"px");
		$('#compRightBody').css("left",left+"px");
		$('#compRightFoot').css("left",left+"px");
	}
	
	var autoFocus = true;
	$(window).scroll(function (event) {
		var scrollY = $(this).scrollTop();
		
// 		if(autoFocus){
// 			$.each($("#compRightBody tr[name='tabSel']").get().reverse(), function(index, item){
// 				var objectTop = $(item).offset().top;
// 				if(scrollY + 262 > objectTop) {
// 					var target = $(item).attr('id');
// 					$("#tabComp li button").removeClass("on");
// 					$("#tabComp li button[tab='"+target+"']").addClass("on");
// 					return false;
// 				}
// 			});
// 		}
		
		
		var cHeadH = $(".compHead").height()+2; // border-bottom 2px;
		//var cTopH = $(".compTop").height()+2; // border-bottom 2px;
		
		// 상단 고정
		if(scrollY>cHeadH){
			//$(".compTop").addClass("fixed");
			$(".compBox").addClass("fixed");
		}else{
			//$(".compTop").removeClass("fixed");
			$(".compBox").removeClass("fixed");
		}
		
		var winH = $(window).height();
		var cBoxH = $(".compBox").height()+2; // border-bottom 2px;
		var cFootH = $(".tableComp.left.foot").height()+3; // border-top 3px;
		var txt= "";
		
		if(scrollY>270 + cBoxH + cFootH - winH ){	// padding-top 206px; 20 보정...
			$(".tableComp.foot").removeClass("fixed");
			$(".compFoot").removeClass("fixed");
		}else{
			$(".tableComp.foot").addClass("fixed");
			$(".compFoot").addClass("fixed");
		}
	});
	
</script>


</head>
<body>
<div>
	<div class="compBox">
		<div class="compLeft">
			<table class="tableComp left head">
				<tbody>
					<tr>
						<th>모델</th>
					</tr>
				</tbody>
			</table>
			
			<table class="tableComp left body">
				<tbody>
					<tr>
						<th id="tap1">주요 제원</th>
					</tr>
					<tr>
						<th id="unit1">크기</th>
					</tr>
					<tr>
						<th id="unit2">종류</th>
					</tr>
					<tr>
						<th id="unit3">브랜드</th>
					</tr>
					<tr>
						<th id="unit4">가격</th>
					</tr>
					<tr>
						<th id="unit5">연료</th>
					</tr>
					<tr>
						<th id="unit6">연비</th>
					</tr>
					<tr>
						<th id="tab2">기타 제원</th>
					</tr>
					<tr>
						<th id="unit7">엔진</th>
					</tr>
					<tr>
						<th id="unit8">구동</th>
					</tr>
					<tr>
						<th id="unit9">배기</th>
					</tr>
					<tr>
						<th id="unit10">토크</th>
					</tr>
					<tr>
						<th id="unit11">출력</th>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="compRight">	
			<table class="tableComp right head">
				<tr>
					<td id="Photo1">
						<div class="buttonAdd">
							<button type="button" class="button blue">추가하기</button>
						</div>
					</td>
				</tr>
				<tr>
					<td id="Photo2">
						<div class="buttonAdd">
						</div>
					</td>
				</tr>
			</table>
			
			<table class="tableComp right body">
				<tr id="bar1">
					<td colspan="2"></td>
				</tr>
				<tr id="spec1">
					<td id="spec1_1"></td>
					<td id="spec1_2"></td>
				</tr>
				<tr id="spec2">
					<td id="spec2_1"></td>
					<td id="spec2_2"></td>
				</tr>
				<tr id="spec3">
					<td id="spec3_1"></td>
					<td id="spec3_2"></td>
				</tr>
				<tr id="spec4">
					<td id="spec4_1"></td>
					<td id="spec4_2"></td>
				</tr>
				<tr id="spec5">
					<td id="spec5_1"></td>
					<td id="spec5_2"></td>
				</tr>
				<tr id="spec6">
					<td id="spec6_1"></td>
					<td id="spec6_2"></td>
				</tr>
				<tr id="bar2">
					<td colspan="2"></td>
				</tr>
				<tr id="spec7">
					<td id="spec7_1"></td>
					<td id="spec7_2"></td>
				</tr>
				<tr id="spec8">
					<td id="spec8_1"></td>
					<td id="spec8_2"></td>
				</tr>
				<tr id="spec9">
					<td id="spec9_1"></td>
					<td id="spec9_2"></td>
				</tr>
				<tr id="spec10">
					<td id="spec10_1"></td>
					<td id="spec10_2"></td>
				</tr>
				<tr id="spec11">
					<td id="spec11_1"></td>
					<td id="spec11_2"></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="compScrollX">
		<div class="inner" onscroll="scrollX()" id="scrollX">
			<table class="tableScrollX" cellspacing="0" style="width: 900px;">
				<tbody>
					<tr height="0">
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>