<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ξ�����ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"lvyoujingdian");
     %>
  ���ξ�����ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>�����ţ�</td><td width='39%'><%=m.get("jingdianbianhao")%></td>
<td  rowspan=5 align=center><a href=<%=m.get("jingdianzhaopian")%> target=_blank><img src=<%=m.get("jingdianzhaopian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>�������ƣ�</td><td width='39%'><%=m.get("jingdianmingcheng")%></td>
</tr><tr>
<td width='11%' height=44>�������</td><td width='39%'><%=m.get("jingdiandengji")%></td>
</tr><tr>
<td width='11%' height=44>Ʊ�ۣ�</td><td width='39%'><%=m.get("piaojia")%></td>
</tr><tr>
<td width='11%' height=44>���ڵأ�</td><td width='39%'><%=m.get("diliweizhi")%></td>
</tr><tr>


<td width='11%' height=100  >�����飺</td><td width='39%' colspan=2 height=100 ><%=m.get("jingdianjianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


