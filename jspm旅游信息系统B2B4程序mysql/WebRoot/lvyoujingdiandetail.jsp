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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"lvyoujingdian");
	
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
         
        
   <table width="65%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>景点编号：</td><td width='39%'><%=mqt.get("jingdianbianhao")%></td><td  rowspan=5 align=center><a href=<%=mqt.get("jingdianzhaopian")%> target=_blank><img src=<%=mqt.get("jingdianzhaopian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>景点名称：</td><td width='39%'><%=mqt.get("jingdianmingcheng")%></td></tr><tr>
         <td width='11%' height=44>景点类别：</td><td width='39%'><%=mqt.get("jingdiandengji")%></td></tr><tr>
         <td width='11%' height=44>票价：</td><td width='39%'><%=mqt.get("piaojia")%></td></tr><tr>
         <td width='11%' height=44>所在地：</td><td width='39%'><%=mqt.get("diliweizhi")%></td></tr><tr>
         
         
         <td width='11%' height=100  >景点简介：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("jingdianjianjie")%></td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='lvyoujingdian' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" />
<input type=button name=Submit53 value=评论 onClick="javascript:hsgpinglun('lvyoujingdian','<%=id%>')"/>
<input type=button name=Submit52 value=收藏 onClick="javascript:location.href='jrsc.jsp?id=<%=mqt.get("id")%>&biao=lvyoujingdian&ziduan=jingdianmingcheng';" />
<input type=button name=Submit54 value=预定门票 onClick="javascript:location.href='goumaijiluadd.jsp?id=<%=mqt.get("id")%>&biao=lvyoujingdian&ziduan=jingdianmingcheng';" />
</td></tr>
    
  </table>
		  
</div>


<%@ include file="qtdown.jsp"%>
<a class='bshareDiv' href='http://www.bshare.cn/share'>分享按钮</a><script type='text/javascript' charset='utf-8' src='http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#9C3&amp;text=分享到'></script>
</body>
</html>

