<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"goumaijilu");
     %>
  �����¼��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>�����ţ�</td><td width='39%'><%=m.get("jingdianbianhao")%></td>
<td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("jingdianmingcheng")%></td></tr><tr>
<td width='11%'>�۸�</td><td width='39%'><%=m.get("piaojia")%></td>
<td width='11%'>����������</td><td width='39%'><%=m.get("goumaishuliang")%></td></tr><tr>
<td width='11%'>�ܶ</td><td width='39%'><%=m.get("zonge")%></td>
<td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("goumairen")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


