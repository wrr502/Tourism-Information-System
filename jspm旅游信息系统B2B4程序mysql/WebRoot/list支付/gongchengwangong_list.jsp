<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����깤</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>���й����깤�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���̱�ţ�<input name="gongchengbianhao" type="text" id="gongchengbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="gongchengmingcheng" type="text" id="gongchengmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  �а��̣�<input name="chengbaoshang" type="text" id="chengbaoshang" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gongchengwangong_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���̱��</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>���̵�ַ</td>
    <td bgcolor='#CCFFFF'>����ʱ��</td>
    <td bgcolor='#CCFFFF'>Ԥ���ܼ�</td>
    <td bgcolor='#CCFFFF'>�а��ܼ�</td>
    <td bgcolor='#CCFFFF'>�а���</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>�깤ʱ��</td>
    <td width='80' align='center' bgcolor='#CCFFFF'>�Ƿ�֧��</td>
    <!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	double gongchenglirunz=0;
double zgfgongchenglirun=0;double zdfgongchenglirun=1000000000;
//txixixngdy
  	 new CommDAO().delete(request,"gongchengwangong"); 
    String url = "gongchengwangong_list.jsp?1=1"; 
    String sql =  "select * from gongchengwangong where 1=1";
	
if(request.getParameter("gongchengbianhao")=="" ||request.getParameter("gongchengbianhao")==null ){}else{sql=sql+" and gongchengbianhao like '%"+request.getParameter("gongchengbianhao")+"%'";}
if(request.getParameter("gongchengmingcheng")=="" ||request.getParameter("gongchengmingcheng")==null ){}else{sql=sql+" and gongchengmingcheng like '%"+request.getParameter("gongchengmingcheng")+"%'";}
if(request.getParameter("chengbaoshang")=="" ||request.getParameter("chengbaoshang")==null ){}else{sql=sql+" and chengbaoshang like '%"+request.getParameter("chengbaoshang")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	gongchenglirunz=gongchenglirunz+Float.valueOf((String)map.get("gongchenglirun")).floatValue();

//txixgihxngjs
if(Float.valueOf((String)map.get("gongchenglirun")).floatValue()>zgfgongchenglirun){zgfgongchenglirun=Float.valueOf((String)map.get("gongchenglirun")).floatValue();}
if(Float.valueOf((String)map.get("gongchenglirun")).floatValue()<zdfgongchenglirun){zdfgongchenglirun=Float.valueOf((String)map.get("gongchenglirun")).floatValue();}

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gongchengbianhao") %></td>
    <td><%=map.get("gongchengmingcheng") %></td>
    <td><%=map.get("gongchengdizhi") %></td>
    <td><%=map.get("donggongshijian") %></td>
    <td><%=map.get("yusuanzongjia") %></td>
    <td><%=map.get("chengbaozongjia") %></td>
    <td><%=map.get("chengbaoshang") %></td>
    <td><%=map.get("gongchenglirun") %></td>
    <td><%=map.get("wangongshijian") %></td>
    <td align='center'><%=map.get("iszf")%>
      <% if(map.get("iszf").equals("��")){%>
      <a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=gongchengwangong"><font color='red'>֧��</font></a>
      <%}%></td>
    <!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="gongchengwangong_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="gongchengwangong_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="gongchengwangong_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
���ƹ�������:<%=gongchenglirunz%>�� ������߹�������<%=zgfgongchenglirun%>����͹�������<%=zdfgongchenglirun%>��ƽ����������<%out.print(Math.round(1000*(gongchenglirunz/i))/1000.0);%>�� 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

