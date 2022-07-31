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

<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">在线留言  <span>GuestBook</span>
      <div class="Tmore"><a href="lyb.jsp">我要留言</a> </div>
    </div>
    <!-- end Ttitle-->
  
  </div>
  <!-- end TtitleBox-->
 <div align="center" style="color:#000000">
         
      <% 
    String url = "lyblist.jsp?1=1"; 
    String sql =  "select * from liuyanban  order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,4,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                      <table width="1200" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#7FB7C6" class="tb">
                        <!--DWLayoutTable-->
                        <tr>
                          <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=map.get("xingbie") %>.gif border=0> </td>
                          <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=map.get("addtime") %> &nbsp;</td>
                        </tr>
                        <tr>
                          <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=map.get("neirong") %></td>
                        </tr>
                        <tr>
                          <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=map.get("cheng") %> &nbsp; &nbsp;电话：<%=map.get("dianhua") %>&nbsp;&nbsp;邮 箱:<%=map.get("youxiang") %> &nbsp; QQ:<%=map.get("QQ") %>&nbsp; &nbsp; </td>
                        </tr>
                        <tr>
                          <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=map.get("huifuneirong") %></td>
                        </tr>
                      </table>
                    <%} %>
                    ${page.info }
		  
</div>


<%@ include file="qtdown.jsp"%>
</body>
</html>

