<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<table id="__01" width="255" height="685" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table id="__01" width="255" height="266" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="255" height="45" background="qtimages/11_02_01_01_01.gif"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="19%">&nbsp;</td>
            <td width="81%"><span class="STYLE4">系统公告</span></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table id="__01" width="255" height="204" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><img src="qtimages/11_02_01_01_02_01.gif" width="18" height="204" /></td>
            <td width="224" height="204"><marquee border="0" direction="up" height="100%" onmouseout="start()" onmouseover="stop()"
                scrollamount="1" scrolldelay="50">
             <% HashMap m1 = new CommDAO().getmaps("leibie","系统公告","dx");out.print(Info.ensubStr(m1.get("content"),185)); %>
              </marquee>
            </td>
            <td><img src="qtimages/11_02_01_01_02_03.gif" width="13" height="204" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="qtimages/11_02_01_01_03.gif" width="255" height="17" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="__01" width="255" height="419" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="255" height="48" background="qtimages/11_02_01_02_01.gif"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="18%" height="20">&nbsp;</td>
            <td width="82%" valign="bottom"><span class="STYLE4">点击排行</span></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table id="__01" width="255" height="357" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="17" background="qtimages/11_02_01_02_02_01.gif">&nbsp;</td>
            <td width="226" height="357" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
             <%
						 int ti=0;
						// for(HashMap map:new CommDAO().select("select id,biaoti,shouyetupian from xinwentongzhi  order by dianjilv desc ",1,6)){
						 for(HashMap map:new CommDAO().select("select * from xinwentongzhi order by id desc",1,13)){
	
		
		%>
                              <tr height="25">
                                <td width="8%" align="center" class="newslist"><img height="7" src="qtimages/1.jpg" width="7" /></td>
								<%
								if (ti<3)
								{
								%>
								<td style="height:14px; line-height:14px; font-size:11px; font-weight:bold;" align="center"><div style='width:14px;height:13px;background:url(qtimages/i_u_1.gif) no-repeat; color:#ffffff'><% out.print(ti+1);%></div></td>
								<%
								}
								else
								{
								%>
								<td style="height:14px; line-height:14px; font-size:11px; font-weight:bold;" align="center"><div style='width:14px;height:13px;background:url(qtimages/i_u_0.gif) no-repeat; color:#ffffff'><% out.print(ti+1);%></div></td>
								<%
								}
								%>
                                <td width="92%" class="newslist">&nbsp;<a href="gg_detail.jsp?id=<%=map.get("id")%>">
                               <%=Info.ensubStr(map.get("biaoti"),12)%>
                                </a></td>
                              </tr>
                             	<%
								ti++;
		
	}
	%>
            </table></td>
            <td width="12" background="qtimages/11_02_01_02_02_03.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="qtimages/11_02_01_02_03.gif" width="255" height="14" /></td>
      </tr>
    </table></td>
  </tr>
</table>


