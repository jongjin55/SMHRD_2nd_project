
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>

#table_set {
width : 800px;
height : 10px;
margin : auto;
border: 1px solid gray;
border-collapse: collapse;
border-spacing: 0;
}
td {
border: 1px solid gray;
}
.name {

}
.btn_wr {
  background-color: #040404;
  border: none;
  color: white;
  padding: 10px 20px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
a {
text-decoration:none;
color : white;
 }



</style>
<body>
<%
/* HttpSession session = request.getSession();
String id = session.getAttribute("id");
boardDAO dao = new boardDAO();
boardVO vo = dao.insert();
 */
%>


<form action="../../pet_qaWrite" method="get"
         enctype="multipart/form-data">
         
         <table id="table_set">

   <caption><h3>���ۼ�</h3></caption>
            <tr height="30px">
               <td class="name" align="center" bgcolor="whitesmoke" >����</td>
               <td  ><input type="text" placeholder="������" id="name" name="title"
                  style="display:block; width:98%"></td>
            </tr>
            
            <tr>
               <td class="cont" align="center" style="font-size: 20px;"
                  bgcolor="whitesmoke"><span>����</span></td>
               <td >
               <textarea placeholder="�۳���" rows="20" style ="width:99%; height:95%; resize :none" id="conts" name="conts"></textarea></td>
            </tr>
            <tr>
               <td  align="center" colspan="2"><input type="submit" class="btn_wr" value="���">
                   <button class="btn_wr"><a href= "free_board.jsp">���</a></button></td>
            </tr>
            
         </table>

      </form>



</body>
</html>