<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���й����¼�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �����ţ�<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td width="114" bgcolor='#CCFFFF'>������</td>
    <td width="109" bgcolor='#CCFFFF'>��������</td>
    <td width="89" bgcolor='#CCFFFF'>�۸�</td>
    <td width="104" bgcolor='#CCFFFF'>��������</td>
    <td width="98" bgcolor='#CCFFFF'>�ܶ�</td>
    <td width="94" bgcolor='#CCFFFF'>������</td>
    <td bgcolor='#CCFFFF' width='114' align='center'>�Ƿ�֧��</td>
    
    <td width="99" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="126" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	double zongez=0;


  	 new CommDAO().delete(request,"goumaijilu"); 
    String url = "goumaijilu_list2.jsp?1=1"; 
    String sql =  "select * from goumaijilu where goumairen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("jingdianbianhao")=="" ||request.getParameter("jingdianbianhao")==null ){}else{sql=sql+" and jingdianbianhao like '%"+request.getParameter("jingdianbianhao")+"%'";}
if(request.getParameter("jingdianmingcheng")=="" ||request.getParameter("jingdianmingcheng")==null ){}else{sql=sql+" and jingdianmingcheng like '%"+request.getParameter("jingdianmingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongez=zongez+Float.valueOf((String)map.get("zonge")).floatValue();



     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jingdianbianhao") %></td>
 <td><%=map.get("jingdianmingcheng") %></td>
 <td><%=map.get("piaojia") %></td>
 <td><%=map.get("goumaishuliang") %></td>
 <td><%=map.get("zonge") %></td>
 <td><%=map.get("goumairen") %></td>
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("��")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=goumaijilu"><font color='red'>֧��</font></a> <%}%> </td>
    
    <td width="99" align="center"><%=map.get("addtime") %></td>
    <td width="126" align="center"><a href="goumaijilu_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="goumaijilu_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="goumaijiludetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
�����ܶ�:<%=zongez%>��  
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

