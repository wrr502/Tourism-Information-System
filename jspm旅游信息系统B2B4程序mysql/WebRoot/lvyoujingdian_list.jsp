<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ξ���</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�������ξ����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �����ţ�<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> �������<select name='jingdiandengji' id='jingdiandengji' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="һ�Ǽ�">һ�Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='lvyoujingdian_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>������</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>�������</td>
    <td bgcolor='#CCFFFF'>Ʊ��</td>
    <td bgcolor='#CCFFFF'>���ڵ�</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>������Ƭ</td>
    
    
	<td width="90" align="center" bgcolor="#CCFFFF">���۹���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"lvyoujingdian"); 
    String url = "lvyoujingdian_list.jsp?1=1"; 
    String sql =  "select * from lvyoujingdian where 1=1";
	
if(request.getParameter("jingdianbianhao")=="" ||request.getParameter("jingdianbianhao")==null ){}else{sql=sql+" and jingdianbianhao like '%"+request.getParameter("jingdianbianhao")+"%'";}
if(request.getParameter("jingdianmingcheng")=="" ||request.getParameter("jingdianmingcheng")==null ){}else{sql=sql+" and jingdianmingcheng like '%"+request.getParameter("jingdianmingcheng")+"%'";}
if(request.getParameter("jingdiandengji")=="" ||request.getParameter("jingdiandengji")==null ){}else{sql=sql+" and jingdiandengji like '%"+request.getParameter("jingdiandengji")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jingdianbianhao") %></td>
    <td><%=map.get("jingdianmingcheng") %></td>
    <td><%=map.get("jingdiandengji") %></td>
    <td><%=map.get("piaojia") %></td>
    <td><%=map.get("diliweizhi") %></td>
    <td width='90' align='center'><a href='<%=map.get("jingdianzhaopian") %>' target='_blank'><img src='<%=map.get("jingdianzhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=lvyoujingdian">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="lvyoujingdian_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="lvyoujingdian_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

