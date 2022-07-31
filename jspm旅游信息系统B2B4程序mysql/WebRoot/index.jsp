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
    <div class="Ttitle">旅游景点 <span>Hot</span>
      <div class="Tmore"> <a href="lvyoujingdianlist.jsp">查看更多 +</a> </div>
    </div>
    <!-- end Ttitle-->
  
  </div>
  <!-- end TtitleBox-->
  <div class="casebg">
    <div id="casePicUlId">
      <div class="casePicUlIdBox htmlpic1">
        <ul class="casePicUl">
		 <%
										
    for(HashMap map:new CommDAO().select("select * from lvyoujingdian  order by id desc ",1,5)){
	
     %>
          <li>
            <div class="title"><%=map.get("jingdianmingcheng")%></div>
            <div class="pic"><img src="<%=map.get("jingdianzhaopian")%>" alt="" width="219" height="170" class="PicAuto"></div>
            <div class="intro">简介：<%=map.get("jingdianjianjie")%> ￥<%=map.get("piaojia")%></div>
            <div class="more"><a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>">详情+</a></div>
          </li>
		   <%
							}
							%>
         
		  
		</ul>
      </div>
      <!-- end casePicUlId-->
     
      <!-- end casePicUlId-->
    </div>
    <!-- end casePicUlIdBox-->
	
	
	
	
  </div>


  
  <!-- end casePic-->
</div>
<div class="section">
  <div class="kcBox clear-fix">
    <div class="knowList clear-fix">
      <div class="Ttitle">旅游攻略 <span>News</span>
        <div class="Tmore"> <a href="news.jsp?lb=旅游攻略">查看更多 +</a> </div>
      </div>
      <!-- end Ttitle-->
      <ul class="knowListUl">
	  <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='旅游攻略' order by id desc ",1,4)){
	
     %>
	          <li><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),24)%></a><span><%=map.get("addtime").toString().substring(0,10) %></span> </li>
			   <%
							}
							%>
               
              </ul>
      <!-- end knowListUl-->
    </div>
    <!-- end knowList-->
    <div class="contact">
      <div class="numTel">400-0000-000</div>
      <dl>
        <dt>手&nbsp;&nbsp;&nbsp;机：</dt>
        <dd>12312312312</dd>
      </dl>
      <dl>
        <dt>电&nbsp;&nbsp;&nbsp;话：</dt>
        <dd>0000-00000000</dd>
      </dl>
      <dl>
        <dt>邮&nbsp;&nbsp;&nbsp;箱：</dt>
        <dd>aaaaaaaa@aa.com</dd>
      </dl>
      <dl>
        <dt>地&nbsp;&nbsp;&nbsp;址：</dt>
        <dd>xxxxxxxxxxxxxxxxxxxx</dd>
      </dl>
	  <dl>
        <dt>联系人：</dt>
        <dd>何总</dd>
      </dl>
      <div class="conMore"><a href="">更多 +</a></div>
    </div>
    <!-- end contact-->
  </div>
  <!-- end kcBox-->
</div>

<div class="section proBg">
  <div class="inProBd">
    <div class="Ttitle2">景点推荐 <span>SALE</span>
      <div class="Tmore2"> <a href="lvyoujingdianlisttp.jsp">查看更多 +</a> </div>
    </div>
    <!-- end Ttitle-->
    <div class="proListPic" >
      <ul class="clear-fix">
	   <%
										
    for(HashMap map:new CommDAO().select("select * from lvyoujingdian  order by id desc ",1,4)){
	
     %>
        <li>
          <div class="pic"><img src="<%=map.get("jingdianzhaopian")%>" width="288" height="230" alt=""  class="PicAuto"></div>
          <div class="title"><%=map.get("jingdianmingcheng")%></div>
          <div class="intro"> <a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>"> <span><%=map.get("jingdianmingcheng")%></span>
            <p><%=Info.ensubStr(map.get("diliweizhi"),40)%></p>
            </a> </div>
        </li>
		 <%
							}
							%>
		
      </ul>
    </div>
	
	
    <script>
	$(".proListPic ul li").hover(function(){
  	 var $abc = $(this);
  	 $abc.find(".title").stop(true,true).slideUp("fast",function(){$abc.find(".intro").slideDown("fast");})  
  },function(){
  	 var $abc = $(this);
  	 $abc.find(".title").stop(true,true);
     $abc.find(".intro").stop(true,true).slideUp("fast",function(){$abc.find(".title").slideDown("fast");})
  })
  </script>
    <!-- end proListPic-->
  </div>
  <!-- end inProBd-->
</div>
<div class="section">
  <div class="company clear-fix">
    <div class="Ttitle">关于我们 <span>about us</span>
      <div class="Tmore"> <a href="dx_detail.jsp?lb=关于我们">更多 +</a> </div>
    </div>
    <!-- end Ttitle-->
    <div class="companyCon">
      <div class="companyPic"><img src="qtimages/about.jpg" alt="" width="190" height="190" class="PicAuto"></div>
      <div class="companyConFont"> <span>关于我们</span>
	  <span style="font-family:Simsun;line-height:20px;background-color:#FFFFFF;"><% HashMap m2 = new CommDAO().getmaps("leibie","关于我们","dx");out.print(m2.get("content")); %></span>	  </div>
      <!-- end companyConFont -->
    </div>
    <!-- end companyCon -->
  </div>
  <!-- end company -->
</div>

<%@ include file="qtdown.jsp"%>
</body>
</html>


