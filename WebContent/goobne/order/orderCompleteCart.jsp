<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	String cp=request.getContextPath();
	
	/* String[] qtyArrayString=request.getParameterValues("qtyArray");
	int[] qtyArray=new int[qtyArrayString.length];
	
	for(int i=0;i<qtyArrayString.length;i++){
		qtyArray[i]=Integer.parseInt(qtyArrayString[i]);
	} */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="0" width="1000" align="center" cellspacing="0" >
			<tr height="50">
				<td width="25%" align="center">
					<font size="6" face="궁서"><b>대단히 고맙소..</b></font>
				</td>
			</tr>
			<tr height="50">
				<td width="25%" align="left">
					<font size="5"><b>주문 정보 결과</b></font>
				</td>
			</tr>
		</table>
		
		<table border="0" width="1000" align="center" cellspacing="0">
			<tr height="2">
				<td colspan="5" bgcolor="#BDBDBD"></td>
			</tr>
			
			<tr height="50">
				<td width="15%" align="right" bgcolor="#EAEAEA" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<span class="icon required"></span>
					<font size="2"><b>입금자명&nbsp;</b></font>
				</td>
				<td colspan="4" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					&nbsp;&nbsp;${payerName }
				</td>
			</tr>
			
			<tr height="50">
				<td width="15%" align="right" bgcolor="#EAEAEA" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<span class="icon required"></span>
					<font size="2"><b>입금계좌번호&nbsp;</b></font>
				</td>
				<td colspan="4" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<font size="2">&nbsp;&nbsp;${bankName }</font>
				</td>
			</tr>
			
			<tr height="50">
				<td width="15%" align="right" bgcolor="#EAEAEA" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<span class="icon required"></span>
					<font size="2"><b>총 금액&nbsp;</b></font>
				</td>
				<td colspan="4" style="border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<font size="2">&nbsp;&nbsp;${totalCost }원</font>
				</td>
			</tr>
		</table>
		
		<table border="0" width="1000" align="center" cellspacing="0"  style="margin-top: 10px;">
			<tr height="50">
				<td width="25%" align="left">
					<font size="5"><b>주문 상품</b></font>
				</td>
			</tr>
		</table>
		
		<table border="0" width="1000" align="center" cellspacing="0">
			<c:forEach var="dto" items="${listsProductDTO }" varStatus="status">
			<c:set var="index" value="${status.index }"/>
			<tr height="50">
				<td rowspan="2" width="15%" align="center" style="border-top: solid;border-top-color: #BDBDBD;border-top-width: 1px;border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<img alt="no found" src="${dto.pic1 }" style="height: 100px;width: 100px;">
				</td>
				<td width="70%" align="left" style="border-top: solid;border-top-color: #BDBDBD;border-top-width: 1px;border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;">
					<font size="2">&nbsp;&nbsp;${dto.productName }</font>
				</td>
				<td rowspan="2"  width="15%" align="center" style="border-top: solid;border-top-color: #BDBDBD;border-top-width: 1px;border-bottom: solid;border-bottom-color: #BDBDBD;border-bottom-width: 1px;border-left: solid;border-left-color: #BDBDBD;border-left-width: 1px;">
					<font size="2"><b>${dto.price*listsProductQty.get(index) }원</b></font>
				</td>
			</tr>
			<tr height="50">
				<td width="70%" align="left" style="border-bottom: solid;border-bottom-color: #BDBDBD; border-bottom-width: 1px;">
					<font size="2">&nbsp;&nbsp;1개 가격 :&nbsp;&nbsp;&nbsp;${dto.price }원&nbsp;&nbsp;&nbsp;/
					&nbsp;&nbsp;&nbsp;수량 : &nbsp;&nbsp;&nbsp;${listsProductQty.get(index) }개&nbsp;&nbsp;&nbsp;</font>
				</td>
			</tr>
			<tr height="2">
				<td colspan="5" bgcolor="#BDBDBD"></td>
			</tr>
			</c:forEach>
		</table>
		
		<table border="0" width="1000" align="center" cellspacing="0">
			<tr>
				<td colspan="3" align="center">
					<input type="button" value="  돌아가기  " align="top" style="height: 50pt;width: 100pt;color: white;font-size: 18pt;background-color: #FF5E00;border: none;margin-top: 14px;" onclick="javascript:location.href='<%=cp%>/goobnemall/index.do';">
				</td>
			</tr>
		</table>
		
		
</body>
</html>