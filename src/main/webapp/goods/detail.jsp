<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	브라우저: URL을 이용해서 요청한다
		=브라우저 자체에서 처리: JavaScript(유지: Jquery)
							|최신 (MSA:React / Vue)
			|
		Controller: delivery (요청 > 전송)
					서빙
			|
		Model > @RequestMapping > 메소드를 호출
			|
		 request를 받아서
		    |
		 JSP로 전송
		 
		 > DAO / Model / JSP > 웹개발자
		   -----------   ----
		   | Back		 | View
		   DAO/VO/Model: 웹 개발자
		   JSP/Jquery: 프론트 개발자
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
   margin-top: 50px;
}
.row {
  margin: 0px auto;
  width: 960px;
}
</style>
</head>
<body>
	<div class="container">
	  <div class="row">
	    <table class="table">
	      <tr>
	        <td colspan="2" class="text-center">
	        <img src="${vo.goods_poster }" style="width: 750px; height: 300px;"
			  onerror="this.src='no.png'">
			  </td>
	      </tr>
	      <tr>
	       <td colspan="2">
	         <h3>${vo.goods_name }</h3>
	       </td>
	      </tr>
	      <tr>
	        <td width=10%>가격</td>
	        <td width=10%>${vo.goods_price }</td>
	      </tr>
	      <tr>
	       <td colspan="2">${vo.goods_sub }</td>
	      </tr>
	      <tr>
	        <td colspan="2" class="text-right">
	          <a href="list.do?tno=${tno }" class="btn btn-sm btn-primary">목록</a>
	        </td>
	      </tr>
	    </table>
	  </div>
	</div>
</body>
</html>