<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html>
<html>
<head>

<title>购买记录</title>


<LINK type="text/css" rel=stylesheet href="qtimages/style.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/arrow.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";

 
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"lvyoujingdian");
 String jingdianbianhao="";
  	String jingdianmingcheng="";
  	String piaojia="";
  	
 jingdianbianhao=(String)mlbdq.get("jingdianbianhao");
  	jingdianmingcheng=(String)mlbdq.get("jingdianmingcheng");
  	piaojia=(String)mlbdq.get("piaojia");
  	 
 

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var goumaishuliangobj = document.getElementById("goumaishuliang"); if(goumaishuliangobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(goumaishuliangobj.value)){document.getElementById("clabelgoumaishuliang").innerHTML=""; }else{document.getElementById("clabelgoumaishuliang").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    
}
function gow()
{
	document.location.href="goumaijiluadd.jsp?id=<%=id%>";
}
</script>


<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">购买记录  <span>Contents</span>
      <div class="Tmore"> </div>
    </div>
  </div>

 <div align="center" style="color:#000000">
         
        
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
double zongej=0;zongej=Float.valueOf(request.getParameter("piaojia")).floatValue()*Float.valueOf(request.getParameter("goumaishuliang")).floatValue();


ext.put("iszf","否");
ext.put("zonge",zongej);
 }
new CommDAO().insert(request,response,"goumaijilu",ext,true,false,""); 
%>
   <form  action="goumaijiluadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="65%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">景点编号：</td><td><input name='jingdianbianhao' type='text' id='jingdianbianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jingdianbianhao.value='<%=jingdianbianhao%>';document.form1.jingdianbianhao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jingdianmingcheng.value='<%=jingdianmingcheng%>';document.form1.jingdianmingcheng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">价格：</td><td><input name='piaojia' type='text' id='piaojia' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.piaojia.value='<%=piaojia%>';document.form1.piaojia.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">购买数量：</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelgoumaishuliang' />必需数字型</td></tr>
		<tr><td  width="200">总额：</td><td> 此项不必填写，系统自动计算</td></tr>
		<tr><td  width="200">购买人：</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
		  
</div>


<%@ include file="qtdown.jsp"%>

</body>
</html>

