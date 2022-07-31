<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>工程完工</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="gongchengwangong_add.jsp?id=<%=id%>&gongchengbianhao="+document.form1.gongchengbianhao.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
double gongchenglirunj=0;gongchenglirunj=Float.valueOf(request.getParameter("chengbaozongjia")).floatValue()-Float.valueOf(request.getParameter("yusuanzongjia")).floatValue();
//youshenhe
//youzhifu
ext.put("gongchenglirun",gongchenglirunj);
ext.put("iszf","否");

}
new CommDAO().insert(request,response,"gongchengwangong",ext,true,false,""); 
%>

  <body >
 <form  action="gongchengwangong_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加工程完工:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>工程编号：</td><td><%=Info.getselectsl("gongchengbianhao","gongchengxinxi","gongchengbianhao")%>&nbsp;*<label id='clabelgongchengbianhao' /></td></tr>
		<tr><td  width="200">工程名称：</td><td><input name='gongchengmingcheng' type='text' id='gongchengmingcheng' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelgongchengmingcheng' /></td></tr>
		<tr><td  width="200">工程地址：</td><td><input name='gongchengdizhi' type='text' id='gongchengdizhi' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">动工时间：</td><td><input name='donggongshijian' type='text' id='donggongshijian' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">预算总价：</td><td><input name='yusuanzongjia' type='text' id='yusuanzongjia' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">承包总价：</td><td><input name='chengbaozongjia' type='text' id='chengbaozongjia' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">承包商：</td><td><input name='chengbaoshang' type='text' id='chengbaoshang' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">工程利润：</td><td> 此项不必填写，系统自动计算</td></tr>
		<tr><td width="200">完工时间：</td><td><input name='wangongshijian' type='text' id='wangongshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("gongchengbianhao")==null || request.getParameter("gongchengbianhao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("gongchengbianhao",request.getParameter("gongchengbianhao"),"gongchengxinxi"); 
HashMap zzz = new CommDAO().getmaps("gongchengbianhao",request.getParameter("gongchengbianhao"),"zongyusuan"); 
HashMap ccc = new CommDAO().getmaps("gongchengbianhao",request.getParameter("gongchengbianhao"),"gongchengchengbao"); 
%>
<script language="javascript">
document.form1.gongchengbianhao.value="<%=mmm.get("gongchengbianhao")%>";
document.form1.gongchengmingcheng.value="<%=mmm.get("gongchengmingcheng")%>";
document.form1.gongchengdizhi.value="<%=mmm.get("gongchengdizhi")%>";
document.form1.donggongshijian.value="<%=mmm.get("donggongshijian")%>";
document.form1.yusuanzongjia.value="<%=zzz.get("yusuanzongjia")%>";
document.form1.chengbaozongjia.value="<%=ccc.get("chengbaozongjia")%>";
document.form1.chengbaoshang.value="<%=ccc.get("chengbaoshang")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var gongchengbianhaoobj = document.getElementById("gongchengbianhao"); if(gongchengbianhaoobj.value==""){document.getElementById("clabelgongchengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工程编号</font>";return false;}else{document.getElementById("clabelgongchengbianhao").innerHTML="  "; } 
	var gongchengbianhaoobj = document.getElementById("gongchengbianhao");  
if(gongchengbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=gongchengwangong&col=gongchengbianhao&value="+gongchengbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelgongchengbianhao").innerHTML="&nbsp;&nbsp;<font color=red>工程编号已存在</font>";  
return false;
}else{document.getElementById("clabelgongchengbianhao").innerHTML="  ";  
}  
} 
	var gongchengmingchengobj = document.getElementById("gongchengmingcheng"); if(gongchengmingchengobj.value==""){document.getElementById("clabelgongchengmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入工程名称</font>";return false;}else{document.getElementById("clabelgongchengmingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


