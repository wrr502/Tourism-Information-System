<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html>
<html>
<head>

<title>旅游信息系统</title>

<LINK type="text/css" rel=stylesheet href="qtimages/style.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/arrow.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
 <%
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
   %>
<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle"><%=lb%>  <span>Service items</span>
      <div class="Tmore"> </div>
    </div>
    <!-- end Ttitle-->
  
  </div>
  <!-- end TtitleBox-->
 <div align="center" style="color:#000000">
         
          <%
    HashMap m = new CommDAO().getmaps("leibie",lb,"dx");
     %>
                                  <table width="1114" height="430" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                                    <tr>
                                      <td height="357" align="left"><font color="000000"><%=m.get("content") %></font></td>
                                    </tr>
                                    <tr>
                                      <td height="33" align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" ></td>
                                    </tr>
   </table>
		  
</div>


<%@ include file="qtdown.jsp"%>
</body>
</html>

