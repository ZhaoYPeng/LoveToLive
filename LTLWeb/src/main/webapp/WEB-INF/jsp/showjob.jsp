﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>打磨工,人才招聘 - 装饰公司</title>
    <meta content="人才招聘,全职,1年经验, " name="keywords"/>
    <meta content="精通打磨流程" name="description"/>
    <link rel="stylesheet" type="text/css" href="style/css/style.css"/>
    <script type="text/javascript" src="style/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="style/js/lang-chi.min.js"></script>
    <script type="text/javascript" src="style/js/common.min.js"></script>
    <script type="text/javascript" src="style/js/overlay.min.js"></script>
</head>
<body>
<div id="doc">
    <div id="hd">
        <div class="clearfix pagetitle">
            <h1 class="sitename"><a href="首页index.html" title="装饰公司"><img class="ifixpng" src="style/images/logo.png"
                                                                          alt="装饰公司"/></a></h1>
            <div class="language">
                <div class="language-inner"><span>中文</span> | <a href="/?language=eng">English</a></div>
            </div>
        </div>
        <div class="clearfix sitenav">
            <div class="clearfix menu-main">
                <ul id="menuSitenav" class="clearfix">
                    <li class="first-item"><a href="首页index.html" class="home"><span>首页</span></a></li>
                    <li><a href="公司介绍about.html" target="_self"><span>公司介绍</span></a></li>
                    <li><a href="产品列表页products.html" target="_self"><span>产品管理</span></a></li>
                    <li><a href="新闻列表页news.html" target="_self"><span>新闻动态</span></a></li>
                    <li><a href="下载列表页down.html" target="_self"><span>下载专区</span></a></li>
                    <li><a href="job.jsp" target="_self"><span>人才招聘</span></a></li>
                    <li><a href="联系我们contact.html" target="_self"><span>联系我们</span></a></li>
                    <li class="last-item"><a href="留言页guestbook.html" target="_self"><span>留言系统</span></a></li>
                </ul>
            </div>
        </div>
        <div id="sys-banner">
            <div id="banner-main" class="banner banner-main">
                <div class="banner-inner">
                    <object type="application/x-shockwave-flash"
                            data="img/pixviewer.swf?xml=<data><config><isShowTitle>0</isShowTitle><autoPlayTime>5</autoPlayTime></config><channel><item><link></link><image>images/0411412705084558.jpg</image><title></title></item><item><link></link><image>images/0411412792102139.jpg</image><title></title></item><item><link></link><image>images/0411412884267611.jpg</image><title></title></item></channel></data>"
                            height="360" width="100%">
                        <param name="movie" id="vcastr3"
                               value="img/pixviewer.swf?xml=<data><config><isShowTitle>0</isShowTitle><autoPlayTime>5</autoPlayTime></config><channel><item><link></link><image>images/0411412705084558.jpg</image><title></title></item><item><link></link><image>images/0411412792102139.jpg</image><title></title></item><item><link></link><image>images/0411412884267611.jpg</image><title></title></item></channel></data>"/>
                        <param name="wmode" value="opaque"/>
                    </object>
                </div>
            </div>
        </div>
    </div>
    <div id="bd">
        <div id="innerpg" class="bd-inner">
            <div class="clearfix layout-innerpg ">
                <div class="col-main">
                    <div class="main-wrap">
                        <div id='jobs-view' class="block first-block block-offer-detail">
                            <div class="block-head">
                                <div class="head-inner">
                                    <h2 class="title">查看职位</h2>
                                    <div class="links"><a href="job.jsp">更多</a></div>
                                </div>
                            </div>
                            <div class="block-content clearfix">
                                <div class="detail-head clearfix">
                                    <h1 class="title">招聘：<span>${advertise.position}</span></h1>
                                    <div class="date">更新时间：${advertise.releasedate}</div>
                                </div>
                                <%--提交简历表单--%>
                                <form action="resume" method="post">
                                    <div class="detail-list">
                                        <div class="item">部门：${advertise.department}</div>
                                        <div class="item">地区：${advertise.area}</div>
                                        <div class="item">招聘人数：${advertise.number}</div>
                                        <div class="item">招聘类型：${advertise.type}</div>
                                        <div class="item">教育：<input type="text" name="education" id="education"/></div>
                                        <div class="item">经验：<input type="text" name="experience" id="experience"/></div>
                                    </div>
                                    <div class="detail-list">
                                        <div class="item">联系人：<input type="text" name="pname" id="pname"/></div>
                                        <div class="item">电&nbsp;&nbsp;&nbsp;话：<input type="text" name="phone" id="phone"/></div>
                                        <div class="item">邮&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email" id="email"/></div>

                                          <a class="btnwrap btn-h30 btn-resume"  title="提交简历"><span class="btn-inner"><input type="submit" style="border:none;background:none;cursor:pointer;padding-top: 5px" value="提交简历" /></span></a>


                                    </div>
                                </form>
                            </div>
                            <div class="block-foot">
                                <div>
                                    <div>-</div>
                                </div>
                            </div>
                        </div>
                        <div id='jobs-1' class="block">
                            <div class="block-head">
                                <div class="head-inner">
                                    <h2 class="title">描述</h2>
                                </div>
                            </div>
                            <div class="block-content clearfix">
                                <div class="content-text"> ${advertise.description}</div>
                            </div>
                            <div class="block-foot">
                                <div>
                                    <div>-</div>
                                </div>
                            </div>
                        </div>
                        <div id='jobs-2' class="block">
                            <div class="block-head">
                                <div class="head-inner">
                                    <h2 class="title">需求</h2>
                                </div>
                            </div>
                            <div class="block-content clearfix">
                                <div class="content-text"> ${advertise.requirement}</div>
                            </div>
                            <div class="block-foot">
                                <div>
                                    <div>-</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sub">
                    <div class="block first-block block-products " id="block-products-42772" rel="42772">
                        <div class="block-head">
                            <div class="head-inner">
                                <h2 class="title">产品分类</h2>
                                <div class="links"><a class="more" href="产品列表页products.html">更多</a></div>
                            </div>
                        </div>
                        <div class="block-content clearfix">
                            <div class="item-list">
                                <ul class="clearfix">
                                    <li><a title="【密度板会议桌系列】" href="产品列表页products.html">【密度板会议桌系列】</a></li>
                                    <li><a title="【办公装饰家具系列】" href="产品列表页products.html">【办公装饰家具系列】</a></li>
                                    <li><a title="【展览展台家具系列】" href="产品列表页products.html">【展览展台家具系列】</a></li>
                                    <li><a title="【橱窗柜台家具系列】" href="产品列表页products.html">【橱窗柜台家具系列】</a></li>
                                    <li><a title="【商业空间家具系列】" href="产品列表页products.html">【商业空间家具系列】</a></li>
                                    <li><a title="【家庭装饰家具系列】" href="产品列表页products.html">【家庭装饰家具系列】</a></li>
                                    <li><a title="【最新推荐家具系列】" href="产品列表页products.html">【最新推荐家具系列】</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="block-foot">
                            <div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="ft">
        <div class="ft-inner">
            <div class="ft-menu" id="ft-menu"><a href="联系我们contact.html" target="_self">联系我们</a> | <a
                    href="公司介绍about.html" target="_self">公司介绍</a> | <a href="新闻列表页news.html" target="_self">网站新闻</a> |
                <a href="留言页guestbook.html" target="_self">留言系统</a> | <a href="友情链接links.html" target="_self">友情链接</a>
            </div>
            <div class="siteinfo" id="ft-siteinfo"><a href="http://www.miibeian.gov.cn/"></a>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
