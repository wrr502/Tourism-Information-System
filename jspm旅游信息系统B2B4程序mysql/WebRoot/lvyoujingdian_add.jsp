<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���ξ���</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="jingdianjianjie"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="lvyoujingdian_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){






}
new CommDAO().insert(request,response,"lvyoujingdian",ext,true,false,""); 
%>

  <body >
 <form  action="lvyoujingdian_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ������ξ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�����ţ�</td><td><input name='jingdianbianhao' type='text' id='jingdianbianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�������ƣ�</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljingdianmingcheng' /></td></tr>
		<tr><td>�������</td><td><select name='jingdiandengji' id='jingdiandengji'><option value="һ�Ǽ�">һ�Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option><option value="���Ǽ�">���Ǽ�</option></select></td></tr>
		<tr><td  width="200">Ʊ�ۣ�</td><td><input name='piaojia' type='text' id='piaojia' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">���ڵأ�</td><td><input name='diliweizhi' type='text' id='diliweizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">������Ƭ��</td><td><input name='jingdianzhaopian' type='text' id='jingdianzhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('jingdianzhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">�����飺</td><td><textarea name="jingdianjianjie" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jingdianmingchengobj = document.getElementById("jingdianmingcheng"); if(jingdianmingchengobj.value==""){document.getElementById("clabeljingdianmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>�����뾰������</font>";return false;}else{document.getElementById("clabeljingdianmingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


