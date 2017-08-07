<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@include file="/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>登录成功</title>
	<%@include file="/common/meta.jsp"%>
	 <link rel="stylesheet" href="${viewPath}/login-sso.css"  media="screen" />
</head>
<body>
<body>
    <div id="login_wrapper" class="master">
        <div class="container">
            <div class="header">
                <h1>
                    <a href="http://www.bingocc.com/index.aspx">
                        <img src="${viewPath}/images/logo.png" /></a></h1>
                <div class="link">
                    <a href="http://www.bingocc.com/Modules/Customer/Register.aspx" title="">注册</a>
                    | <a href="###" title="">登录</a> | <a href="javascript:addFavorite()" title="">加入收藏</a>
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
                         <div class="webpart-main-item" style="padding-top:40px; text-align:center;">
                        <div class="mail-steps-success">
                            <table class="success-tab">
                                <tr>
                                    <th>
                                        您的账号登录成功！
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        您现在已经可以使用为您提供的各项服务。<br />
                                        更多服务，更多功能，尽在 <a href="http://www.bingocc.com/Modules/Customer/UserCenter.aspx">我的云中心</a> <a href="${contextPath}/signon/logout">注销</a>
                                    </td>
                                </tr>
                            </table>
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
                                    <tr>
                                        <td>
                                            <div class="left-ico">
                                                <img src="${viewPath}/images/icons/link-ico1.gif" />
                                                <div class="line">
                                                </div>
                                            </div>
                                        </td>
                                        <td valign="top" class="ul-width">
                                            <ul>
                                                <li><span>产品中心</span></li>
                                                <li><a href="###" title="">云主机</a></li>
                                                <li><a href="###" title="">RDS服务</a></li>
                                                <li><a href="###" title="">系统集成方案</a></li>
                                                <li><a href="###" title="">产品价格</a></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="left-ico">
                                                <img src="${viewPath}/images/icons/link-ico2.gif" />
                                                <div class="line">
                                                </div>
                                            </div>
                                        </td>
                                        <td valign="top" class="ul-width">
                                            <ul>
                                                <li><span>客服中心</span></li>
                                                <li><a href="###" title="">常见问题</a></li>
                                                <li><a href="###" title="">安全中心</a></li>
                                                <li><a href="###" title="">资料下载</a></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="left-ico">
                                                <img src="${viewPath}/images/icons/link-ico3.gif" />
                                                <div class="line">
                                                </div>
                                            </div>
                                        </td>
                                        <td valign="top" class="ul-width">
                                            <ul>
                                                <li><span>交流中心</span></li>
                                                <li><a href="###" title="">镜像交流</a></li>
                                                <li><a href="###" title="">使用心得</a></li>
                                                <li><a href="###" title="">功能建议</a></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="left-ico">
                                                <img src="${viewPath}/images/icons/link-ico4.gif" />
                                                <div class="line">
                                                </div>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <ul>
                                                <li><span>新闻中心</span></li>
                                                <li><a href="###" title="">产品新闻</a></li>
                                                <li><a href="###" title="">热点活动</a></li>
                                                <li><a href="###" title="">系统公告</a></li>
                                            </ul>
                                        </td>
                                    </tr>
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
                Copyright &copy; 2002-2011 品高软件 版权所有<br />
                ICP备案编号：粤ICP备05028607号-2
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