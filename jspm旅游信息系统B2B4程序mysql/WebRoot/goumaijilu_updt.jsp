<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����¼</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"goumaijilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"goumaijilu"); 

%>
  <form  action="goumaijilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ĺ����¼:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>�����ţ�</td><td><input name='jingdianbianhao' type='text' id='jingdianbianhao' value='<%= mmm.get("jingdianbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�������ƣ�</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='<%= mmm.get("jingdianmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�۸�</td><td><input name='piaojia' type='text' id='piaojia' value='<%= mmm.get("piaojia")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>����������</td><td><input name='goumaishuliang' type='text' id='goumaishuliang' value='<%= mmm.get("goumaishuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�ܶ</td><td><input name='zonge' type='text' id='zonge' value='<%= mmm.get("zonge")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�����ˣ�</td><td><input name='goumairen' type='text' id='goumairen' value='<%= mmm.get("goumairen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


