<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 
<div class="header">
  <div class="ntbg">
    <div class="ntbd">
     <!-- <div class="notice">
        <div class="title">��վ���棺</div>
        <div class="noticenr">
          <marquee  onmouseover="this.stop()" onMouseOut="this.start()" scrollamount="2"  >
          ����Ϊ�����г��ڱ䣬������Զ����...
          </marquee>
        </div>
      </div>-->
      <!-- end notice-->
      <div class="toptel">
	  
	                     <%
				 if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
					
				%>

						<table width="600" height="30" border="0" align="right" cellpadding="0" cellspacing="0">
                          <form action="jspmlyxxxtB2B4?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
                            <tr>
                              <td  height="30" align="right" >�û���
                                <input name="username" type="text" id="username" size="10" style=" height:19px; border:solid 1px #000000; color:#666666"  placeholder="�������û���" />
								
                                ����
                                <input name="pwd1" type="password" id="pwd1" size="10" style=" height:19px; border:solid 1px #000000; color:#666666"  placeholder="����������" />
                               Ȩ�� 
                            <select name="cx" id="cx"  >
                              <option value="ע���û�">ע���û�</option>
                            </select>
                                ��֤��
                              <input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" placeholder="��������֤��"/></td>
                              <td align="right"  style=" padding-left:3px; padding-right:3px;"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a></td>
                              <td align="right"><input type="submit" name="Submit3" value="��½" style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" onClick="return checklog();" />
                                  <input type="button" name="Submit3" value="�һ�����" onClick="javascript:location.href='zmm.asp';" style=" border:solid 1px #000000; color:#666666;width:60px; height:20px; display:none" /></td>
                            </tr>
							 <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("����������");
		return false;
	}
}
           
                                  </script>
                          </form>
		  </table>
						   <%}else{ %>
                        <table width="460" height="30" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="30" align="right" valign="middle">�û���:<%=request.getSession().getAttribute("username")%>������Ȩ��:<%=request.getSession().getAttribute("cx")%>
                                <input type="button" name="Submit" value="�˳�" onClick="location.href='logout.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" />
                            <input type="button" name="Submit2" value="���˺�̨" onClick="location.href='main.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" /></td>
                          </tr>
          </table>
                        <%} %>
                  				 
	  </div>
      <!-- end toptel-->
    </div>
    <!-- end ntbd-->
  </div>
  <!-- end ntbg-->
  <div class="top">
    <div class="logo"><img src="qtimages/hsglogo.gif" alt="" > &nbsp;������Ϣϵͳ</div>
    <!-- end logo-->
    <div class="search">
      <form id="search" name="search" method="get" action="news.jsp">
       <input name="keyword" type="text"  class="text" placeholder="������ؼ���" maxlength="50" />
					<select name="lb" class="text2" >
                      <%
						    for(HashMap mlb:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=mlb.get("ss") %>"><%=mlb.get("ss") %></option>
							<%
							}
						   %>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="btnsubmit" type="submit" value="" >
      </form>
    </div>
    <!-- end search-->
  </div>
  <!-- end top-->
  <div  class="navgrp">
    <ul class="nav" id="nav">
      <li class="cur"><a href="index.jsp">��ҳ</a></li>
	   <li><a href="news.jsp?lb=���ι���">���ι���</a> </li>
	   	  <li><a href="lvyoujingdianlisttp.jsp">���ξ���</a> </li>
		  
     <!-- <li><a href="dx_detail.jsp?lb=ϵͳ���">ϵͳ���</a> </li>-->
	  
       <!-- <div id="navChild"> <a href="">ְҵ��ķ</a> <a href="">���Ᵽķ</a> <a href="">�߼��ܼ� </a> <a href="">��Ӥ���</a> <a href="">�ӵ����</a> <a href="">�׽̱���</a> <a href="">�ҽ����</a></div>-->
     
      
     
      <!--<li><a href="product.jsp">����չʾ</a>
        <div id="navChild"> <a href="">ְҵ��ķ</a> <a href="">�׽̱���</a> </div>
      </li>-->

	 
      <li><a href="lyblist.jsp">��������</a> </li>
	   <li><a href="userreg.jsp">�û�ע��</a>
	   <li><a href="dx_detail.jsp?lb=ϵͳ���">ϵͳ���</a>
     
	   <li><a href="login.jsp">��̨����</a> </li>
    </ul>
  </div>
  <!-- end navgrp-->
  <div class="banner">
	<ul class="slides">
	 <%
			  for(HashMap map:new CommDAO().select("select id,biaoti,shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian  like '%.jpg' order by id desc ",1,5)){
			 %>
		<li style="background:url(<%=map.get("shouyetupian") %>) 50% 0 no-repeat;"></li>
		  <%}%>
	
	</ul>
  </div>
    <script src="qtimages/jquery.flexslider-min.js"></script>
    <script>
    $(function(){
        $('.banner').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
    });
    </script>
  <!--<div class="claListBox">
    <div class="claListList">
      <div class="claListTitle">�Ƽ���Ŀ</div>
      <ul class="claListUlList">
        <li><a href="" class="claListUlListHover">ְҵ��ķ</a></li>
        <li><a href="" class="claListUlListHover">���Ᵽķ</a></li>
        <li><a href="" class="claListUlListHover">��Ӥ��� </a></li>
        <li><a href="" class="claListUlListHover">�׽̱���</a></li>
        <li><a href="" class="claListUlListHover">�ҽ����</a></li>
        <li><a href="" class="claListUlListHover">�߼��ܼ�</a></li>
	   
      </ul>
    </div>
  </div>-->
  <!-- end claListBox-->
</div>
<!-- end header-->

