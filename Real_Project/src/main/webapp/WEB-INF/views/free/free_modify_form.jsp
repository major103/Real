<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function send(f){
		var free_title		= f.free_title.value();
		var free_content	= f.free_content.value();
		
		if(free_title==''){
			
			alert('제목을 입력하세요');
			f.free_title.value='';
			f.free_title.focus();
			return;
		}
		
		if(free_content==''){
			
			alert('내용을 입력하세요');
			f.free_content.value='';
			f.free_content.focus();
			return;
		}
		
		f.action = "modify.do"
		f.submit();
	}

</script>

</head>
<body>

</body>
</html>