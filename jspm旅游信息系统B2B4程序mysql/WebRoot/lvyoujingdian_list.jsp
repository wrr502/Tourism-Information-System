<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>旅游景点</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有旅游景点列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  景点编号：<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  景点名称：<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 景点类别：<select name='jingdiandengji' id='jingdiandengji' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="一星级">一星级</option><option value="二星级">二星级</option><option value="三星级">三星级</option><option value="四星级">四星级</option><option value="五星级">五星级</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='lvyoujingdian_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>景点编号</td>
    <td bgcolor='#CCFFFF'>景点名称</td>
    <td bgcolor='#CCFFFF'>景点类别</td>
    <td bgcolor='#CCFFFF'>票价</td>
    <td bgcolor='#CCFFFF'>所在地</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>景点照片</td>
    
    
	<td width="90" align="center" bgcolor="#CCFFFF">评论管理</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
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
    
    
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=lvyoujingdian">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="lvyoujingdian_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="lvyoujingdian_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

