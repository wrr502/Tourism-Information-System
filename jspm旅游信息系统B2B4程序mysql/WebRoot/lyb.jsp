<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE html>
<html>
<head>

<title>������Ϣϵͳ</title>

<LINK type="text/css" rel=stylesheet href="qtimages/style.css">
<script type="text/javascript" src="qtimages/jquery.js"></script>
<script type="text/javascript" src="qtimages/arrow.js"></script>
<script type="text/javascript" src="qtimages/inc.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
  <% 
HashMap ext = new HashMap(); 
//ext.put("tglparentid",tglparentid); 
ext.put("huifuneirong",""); 
new CommDAO().insert(request,response,"liuyanban",ext,true,false,"lyblist.jsp"); 
%>
<body>
<%@ include file="qttop.jsp"%>
<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">��������  <span>GuestBook</span>
      <div class="Tmore"><a href="lyblist.jsp">�鿴����</a> </div>
    </div>
    <!-- end Ttitle-->
  
  </div>
  <!-- end TtitleBox-->
 <div align="center" style="color:#000000">
         
      <form  action="lyb.jsp?f=f"  method="post" name="f1"  onsubmit="return checkform();">
						<table width="1200" height="434" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#78BAEF" style="border-collapse:collapse">
						 
                            <tr>
                              <td width="12%">�ǳƣ�</td>
                              <td width="88%"><input name='cheng' type='text' id='cheng' value='' onblur='checkform()' /> <label id='clabelcheng' />
                                *</td>
                            </tr>
                            <tr>
                              <td>ͷ��</td>
                              <td><input name="xingbie" type="radio" value="1" checked>
                                  <img src="img/1.gif" width="64" height="71">
                                  <input type="radio" name="xingbie" value="2">
                                  <img src="img/2.gif" width="64" height="71">
                                  <input type="radio" name="xingbie" value="3">
                                  <img src="img/3.gif" width="64" height="71">
                                  <input type="radio" name="xingbie" value="4">
                                  <img src="img/4.gif" width="64" height="71">
                                  <input type="radio" name="xingbie" value="5">
                                  <img src="img/5.gif" width="64" height="71"></td>
                            </tr>
                            <tr>
                              <td>QQ��</td>
                              <td><input name='QQ' type='text' id='QQ' value='' /></td>
                            </tr>
                            <tr>
                              <td>���䣺</td>
                              <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                            </tr>
                            <tr>
                              <td>�绰��</td>
                              <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                            </tr>
                            <tr>
                              <td>���ݣ�</td>
                              <td><textarea name="neirong" cols="50" rows="10" id="neirong" onblur='checkform()'></textarea>
                                * <label id='clabelneirong' /> </td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="submit" name="Submit42" value="�ύ" onClick="return checklyb();"  />
                                  <input type="reset" name="Submit22" value="����"  /></td>
                            </tr>
                         
        </table>
   </form>
		  
</div>


<%@ include file="qtdown.jsp"%>
</body>
</html>

<script language=javascript >  
 
 function checkform(){  
var chengobj = document.getElementById("cheng");  
if(chengobj.value==""){  
document.getElementById("clabelcheng").innerHTML="&nbsp;&nbsp;<font color=red>�������ǳ�</font>";  
return false;  
}else{
document.getElementById("clabelcheng").innerHTML="  ";  
}  
  
var neirongobj = document.getElementById("neirong");  
if(neirongobj.value==""){  
document.getElementById("clabelneirong").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";  
return false;  
}else{
document.getElementById("clabelneirong").innerHTML="  ";  
}  


return true;   
}   
</script>  

