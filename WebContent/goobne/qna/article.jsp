<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/* post방식일때 한글깨짐 방지 */
	request.setCharacterEncoding("UTF-8");
	
	// http://127.0.0.1:8080/study/까지의 주소를 가지고있음
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>list</title>

<style type="text/css">
a { text-decoration: none; color: black; }
a:visited { text-decoration: none; }
a:hover { text-decoration: none; }
a:focus { text-decoration: none; }
a:hover, a:active { text-decoration: none; }
font{
	font-family: 나눔고딕;

}



table th {

width: 150px;
padding: 10px;
font-weight: bold;
vertical-align: middle;
border-bottom: 1px solid #ccc;
background: #efefef;

}



</style>

</head>
<body>
	<br/>
	<table border="0" align="center" width="1000px" cellspacing="0" cellpadding="0">
		<tr height="50">
			<td style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc;">
				<font size="6" style="padding-left: 10px;"><b>
				<a href="<%=cp %>/goobnemall/qna/list.do">QNA 게시판</a></b></font><br/><br/>
				<font size="2" style="padding-left: 10px;color: #5D5D5D;">의문사항을 남겨주세요. 빠른 시일내에 답변드리겠습니다.</font>
			</td>
		</tr>
		
	</table>
	
	<table border="0" align="center" width="1000px" cellspacing="0" cellpadding="0">
		<tr height="50">
			<th scope="row" align="center" >작성자</th>
			<td style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc;
			">${dto.id }</td>
		</tr>
		<tr>
			<th scope="row" align="center">문의제목</th>
			<td style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc">
			${dto.subject }</td>
		</tr>
		<tr>
			<th scope="row" align="center" valign="middle">문의내용</th>
			<td style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc">
			${dto.content }</td>

		</tr>
		<tr>
			<th scope="row" align="center" valign="middle">등록일</th>
			<td style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc">
			${dto.created }</td>
		</tr>
		
</table>
<table border="0" align="center" width="1000px" cellspacing="0" cellpadding="0">

	<tr align="center">
		<td colspan="2" style="width: 350px; padding: 10px; vertical-align: top; border-bottom: 1px solid #ccc">
		<input type="button" value=" 수정하기 " class="btn2" onclick="javascript:location.href='<%=cp %>/goobnemall/qna/updated.do?qnaNum=${dto.qnaNum }&${params }';"
		style="padding: 10px; color: white; background-color: #f9732e; border: 0px; outline: none;"/>
		<input type="reset" value=" 삭제 " class="btn2" 
		onclick="javascript:location.href='<%=cp %>/goobnemall/qna/deleted_ok.do?qnaNum=${dto.qnaNum }&${params }';"
		style="padding: 10px; color: white; background-color: #f9732e; border: 0px; outline: none;"/>
		<input type="button" value=" 리스트 " class="btn2" 
		onclick="javascript:location.href='<%=cp %>/goobnemall/qna/list.do?${params }';"
		style="padding: 10px; color: white; background-color: #f9732e; border: 0px; outline: none;"/>
		</td>
	</tr>
</table>

</body>
</html>