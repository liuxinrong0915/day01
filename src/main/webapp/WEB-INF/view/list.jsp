<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resource/css/css.css">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
          function qx(){
        	  $("[name=id]").prop("checked",true)
          }
          function qbx(){
        	  $("[name=id]").prop("checked",false)
          }
          function fx(){
        	  $("[name=id]").each(function(){
        		  this.checked=!this.checked
        	  })
          }
</script>
<meta charset="UTF-8">
<title>学生</title>
</head>
<body>
    
    <table>
       <tr>
          <td colspan="10">
             <a href="toadd"> <input type="button" value="添加"></a>
             <input type="button" value="批量删除">
          </td>
       </tr>
        <tr>
        <td>
           <input type="button" value="全选"  onclick="qx()">
           <input type="button" value="全不选"  onclick="qbx()">
           <input type="button" value="返选"  onclick="fx()">
        </td>
           <td>编号</td>
           <td>姓名</td>
           <td>性别</td>
           <td>操作</td>
        </tr>
        <c:forEach items="${selects }" var="c" varStatus="count">
            <tr>
            <td>
              <input type="checkbox" value="${c.id }" name="id">
            </td>
           <td>${count.count }</td>
           <td>${c.name }</td>
           <td>${c.sex }</td>
           <td>
             <input type="button" value="删除">
             <input type="button" value="修改">
           </td>
        </tr>
        </c:forEach>
        <tr>
           <td colspan="10">
               <a href="list?pageNum=1">首页</a>
               <a href="list?pageNum=${info.nextPage }">下一页</a>
               <a href="list?pageNum=${info.prePage }">上一页</a>
               <a href="list?pageNum=${info.pages }">尾页</a>
           </td>
        </tr>
    </table>
    
</body>
</html>

