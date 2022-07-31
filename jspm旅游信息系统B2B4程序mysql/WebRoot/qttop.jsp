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
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 
<div class="header">
  <div class="ntbg">
    <div class="ntbd">
     <!-- <div class="notice">
        <div class="title">网站公告：</div>
        <div class="noticenr">
          <marquee  onmouseover="this.stop()" onMouseOut="this.start()" scrollamount="2"  >
          诚信为本：市场在变，诚信永远不变...
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
                              <td  height="30" align="right" >用户名
                                <input name="username" type="text" id="username" size="10" style=" height:19px; border:solid 1px #000000; color:#666666"  placeholder="请输入用户名" />
								
                                密码
                                <input name="pwd1" type="password" id="pwd1" size="10" style=" height:19px; border:solid 1px #000000; color:#666666"  placeholder="请输入密码" />
                               权限 
                            <select name="cx" id="cx"  >
                              <option value="注册用户">注册用户</option>
                            </select>
                                验证码
                              <input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" placeholder="请输入验证码"/></td>
                              <td align="right"  style=" padding-left:3px; padding-right:3px;"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a></td>
                              <td align="right"><input type="submit" name="Submit3" value="登陆" style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" onClick="return checklog();" />
                                  <input type="button" name="Submit3" value="找回密码" onClick="javascript:location.href='zmm.asp';" style=" border:solid 1px #000000; color:#666666;width:60px; height:20px; display:none" /></td>
                            </tr>
							 <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           
                                  </script>
                          </form>
		  </table>
						   <%}else{ %>
                        <table width="460" height="30" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="30" align="right" valign="middle">用户名:<%=request.getSession().getAttribute("username")%>；您的权限:<%=request.getSession().getAttribute("cx")%>
                                <input type="button" name="Submit" value="退出" onClick="location.href='logout.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" />
                            <input type="button" name="Submit2" value="个人后台" onClick="location.href='main.jsp';"  style=" border:solid 1px #000000; color:#666666; width:60px; height:20px;" /></td>
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
    <div class="logo"><img src="qtimages/hsglogo.gif" alt="" > &nbsp;旅游信息系统</div>
    <!-- end logo-->
    <div class="search">
      <form id="search" name="search" method="get" action="news.jsp">
       <input name="keyword" type="text"  class="text" placeholder="请输入关键字" maxlength="50" />
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
      <li class="cur"><a href="index.jsp">首页</a></li>
	   <li><a href="news.jsp?lb=旅游攻略">旅游攻略</a> </li>
	   	  <li><a href="lvyoujingdianlisttp.jsp">旅游景点</a> </li>
		  
     <!-- <li><a href="dx_detail.jsp?lb=系统简介">系统简介</a> </li>-->
	  
       <!-- <div id="navChild"> <a href="">职业保姆</a> <a href="">涉外保姆</a> <a href="">高级管家 </a> <a href="">育婴早教</a> <a href="">钟点服务</a> <a href="">幼教保育</a> <a href="">家教外教</a></div>-->
     
      
     
      <!--<li><a href="product.jsp">案例展示</a>
        <div id="navChild"> <a href="">职业保姆</a> <a href="">幼教保育</a> </div>
      </li>-->

	 
      <li><a href="lyblist.jsp">在线留言</a> </li>
	   <li><a href="userreg.jsp">用户注册</a>
	   <li><a href="dx_detail.jsp?lb=系统简介">系统简介</a>
     
	   <li><a href="login.jsp">后台管理</a> </li>
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
      <div class="claListTitle">推荐项目</div>
      <ul class="claListUlList">
        <li><a href="" class="claListUlListHover">职业保姆</a></li>
        <li><a href="" class="claListUlListHover">涉外保姆</a></li>
        <li><a href="" class="claListUlListHover">育婴早教 </a></li>
        <li><a href="" class="claListUlListHover">幼教保育</a></li>
        <li><a href="" class="claListUlListHover">家教外教</a></li>
        <li><a href="" class="claListUlListHover">高级管家</a></li>
	   
      </ul>
    </div>
  </div>-->
  <!-- end claListBox-->
</div>
<!-- end header-->

