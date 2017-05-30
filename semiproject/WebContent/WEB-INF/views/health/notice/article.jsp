<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ include file="/resource/health/setting.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spring</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/header.css" />
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/slider.css" />
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/footer.css" />
</head>	
<body>
<!-- header -->
<div style="width: 900px; margin: 0 auto;">
    <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
</div>	
	    <div class="table-responsive" style="clear: both;">
	        <div class="article">
	            <table class="table" style="width: 900px; height: 600px; margin: 0 auto;">
	                 <thead>
	                     <tr>
	                         <th colspan="2" style="text-align:center;">
	                                 	${dto.subject }
	                         </th>
	                     </tr>
	                <thead>
	                 <tbody>
	                     <tr>
	                         <td style="text-align: left;">
	                             	${sessionScope.member.mem_Name}
	                         </td>
	                         <td style="text-align: right;">
	                          	날짜 ${dto.created}/조회 ${dto.hitcount }/좋아요
	                         </td>
	                     </tr>
                         <tr style="border-bottom:none;">
                             <td colspan="2">
                                 <img src="<%=cp%>/uploads/photo/${dto.savefilename}" alt="이미지" style="max-width:100%; height:auto; resize:both;">
                             </td>
                         </tr>
	                     <tr>
	                         <td colspan="2" style="min-height: 30px;">
	                              	${dto.content}
	                         </td>
	                     </tr>
	                     <tr>
	                         <td colspan="2" style="min-height: 30px; text-align:center;" >
	                         		<button class="btn">
	                         		<span class="glyphicon glyphicon-star"></span><br>
	                              	추천
	                         		</button>
	                         </td>
	                     </tr>
	                </tbody>
	                <tfoot>
	                	<tr>
	                		<td>	                		
	                		        <button type="button" class="btn" onclick="">수정</button>
	                		        <button type="button" class="btn" onclick="">삭제</button>
	                		        <br>
	                		    <pre>댓글1</pre>
	                		    <pre>댓글2</pre>
	                		    <pre>댓글3</pre>
	                		</td>
	                		<td align="right">
	                		    <button type="button" class="btn"
	                		                onclick="javascript:location.href='<%=cp%>/health/notice.do'"> 목록으로 </button>
	                		</td>
	                	</tr>
	                </tfoot>
	            </table>
	       </div>
	   </div>
<!-- footer -->
<div style="width: 900px; margin: 0 auto;">
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</div>
</body>
</html>