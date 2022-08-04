<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="//cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>

<script type="text/javascript">
	
	function send(f){
		var free_title		= f.free_title.value.trim();
		var free_content	= CKEDITOR.instances.free_content.getData().trim();
		
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
		
		f.action = "insert.do"
		f.submit();
	}

</script>

<style type="text/css">

	#box {
		width: 700px;
		margin: auto;
	}
	
	textarea {
		width: 600px;
		min-height: 200px;
		resize: none;
	}

</style>

</head>
<body>

<form>
	<input type="hidden"  name="u_index"  value="${ user.u_index }">
	<div id="box">
		<table class="table table-striped">
			<tr>
				<th width="15%">제목</th>
				<td><input name="free_title"></td>
			</tr>
				<tr>
					<th>작성자</th>
					<td><input name="u_id" value="${ user.u_id }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="free_org_f"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="free_content"></textarea></td>
					<script>
						// Replace the <textarea id="editor1"> with a CKEditor
						// instance, using default configuration.
						CKEDITOR.replace('free_content',{
								filebrowserUploadUrl : '${pageContext.request.contextPath}/ckeditorImageUpload.do'
						});

						CKEDITOR.on('dialogDefinition', function(ev) {
							var dialogName = ev.data.name;
							var dialogDefinition = ev.data.definition;

							switch (dialogName) {
							case 'image': //Image Properties dialog
								//dialogDefinition.removeContents('info');
								dialogDefinition.removeContents('Link');
								dialogDefinition.removeContents('advanced');
								break;
							}
						});
					</script>
				</tr>
				<tr>
					<td style="text-align: center" colspan="2"><input
						style="text-align: center" type="button" class="btn btn-secondary"
						value="등록하기" onclick="send(this.form);"> 
						<input style="text-align: center" type="button" class="btn btn-dark"
						value="목록보기" onclick="location.href='list.do';"></td>
				</tr>
			</table>
	</div>
</form>

</body>
</html>