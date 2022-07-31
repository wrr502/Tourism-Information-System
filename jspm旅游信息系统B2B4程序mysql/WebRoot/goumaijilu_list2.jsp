<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>购买记录</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有购买记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  景点编号：<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  景点名称：<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="114" bgcolor='#CCFFFF'>景点编号</td>
    <td width="109" bgcolor='#CCFFFF'>景点名称</td>
    <td width="89" bgcolor='#CCFFFF'>价格</td>
    <td width="104" bgcolor='#CCFFFF'>购买数量</td>
    <td width="98" bgcolor='#CCFFFF'>总额</td>
    <td width="94" bgcolor='#CCFFFF'>购买人</td>
    <td bgcolor='#CCFFFF' width='114' align='center'>是否支付</td>
    
    <td width="99" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="126" align="center" bgcolor="CCFFFF">操作</td>
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
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("否")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=goumaijilu"><font color='red'>支付</font></a> <%}%> </td>
    
    <td width="99" align="center"><%=map.get("addtime") %></td>
    <td width="126" align="center"><a href="goumaijilu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="goumaijilu_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="goumaijiludetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
共计总额:<%=zongez%>；  
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

