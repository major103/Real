<%@page import="java.util.ArrayList"%>
<%@page import="org.jsoup.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%
	//자동차뉴스 항목용 document
    Document doc = Jsoup.connect("https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=103&sid2=239").get();
	//url용 document
	Connection conn = Jsoup.connect("https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=103&sid2=239");	
	Document document = conn.get();
    Elements element = doc.body().getElementsByClass("list_body newsflash_body");
    // div속성 중 list_bodtnewsflash_body 속성의 li밑 dl밑 dt의 모든 태그를 가져온다.   
    Elements url = document.getElementsByClass("photo");
    //System.out.println(document.getElementsByClass("photo")); 
    
    
	//System.out.println(doc.data()); //모든 데이터 확인용
    //System.out.println(doc.body()); //Body 태그 안의 데이터 보기용


	String title = element.select("dt").text();
	String content = element.select("dd").text();
	//System.out.println(element.select("dt").text());
	//System.out.println(element.select("dd").text());
	
	
                
    int i=0;
    ArrayList news_img = new ArrayList();
    for (Element e : url.select("img")) {
		news_img.add(i,e.attr("abs:src"));
		i++;
	}
    
    i=0;
    ArrayList news_title = new ArrayList();
    for(Element e : element.select("dt").not(".photo")){
		news_title.add(i, e.text());
		i++;
    }
    
    i=0;
    ArrayList news_content = new ArrayList();
    for(Element e : element.select("dd:not(.align_center)")){
		news_content.add(i, e.text());
		i++;
 	}
    
    i=0;
    ArrayList news_url = new ArrayList();
	for (Element e : url.select("a")) {
		news_url.add(i,e.attr("abs:href"));
		i++;
	}
	//System.out.println(news_title.get(1));
    
    
    
    //System.out.println(news_title.get(1));
    
//     for(Element e : element.select("dt")){
//     //구성할 테이블 td 속성 요소값들을 반복해서 출력(td속성 갯수만큼), :not을 통해 필요없는 요소는 제외
// 		System.out.println(e.text());
// 		System.out.println("|");	//복잡해져 구분함
// 		i++;
// 		if(i==2){
// 			out.println("<br>");
// 			i=0;
// 		}

//      }
//     for(Element e : element.select("dd:not(.align_center)")){
//         //구성할 테이블 td 속성 요소값들을 반복해서 출력(td속성 갯수만큼), :not을 통해 필요없는 요소는 제외
// 		System.out.println(e.text());
// 		System.out.println("|");	//복잡해져 구분함
// 		i++;
// 		if(i==1){
// 			out.println("<br>");
// 			i=0;
//     	}

// 	}
    
//     for (Element e : url.select("a")) {
//         System.out.println(e.attr("abs:href"));
//         System.out.println("|");	//복잡해져 구분함
// 		i++;
// 		if(i==1){
// 			out.println("<br>");
// 			i=0;
//     	}
//     }
    
//     for (Element e : url.select("img")) {
//         System.out.println(e.attr("abs:src"));
//         System.out.println("|");	//복잡해져 구분함
// 		i++;
// 		if(i==1){
// 			out.println("<br>");
// 			i=0;
//     	}
//     }

		 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table align="center" width="600" border="1"
				 style="border-collapse:collapse;font-size:8pt"
				 bordercolor="navy" cellpadding="4" cellspacing="0">
			<tr bgcolor="#dedede">
			    <th>이미지</th>
				<th>제목</th>
				<th>내용</th>
				<th>주소</th>
			</tr>
					<%
						
						for(i=0; i<11; i++){
							out.print("<tr>");
							out.print("<td>");
							out.print("<img src='");
							out.print(news_img.get(i));
							out.print("'>");
							out.print("</td>");
							
							out.print("<td>");
							out.print(news_title.get(i));
							out.print("</td>");
							
							out.print("<td>");
							out.print(news_content.get(i));
							out.print("</td>");
							
							out.print("<td>");
							out.print(news_url.get(i));
							out.print("</td>");
							out.print("</tr>");
						}
					%>
<%-- 			</c:forEach> --%>
			
		</table>
	</div>
</body>
</html>