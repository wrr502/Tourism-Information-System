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
<body>
<%@ include file="qttop.jsp"%>





<div class="section ">
  <div class="TtitleBox">
    <div class="Ttitle">���ξ��� <span>Hot</span>
      <div class="Tmore"> <a href="lvyoujingdianlist.jsp">�鿴���� +</a> </div>
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
            <div class="intro">��飺<%=map.get("jingdianjianjie")%> ��<%=map.get("piaojia")%></div>
            <div class="more"><a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>">����+</a></div>
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
      <div class="Ttitle">���ι��� <span>News</span>
        <div class="Tmore"> <a href="news.jsp?lb=���ι���">�鿴���� +</a> </div>
      </div>
      <!-- end Ttitle-->
      <ul class="knowListUl">
	  <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='���ι���' order by id desc ",1,4)){
	
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
        <dt>��&nbsp;&nbsp;&nbsp;����</dt>
        <dd>12312312312</dd>
      </dl>
      <dl>
        <dt>��&nbsp;&nbsp;&nbsp;����</dt>
        <dd>0000-00000000</dd>
      </dl>
      <dl>
        <dt>��&nbsp;&nbsp;&nbsp;�䣺</dt>
        <dd>aaaaaaaa@aa.com</dd>
      </dl>
      <dl>
        <dt>��&nbsp;&nbsp;&nbsp;ַ��</dt>
        <dd>xxxxxxxxxxxxxxxxxxxx</dd>
      </dl>
	  <dl>
        <dt>��ϵ�ˣ�</dt>
        <dd>����</dd>
      </dl>
      <div class="conMore"><a href="">���� +</a></div>
    </div>
    <!-- end contact-->
  </div>
  <!-- end kcBox-->
</div>

<div class="section proBg">
  <div class="inProBd">
    <div class="Ttitle2">�����Ƽ� <span>SALE</span>
      <div class="Tmore2"> <a href="lvyoujingdianlisttp.jsp">�鿴���� +</a> </div>
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
    <div class="Ttitle">�������� <span>about us</span>
      <div class="Tmore"> <a href="dx_detail.jsp?lb=��������">���� +</a> </div>
    </div>
    <!-- end Ttitle-->
    <div class="companyCon">
      <div class="companyPic"><img src="qtimages/about.jpg" alt="" width="190" height="190" class="PicAuto"></div>
      <div class="companyConFont"> <span>��������</span>
	  <span style="font-family:Simsun;line-height:20px;background-color:#FFFFFF;"><% HashMap m2 = new CommDAO().getmaps("leibie","��������","dx");out.print(m2.get("content")); %></span>	  </div>
      <!-- end companyConFont -->
    </div>
    <!-- end companyCon -->
  </div>
  <!-- end company -->
</div>

<%@ include file="qtdown.jsp"%>
</body>
</html>


