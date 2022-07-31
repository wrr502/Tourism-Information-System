<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html>
<html>
<head>

<title>旅游景点</title>


<LINK type="text/css" rel=stylesheet href="qtimages/style.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/arrow.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">旅游景点  <span>Contents</span>
      <div class="Tmore"> </div>
    </div>
  </div>

 <div align="center" style="color:#000000">
         
         <form name="form1" id="form1" method="post" action="">
   搜索:  景点编号：<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  景点名称：<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 景点类别：<select name='jingdiandengji' id='jingdiandengji' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="一星级">一星级</option><option value="二星级">二星级</option><option value="三星级">三星级</option><option value="四星级">四星级</option><option value="五星级">五星级</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='lvyoujingdianlisttp.jsp';" />
</form>
<table width="65%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>景点编号</td>
    <td bgcolor='#CCFFFF'>景点名称</td>
    <td bgcolor='#CCFFFF'>景点类别</td>
    <td bgcolor='#CCFFFF'>票价</td>
    <td bgcolor='#CCFFFF'>所在地</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>景点照片</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"lvyoujingdian"); 
    String url = "lvyoujingdianlist.jsp?2=2"; 
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
    <td><%=map.get("jingdianbianhao") %></td><td><%=map.get("jingdianmingcheng") %></td><td><%=map.get("jingdiandengji") %></td><td><%=map.get("piaojia") %></td><td><%=map.get("diliweizhi") %></td><td width='90'><a href='<%=map.get("jingdianzhaopian") %>' target='_blank'><img src='<%=map.get("jingdianzhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    <td width="30" align="center"> <a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }						
		  
</div>


<%@ include file="qtdown.jsp"%>

</body>
</html>

