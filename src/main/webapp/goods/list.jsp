<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
h1 {
   text-align: center;
}
p{
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row text-center">
		  <a href="list.do?tno=1" class="btn btn-sm btn-danger">전체목록</a>
		  <a href="list.do?tno=2" class="btn btn-sm btn-success">인기상품</a>
		  <a href="list.do?tno=3" class="btn btn-sm btn-info">신상품</a>
		  <a href="list.do?tno=4" class="btn btn-sm btn-warning">특별상품</a>
		</div>
		<div class="row" style="margin-top: 10px">
		 <h1>${vo.goods_name }</h1>
		</div>
		<div class="row" style="margin-top: 20px">
		  <c:forEach var="vo" items="${list }">
		  	 <div class="col-sm-3">
		  	   <a href="detail.do?tno=${tno }&no=${vo.no}">
		  	     <div class="thumbnail">
		  	     	<img src="${vo.goods_poster }" style="width: 240px; height: 130px; object-fit: cover"
		  	     		onerror="this.src='no.png'">
		  	     </div>
		  	     <p>${vo.goods_name }</p>
		  	   </a>
		  	 </div>
		  </c:forEach>
		</div>
		<div class="row text-center" style="margin-top: 20px">
		  <a href="list.do?tno=${tno }&page=${curpage>1?curpage-1:curpage}" class="btn btn-sm btn-primary">이전</a>
		  	${curpage } page / ${totalpage } pages
		  <a href="list.do?tno=${tno }&page=${curpage<totalpage?curpage+1:curpage}" class="btn btn-sm btn-primary">다음</a>
		</div>
	</div>
</body>
</html>