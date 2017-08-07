<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@include file="/common/header.jsp"%>
<%
	String  errors  = (String)request.getAttribute("login.errors");
	boolean isError = null != errors && !"".equals(errors.trim());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><spring:message code="login.form.title"/></title>
	<%@include file="/common/meta.jsp"%>
 <meta content="品高云在线,品高云,云主机,云机器,云存储,云监控,BingoCC,IaaS,SaaS,RDS,云平台,弹性计算,云产品,云服务,创业者云,公有云,私有云下载" name="keywords" /><meta content="品高云在线BingoCC提供包时/月/年等按需购买计费的云主机服务，成本低、即租即用、创建快速、回收安全、密钥管理、安全可靠、网络隔离、避免攻击。免费服务热线4008-300-246 " name="description" />
        <link rel="stylesheet" href="${viewPath}/login-sso.css"  media="screen" />
	<script src="${viewPath}/login.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $('#randomCode').enterkeydown(function () {
	            doSubmit();
	        });
	    });
	</script>
	
</head>
<body>
    <div id="login_wrapper" class="master">
        <div class="container">
            <div class="header">
                <h1>
                    <a href="http://www.bingocc.com/index.aspx">
                        <img src="${viewPath}/images/logo.png" /></a></h1>
                <div class="link">
                    <a href="http://www.bingocc.com/Modules/Customer/Register.aspx" title="">注册</a>
                     | <a href="javascript:addFavorite()" title="">加入收藏</a>
                    | <a href="###" title="">意见反馈</a> | <a href="http://bbs.bingocc.com/index.aspx" title="">
                        论坛</a></div>
            </div>
            <div class="sitenav">
                您的位置：<a href="http://www.bingocc.com/index.aspx">首页</a> > 用户登录
            </div>
            <div class="content">
                <div class="webpart1">
                    <div class="webpart-head">
                        <div class="webpart-head-item">
                        </div>
                    </div>
                    <div class="webpart-main">
                        <div class="webpart-main-item" style="padding-bottom:30px;">
                            <div id="signin">
                                <form action="${loginAction}" method="post">
                                <div class="login" id="logins">
                                    <input type="hidden" name="LoginForm" value="yes" />
                                    <!--用户登录-->
                                    <div class="floatleft" style="width: 620px;">
                                        <div class="login_body">
                                            <% if(isError){ %>
                                            <div class="messages">
                                                <p class="error">
                                                    <%=errors %></p>
                                            </div>
                                            <% } %>
                                            <div class="group">
                                                <fieldset>
                                                    <label for="username">
                                                        <spring:message code="login.form.username" />
                                                        :</label>
                                                    <input id="username" name="username" tabindex="1" type="text" value="" class="inputtxt"/>
                                                </fieldset>
                                                <fieldset>
                                                    <label for="password">
                                                        <spring:message code="login.form.password" />
                                                        :</label>
                                                    <input id="password" name="password" tabindex="2" type="password" class="inputtxt"/>
                                                </fieldset>
                                                <fieldset>
                                                    <label for="randomCode">
                                                        <spring:message code="login.form.randomcode" />
                                                        :</label>
                                                    <input id="randomCode" name="randomCode" tabindex="3" type="text" class="inputtxt"
                                                        style="width: 80px;"/>
                                                    <input style="display: none" name="pageKey" style="width: 100px;" value="login.default" />
                                                    <img src="${contextPath}/servlet/validatecode?pageKey=login.default" onclick="refresh(this);" style="height:25px;"
                                                        align="middle" alt="看不清楚，点击获得新图片" />
                                                </fieldset>
                                            </div>
                                            <p class="buttons">
<table style=" width:200px; margin-left:130px;">
	<tr><td> <input type="button" class="btn_user_login" id="sign_in_button_standard" onclick="doSubmit();" /></td><td><a
                                                    target="_blank" href="#1" class="forget_pass">忘记密码</a></td></tr>
