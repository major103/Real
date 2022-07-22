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
    Document doc = Jsoup.connect("https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=103&sid2=239").get();
	Connection conn = Jsoup.connect("https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=103&sid2=239");	
	Document document = conn.get();
    Elements element = doc.body().getElementsByClass("list_body newsflash_body");
    Elements url = document.getElementsByClass("photo");


	String title = element.select("dt").text();
	String content = element.select("dd").text();
	
	
                
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

		 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/news.css">
</head>
<body>
	<div class="section">
		<div class="title">최신 뉴스</div>
		<div class="list"></div>
			<table id="main">
				<tr bgcolor="#dedede">
				    <th>이미지</th>
					<th>제목</th>
					<th>내용</th>
				</tr>
						
			
			</table>
			<div>
				<ul class="headline">
					<%
						for(i=0; i<11; i++){
							out.print("<li>");
							out.print("<dl>");
							out.print("<dt class='photo'>");
							out.print("<a href='");
							out.print(news_url.get(i));
							out.print("'>");
							out.print("<img src='");
							out.print(news_img.get(i));
							out.print("' style='width= 120; height= 80' >");
							out.print("</td>");
							out.print("</a>");
													
							
							out.print("<dt>");
							out.print("<a href='");
							out.print(news_url.get(i));
							out.print("'>");
							out.print(news_title.get(i));
							out.print("</a><br>");
							
							out.print("<dd>");
							out.print("<span class='lede'>");
							out.print(news_content.get(i));
							out.print("</span><br>");
							out.print("<span class='write'>");
							out.print("광광전자 ");
							out.print("</span><br>");
							out.print("<span class='news_date'>");
							out.print(" 2022년 10월 22일");
							out.print("</span>");
							out.print("</dd>");
							
							out.print("</dt>");
							out.print("</dl>");
							out.print("</li>");
						}
					%>
				</ul>
			</div>
	</div>
</body>
</html>