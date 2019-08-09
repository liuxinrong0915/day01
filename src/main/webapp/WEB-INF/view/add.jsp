<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resource/css/css.css">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
           function add(){
        	   $.post("add",$("form").serialize(),function(data){
        		   if(data){
        			   alert("添加成功")
        			   location ="list"
        		   }else{
        			   alert("添加失败")
        		   }
        	   })
           }
</script>
<meta charset="UTF-8">
<title>学生</title>
</head>
<body>
    <form>
       <table>
            <tr>
               <td>姓名</td>
               <td>
                  <input type="text" name="name">
               </td>
            </tr>
            <tr>
               <td>性别</td>
               <td>
                  <input type="text" name="sex">
               </td>
            </tr>
            <tr>
               <td></td>
               <td>
                  <input type="button" value="添加" onclick="add()">
               </td>
            </tr>
     </table>
    </form>
</body>
</html>