</table>
                                           
                                            </p>
                                        </div>
                                    </div>
                                    <!--右边-->
                                    <div class="floatleft" style="width: 270px; *margin-right: 10px;">
                                        <div class="col-1">
                                            <div class="content">
                                                <h5 style="margin-left:20px;">
                                                    还没注册帐号？</h5>
                                                <div class="pass-logo">
                                                    <div class="reg">
                                                        <div class="submit">
                                                           <a class="reg_btn"  href="http://www.bingocc.com/Modules/Customer/Register.aspx"></a>
                                                        </div>
                                                    </div>
                                                    <div class="item">
                                                    </div>
                                                    <span>使用合作网站帐号登录：</span>
                                                     <br/>
                                                     <ul class="waysList cc">
														<li style="clear: both;">
															<a href="${loginAction}&login_entry_third_party=sina_weibo" class="s4">
																<img src="${viewPath}/images/icons/sina_n.png"/>新浪微博
															</a>
														</li>
														<li style="clear: both;">
															<a href="${loginAction}&login_entry_third_party=tencent_weibo" title="使用腾讯微博登录" class="s4">
																<img src="${viewPath}/images/icons/t_weibo.png"/>腾讯微博
															</a>
														</li>
														<%-- <li style="clear: both;">
															<a href="${loginAction}&login_entry_third_party=mock" title="Mock登录" class="s4">
																<img src="${viewPath}/images/icons/t_weibo.png"/>Mock测试
															</a>
														</li> --%>
													</ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                    <div class="webpart-foot">
                        <div class="webpart-foot-item">
                        </div>
                    </div>
                </div>
                <div class="main-bottom">
                    <!--其他链接-->
                    <div class="webpart1">
                        <div class="webpart-head">
                            <div class="webpart-head-item">
                            </div>
                        </div>
                        <div class="webpart-main">
                            <div class="webpart-main-item">
    <table class="link-mian">
        <tbody>
            <tr>
                <td>
                    <div class="left-ico">
                        <img src="${viewPath}/images/icons/link-ico1.gif">
                        <div class="line">
                        </div>
                    </div>
                </td>
                <td class="ul-width" valign="top">
                    <ul>
                        <li><span>产品中心</span></li>
                        <li><a title="" href="http://www.bingocc.com/modules/order/virtual-itc.aspx">弹性计算</a></li>
                        <li><a title="" href="http://www.bingocc.com/Modules/Common/Building.aspx">RDS服务</a></li>
                        <li><a href="http://www.bingocloud.cn" target="_blank">品高云</a></li>
                        <li><a title="" href="http://www.bingocc.com/moduels/common/building.aspx">创业者云</a></li>
                    </ul>
                </td>
                <td>
                    <div class="left-ico">
                        <img src="${viewPath}/images/icons/link-ico2.gif">
                        <div class="line">
                        </div>
                    </div>
                </td>
                <td class="ul-width" valign="top">
                    <ul>
                        <li><span>客服中心</span></li>
                        <li><a title="" href="http://www.bingocc.com/modules/news/List.aspx?cid=b386888c-91d8-4435-a93c-5eeeda2963bd">
                            常见问题</a></li>
                        <li><a title="" href="http://www.bingocc.com/Modules/Common/Building.aspx">安全中心</a></li>
                        <li><a href="http://www.bingocloud.cn/Modules/Resources/PubResources.aspx" target="_blank">
                            资料下载</a></li>
                    </ul>
                </td>
                <td>
                    <div class="left-ico">
                        <img src="${viewPath}/images/icons/link-ico3.gif">
                        <div class="line">
                        </div>
                    </div>
                </td>
                <td class="ul-width" valign="top">
                    <ul>
                        <li><span>交流中心</span></li>
                        <li><a title="" href="http://bbs.bingocc.com/showforum-2.aspx">镜像交流</a></li>
                        <li><a title="" href="http://bbs.bingocc.com/showforum-8.aspx">使用心得</a></li>
                        <li><a title="" href="http://bbs.bingocc.com/showforum-4.aspx">功能建议</a></li>
                    </ul>
                </td>
                <td>
                    <div class="left-ico">
                        <img src="${viewPath}/images/icons/link-ico4.gif">
                        <div class="line">
                        </div>
                    </div>
                </td>
                <td valign="top">
                    <ul>
                        <li><span>新闻中心</span></li>
                        <li><a title="" href="http://www.bingocc.com/modules/news/index.aspx">新闻首页</a></li>
                        <li><a title="" href="http://www.bingocc.com/modules/news/list.aspx?cid=202e4373-1ff3-4d95-9e05-874fb5ecd9ac">
                            产品新闻</a></li>
                        <li><a title="" href="http://www.bingocc.com/modules/news/list.aspx?cid=5abe8aac-2550-4bb1-8d54-b9ffb2ffb76a">
                            热点活动</a></li>
                        <li><a title="" href="http://www.bingocc.com/modules/news/list.aspx?cid=536b4eaa-a155-40d0-84e5-f66842128f26">
                            系统公告</a></li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>
</div>
                        </div>
                        <div class="webpart-foot">
                            <div class="webpart-foot-item">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           <div class="footer">
    <p>
        Copyright © 2002-2012 <a href="http://www.bingosoft.net" target="_blank">品高软件</a> <a title="品高云" href="http://www.bingocloud.cn/" target="_blank"><img style="margin-bottom: -6px;" src="${viewPath}/images/icons/cloud.jpg"></a> Powered By Bingo Cloud</p>
    <p>
        ICP备案编号：粤ICP备05028607号-2</p>
</div>
        </div>
        <script language="javascript" type="text/javascript">
            function addFavorite() {
                if (document.all) {
                    try {
                        window.external.addFavorite(window.location.href, document.title);
                    } catch (e) {
                        alert("加入收藏失败，请使用Ctrl+D进行添加");
                    }

                } else if (window.sidebar) {
                    window.sidebar.addPanel(document.title, window.location.href, "");
                } else {
                    alert("加入收藏失败，请使用Ctrl+D进行添加");
                }
            }
        </script>
    </div>
</body>
</html>