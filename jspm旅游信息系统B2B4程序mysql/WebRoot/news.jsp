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
  String lb=request.getParameter("lb");
  //String lb=new String(request.getParameter("lb").getBytes("8859_1"));
%>
<body>
<%@ include file="qttop.jsp"%>

<div class="section">
  <div class="kcBox clear-fix">
    <div class="knowListhsg clear-fix">
      <div class="Ttitle"><%=lb%> <span>News</span>
        <div class="Tmore">  </div>
      </div>
      <!-- end Ttitle-->
      <ul class="knowListUl">
	 <% 
    String url = "news.jsp?lb="+lb; 
    String sql =  "select * from xinwentongzhi where leibie='"+lb+"' ";
	if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("keyword").trim()+"%'";}

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
	          <li><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),24)%></a><span><%=map.get("addtime").toString().substring(0,10) %></span> </li>
			    <%} %>
				
				<br>
                 ${page.info } 
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


<%@ include file="qtdown.jsp"%>
</body>
</html>

