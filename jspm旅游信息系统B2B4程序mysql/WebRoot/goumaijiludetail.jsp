<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html>
<html>
<head>

<title>�����¼</title>


<LINK type="text/css" rel=stylesheet href="qtimages/style.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/arrow.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"goumaijilu");
	
     %>
<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">�����¼  <span>Contents</span>
      <div class="Tmore"> </div>
    </div>
  </div>

 <div align="center" style="color:#000000">
         
        
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>�����ţ�</td><td width='39%'><%=mqt.get("jingdianbianhao")%></td>
		 <td width='11%'>�������ƣ�</td><td width='39%'><%=mqt.get("jingdianmingcheng")%></td>
		 </tr><tr><td width='11%'>�۸�</td><td width='39%'><%=mqt.get("piaojia")%></td>
		 <td width='11%'>����������</td><td width='39%'><%=mqt.get("goumaishuliang")%></td>
		 </tr><tr><td width='11%'>�ܶ</td><td width='39%'><%=mqt.get("zonge")%></td>
		 <td width='11%'>�����ˣ�</td><td width='39%'><%=mqt.get("goumairen")%></td>
		 </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />
<input type=button name=Submit52 value=��ӡ onClick="javascript:window.print()"  />
</td></tr>
    
  </table>
		  
</div>


<%@ include file="qtdown.jsp"%>

</body>
</html>

