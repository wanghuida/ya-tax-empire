<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0025)http://www.huawei.com/cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script type="text/javascript" async="" src="[!--news.url--]skin/default/js/ga.js">

    </script><script type="text/javascript">
        var _U = "undefined";
        var g_HttpRelativeWebRoot = "/";
        var SSContributor = false;
        var SSForceContributor = false;
        var SSHideContributorUI = false;
        var ssUrlPrefix = "./";

        var ssUrlType = "2";

        var g_navNode_Path = new Array();
        g_navNode_Path[0] = '1';
        var g_ssSourceNodeId = "1";
        var g_ssSourceSiteId = "cn";
        var g_strLanguageId = "en";
    </script>

    <title>[!--pagetitle--]</title>
    <meta name="keywords" content="[!--pagekey--]" />
    <meta name="description" content="[!--pagedes--]" />

    <script type="text/javascript" src="[!--news.url--]skin/default/js/sitenavigationfunctions.js" id="SSNavigationFunctionsScript"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/sitenavigation.js" id="SSNavigationScript"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/wcm.toggle.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/ssajax.js"></script>
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">

    <script type="text/javascript" src="[!--news.url--]skin/default/js/leftnav.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery_oracle_ucm.js"></script>

    <script type="text/javascript" src="[!--news.url--]skin/default/js/ui.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/suggestword.js"></script>

    <script type="text/javascript" src="[!--news.url--]skin/default/js//cn.suggest_query_words.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/wcm.toggle.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/ssajax.js"></script>


    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.autocomplete.css" type="text/css" media="screen, project, print">

    <script id="ssInfo" type="text/xml" warning="DO NOT MODIFY!">
        <ssinfo >
            <fragmentinstance  id="fragment1" fragmentid="FG_CN_GROUP_Header" library="server:FRAGMENTS_CN_HW">
            </fragmentinstance>
            <fragmentinstance  id="fragment2" fragmentid="FG_CN_GROUP_Seofooter" library="server:FRAGMENTS_CN_HW">
            </fragmentinstance>
            <fragmentinstance  id="fragment3" fragmentid="FG_CN_GROUP_Footer" library="server:FRAGMENTS_CN_HW">
            </fragmentinstance>

    </script>

    <style type="text/css">@media print { #feedlyMiniIcon { display: none; } }
    </style>

</head>
<body>


<link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
<link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.autocomplete.css" type="text/css" media="screen, project, print">
<script type="text/javascript" src="[!--news.url--]skin/default/js/ui.js"></script>
<script type="text/javascript" src="[!--news.url--]skin/default/js/cn.suggest_query_words.js"></script>
<script type="text/javascript" src="[!--news.url--]skin/default/js/suggestword.js"></script>
<script type="text/javascript" src="[!--news.url--]skin/default/js/jquery_oracle_ucm.js"></script>
<script type="text/javascript" src="[!--news.url--]skin/default/js/sitenavigation.js" id="SSNavigationScript"></script>
<script type="text/javascript" src="[!--news.url--]skin/default/js/sitenavigationfunctions.js" id="SSNavigationFunctionsScript"></script>

<!-- SS_BEGIN_SNIPPET(fragment1,group-header)-->
<div id="header">
    <div class="bound">
        <a href="/" id="logo">
            <img title="首页" src="[!--news.url--]skin/default/images/logo_cn.gif"></a>
        <div class="topnav">
            <div class="log">
                <!--change iframe to ajax start-->

                <img src="[!--news.url--]skin/default/images/hw_000470.gif">
				<span id="sslogoff" style="display: none;">

					<a id="aLogout">退出</a>
					<img src="[!--news.url--]skin/default/images/hw_000470.gif">
				</span>
				<span id="sslogon" style="">
			 		<a id="aLogin">登录</a>
			 		<img src="[!--news.url--]skin/default/images/hw_000470.gif">
				</span>

            </div>

            <script language="JavaScript">

                function getCookie(name){
                    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
                    if(arr != null) return unescape(arr[2]); return null;
                }



                $(function() {
                    var isInd = "industry" ;
                    if(isInd==""||isInd===""){
                        $("#menu > .bound > .about_huawei > a").css({ color: "#bb0000"});
                    }
                    if(cn_HeaderSearchTags){
                        $("#search-box-h").autocomplete({
                            source: cn_HeaderSearchTags
                        });
                    }
                });
                $(document).ready(function() {
                    var ssc = getCookie("ssc");
                    if ( ssc != null && ssc != "null" && ssc != "" && ssc != "0")
                    {
                        var sscArray = ssc.split(":");
                        var userName = sscArray[0];
                        $("#sslogoff").show();
                        $("#sslogon").hide();
                    }
                    else
                    {
                        var ssf = getCookie("sid");
                        var ssb = getCookie("login_sid");

                        if  ( ( ssf != null && ssf != "null" && ssf != "" && ssf != "0") ||
                                ( ssb != null && ssb != "null" && ssb != "" && ssb != "0") )
                        {
                            $.ajax({
                                type:"POST",
                                url:"/ilink/cn/my-huawei/Login/index.htm",
                                dataType:"text",
                                data:"isAjax=1",
                                success:function(data){
                                    if (data != null && data !="" && data !="anonymous")
                                    {
                                        loadUserInfo(data);
                                        $("#sslogoff").show();
                                        $("#sslogon").hide();
                                    }
                                    else
                                    {
                                        $("#sslogoff").hide();
                                        $("#sslogon").show();
                                    }
                                },

                                error:function(lEx){
                                    $("#sslogoff").hide();
                                    $("#sslogon").show();
                                },

                                timeout:10000

                            });
                        }
                        else
                        {
                            $("#sslogoff").hide();
                            $("#sslogon").show();
                        }
                    }
                    var pURL = window.location;
                    var gothisURL = '/ilink/logout?originalURL='+pURL;
                    var gothisURLout = '/ilink/login?originalURL='+pURL;
                    var regURL= 'https://uniportal.huawei.com/accounts/register.do?method=toRegister&nls=zh&appurl='+pURL;
                    $("#aLogout").click(function(){
                        window.location=gothisURL;

                    });
                    $("#bLogin").click(function(){
                        window.location=gothisURLout;

                    });

                    $("#aLogin").click(function(){
                        window.location=gothisURLout;

                    });
                    $("#reg").click(function(){
                        window.location=regURL;

                    });
                });

            </script>

            <!--change iframe to ajax end-->
            <div class="alone">
                <div class="search" id="search_1">
                    <form action="http://www.huawei.com/ilink/cn/search/index.htm" method="post" id="SEARCH_BOX" name="SEARCH_BOX">

                        <input type="text" name="ssUserText" id="search-box-h" class="text ui-autocomplete-input" onkeypress="if(event.keyCode==&#39;13&#39;) return(Usearch());" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">
                        <a onclick="javascript:Usearch();" title="Search" id="searchButton"></a>
                    </form>
                </div><div class="auto"><div class="ico"></div><div class="List_Box"><ul class="List_Box_Ul"></ul></div></div>
            </div>
        </div>
    </div>
</div>

<div id="menu">
<div class="nav">
<ul>
<li is="menuindex">
    <a iblk="行业洞察" href="javascript:void(0);" class="trad"><span>行业洞察</span></a>
    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="taxonomy">
                    <li><a href="http://www.huawei.com/cn/industry/customer-voices/index.htm" class="topfrx">客户声音</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/consumer-lab/index.htm" class="topfrx">消费者研究</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm" class="topfrx">创新</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/huawei-voices/index.htm" class="topfrx">热点技术</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/standards-contributions/index.htm" class="topfrx">标准与行业贡献</a></li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm"><img height="140"
                                                                                                  width="259" src="[!--news.url--]skin/default/images/hw_148147.jpg"></a></li>
                    <li class="title"><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm">宇内极速，200G的狂欢</a></li>
                    <li class="summary">
                        <ul>
                            <li>在TG2012的6天时间里，超过6500名全球电脑爱好者，疯狂地在高达200Gbps这一史无前例的极速世界里“争抢着”流量，上演了一场极速狂欢。</li>
                        </ul>
                    </li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm"><img height="140" width="259"
                                                                                                  src="[!--news.url--]skin/default/images/hw_s_223305.gif"></a></li>
                    <li class="title"><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm">沃达丰与华为联合创新成果</a></li>
                    <li class="summary">
                        <ul>
                            <li>从2006年至今，沃达丰与华为共同创立了6个联合创新中心，创造了业界极有价值的技术和服务，巩固了沃达丰作为最具创新能力电信运营商的地位。</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="shadow_b_layout"><div></div></div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="方案与产品" href="javascript:void(0);" class="solutions_products"><span>方案与产品</span></a>
    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="solutions_products clearfix">
                <ul class="list last">
                    <h2><a href="http://www.huawei.com/cn/carrier/index.htm" target="_blank">运营商</a></h2>
                    <li class="left">
                        <ul>
                            <h3><a href="http://www.huawei.com/cn/solutions/index.htm" target="_blank">方案</a></h3>
                            <li><a href="http://www.huawei.com/cn/solutions/index-tab1.htm" target="_blank">增加收益</a></li>
                            <li><a href="http://www.huawei.com/cn/solutions/index-tab2.htm" target="_blank">更宽更智能</a></li>
                            <li><a href="http://www.huawei.com/cn/solutions/index-tab3.htm" target="_blank">提升运营效率</a></li>
                            <li><a href="http://www.huawei.com/cn/solutions/index-tab4.htm" target="_blank">节能减排</a></li>
                            <h3><a href="http://www.huawei.com/cn/services/index.htm" target="_blank">服务</a></h3>
                            <li><a href="http://www.huawei.com/cn/services/hw-u_179435.htm" target="_blank">商业咨询</a></li>
                            <li><a href="http://www.huawei.com/cn/services/index-tab2.htm" target="_blank">网络集成</a></li>
                            <li><a href="http://www.huawei.com/cn/services/index-tab3.htm" target="_blank">保障与管理服务</a></li>
                            <li><a href="http://www.huawei.com/cn/services/index-tab4.htm" target="_blank">学习与能力发展</a></li>
                            <li><a href="http://www.huawei.com/cn/services/index-tab5.htm" target="_blank">全球交付</a></li>

                        </ul>
                    </li>
                    <li class="left last">
                        <ul class="last">
                            <h3><a href="http://www.huawei.com/cn/products/index.htm" target="_blank">产品</a></h3>
                            <li><a href="http://www.huawei.com/cn/products/fixed-access/index.htm" target="_blank">固定接入</a></li>
                            <li><a href="http://www.huawei.com/cn/products/radio-access/index.htm" target="_blank">无线接入</a></li>
                            <li><a href="http://www.huawei.com/cn/products/core-network/index.htm" target="_blank">核心网</a></li>
                            <li><a href="http://www.huawei.com/cn/products/transport-network/index.htm" target="_blank">传送网</a></li>
                            <li><a href="http://www.huawei.com/cn/products/data-communication/index.htm" target="_blank">数据通信</a></li>
                            <li><a href="http://www.huawei.com/cn/products/software/index.htm" target="_blank">业务与软件</a></li>
                            <li><a href="http://www.huawei.com/cn/products/security-storage/index.htm" target="_blank">存储与网络安全</a></li>
                            <li><a href="http://www.huawei.com/cn/products/oss/index.htm" target="_blank">OSS</a></li>
                            <li><a href="http://www.huawei.com/cn/products/energy-infrastructure/index.htm" target="_blank">网络能源产品线</a></li>

                        </ul>
                    </li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="list last">
                    <h2><a href="http://enterprise.huawei.com/cn/" target="_blank">企业</a></h2>
                    <li class="left">
                        <ul>
                            <h3><a href="http://enterprise.huawei.com/cn/products/index.htm?navi=0" target="_blank">产品</a></h3>
                            <li><a href="http://enterprise.huawei.com/cn/products/network/router/index.htm" target="_blank">基础网络</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/products/coll-communication/union-comuni/index.htm" target="_blank">统一通信与协作</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/products/itapp/server/index.htm" target="_blank">IT基础设施</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/products/security/network-security/index.htm" target="_blank">安全</a></li>
                            <h3><a href="http://enterprise.huawei.com/cn/solutions/index.htm?navi=1" target="_blank">方案</a></h3>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/basenet/intranet/index.htm" target="_blank">IP基础网络</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/multimediasolu/uc/index.htm?node=4&child=0" target="_blank">统一通信与协作</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/datacenter/desktop-cloud/index.htm" target="_blank">数据中心网络</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/cloudcomputing/desktop-cloud/index.htm" target="_blank">IT解决方案</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/Security/professional-security-services/index.htm" target="_blank">安全</a></li>
                        </ul>
                    </li>
                    <li class="left">
                        <ul class="last">

                            <h3><a href="http://enterprise.huawei.com/cn/solutions/trade/governmen/index.htm" target="_blank">行业解决方案</a></h3>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/governmen/index.htm" target="_blank">政府</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/finance/index.htm" target="_blank">金融</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/electricity/index.htm" target="_blank">电力</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/transportation/index.htm" target="_blank">交通</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/energy/index.htm" target="_blank">能源</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/manufacturing-industry/index.htm" target="_blank">制造</a></li>
                            <li><a href="http://enterprise.huawei.com/cn/solutions/trade/hospitality/index.htm" target="_blank">酒店</a></li>

                        </ul>
                    </li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <h2><a href="http://www.huaweidevice.com/cn/" target="_blank">个人消费者</a></h2>
                    <li><a href="http://www.huaweidevice.com/cn/productFeatures.do?pinfoId=2957&directoryId=5005&treeId=3677&tab=0"
                           target="_blank"><img height="144" width="217"
                                                src="[!--news.url--]skin/default/images/hw_s_223306.gif"></a></li>
                    <li class="summary">
                        <ul>
                            <li class="left">
                                <ul>
                                    <li><a href="http://www.huaweidevice.com/cn/productMobile.do?method=index&directoryId=5005&treeId=3677" target="_blank">智能手机</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5011&treeId=3470" target="_blank">平板电脑</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5009&treeId=3745" target="_blank">Mobile Wi-Fi</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5008&treeId=541" target="_blank">上网卡</a></li>
                                </ul>
                            </li>
                            <li class="left last">
                                <ul>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5013&treeId=183" target="_blank">家庭网关</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5014&treeId=562" target="_blank">机顶盒</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5012&treeId=3466" target="_blank">宽带猫</a></li>
                                    <li><a href="http://www.huaweidevice.com/cn/productFamily.do?method=index&directoryId=5016&treeId=3153" target="_blank">数码相框</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
            <div class="shadow_b_layout"><div></div></div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="技术支持" href="javascript:void(0);" class="support"><span>技术支持</span></a>
    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="support clearfix">
                <ul class="list">
                    <h2><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">运营商</a></h2>
                    <li><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">知识中心</a></li>
                    <li><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">软件中心</a></li>
                    <li><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">网络运行保障</a></li>
                    <li><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">专题搜索</a></li>
                    <li><a href="http://support.huawei.com/support/lang.jsp?lang=zh" target="_blank">HedEx Lite</a></li>
                    <li><a href="http://support.huawei.com/support/ForumCenterIndex.do?colID=ROOTWEB|CO0000000066" target="_blank">论坛</a></li>
                    <li><a href="http://support.huawei.com/support/pages/training/trainingCol.do?actionFlag=showHtmlAreaContentMiddle&colID=ROOTWEB|CO0000002835" target="_blank">培训</a></li>
                </ul>
                <ul class="list">
                    <h2><a href="http://support.huawei.com/enterprise/lang.jsp?lang=zh&forward=http%3A%2F%2Fsupport.huawei.com%2Fenterprise%2F" target="_blank">企业</a></h2>
                    <li><a href="http://support.huawei.com/enterprise/lang.jsp?lang=zh&forward=http%3A%2F%2Fsupport.huawei.com%2Fenterprise%2Fproductsupport" target="_blank">产品支持</a></li>
                    <li><a href="http://support.huawei.com/enterprise/lang.jsp?lang=zh&forward=http%3A%2F%2Fsupport.huawei.com%2Fenterprise%2Fservicecenter" target="_blank">服务中心</a></li>
                    <li><a href="http://support.huawei.com/enterprise/lang.jsp?lang=zh&forward=http%3A%2F%2Fsupport.huawei.com%2Fenterprise%2Fsoftdownload" target="_blank">软件下载</a></li>
                    <li><a href="http://icare.huawei.com/" target="_blank">提交服务请求</a></li>
                    <li><a href="http://support.huawei.com/enterprise/lang.jsp?lang=zh&forward=http%3A%2F%2Fsupport.huawei.com%2Fenterprise%2Fnews%23idAbsPath%3D0301_10001%26nameAbsPath%3D%25E6%259C%258D%25E5%258A%25A1%25E5%2585%25AC%25E5%2591%258A%26ot%3Dclk%26pid%3D0301_10001%26type%3D0301" target="_blank">服务公告</a></li>
                    <li><a href="http://enterprise.huawei.com/cn/training/index.htm" target="_blank">培训认证</a></li>
                    <li><a href="http://enterprise.huawei.com/ilink/cnenterprise/partners/partners-zone/index.htm?node=3" target="_blank">合作伙伴支持专区</a></li>
                </ul>
                <ul class="list last">
                    <h2><a href="http://www.huaweidevice.com/cn/technicaIndex.do?method=index&directoryId=5003" target="_blank">个人消费者</a></h2>
                    <li><a href="http://www.huaweidevice.com/cn/downloadCenter.do?method=index" target="_blank">手册与软件</a></li>
                    <li><a href="http://www.huaweidevice.com/cn/faq.do?method=index" target="_blank">常见问题</a></li>
                    <li><a href="http://www.huaweidevice.com/cn/netWorkPoint.do?method=index&directoryId=40" target="_blank">维修中心</a></li>
                    <li><a href="http://bbs.huaweidevice.com/cn/forum/index.php?app=forum&mod=Index&act=index" target="_blank">用户社区</a></li>
                    <li><a href="http://support.huaweidevice.com/service/" target="_blank">合作伙伴技术支持</a></li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><img height="144" width="217" src="[!--news.url--]skin/default/images/hw_s_223303.gif"></li>
                    <li class="summary">
                        <ul>
                            <li>在线技术支持、软件下载、文档共享，无论您遇到任何问题，我们都将随时为您提供服务。</li>
                        </ul>
                    </li>
                </ul>

            </div>
            <div class="shadow_b_layout"><div></div></div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="关于华为" href="javascript:void(0);" class="about_huawei"><span>关于华为</span></a>
    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="list">
                    <h2><a href="http://www.huawei.com/cn/about-huawei/corporate-info/index.htm">公司介绍</a></h2>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/vision-mission/index.htm">愿景使命</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/strategy/index.htm">公司战略</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/financial-highlights/index.htm">财务概要</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/coporate-governance/index.htm">公司治理</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/research-development/index.htm">研究开发</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/milestone/index.htm">发展历程</a></li>
                </ul>
                <ul class="list">
                    <h2><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/index.htm">社会责任</a></h2>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/leadership-and-strategy/index.htm">CSR战略与管理</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/bridging-the-digital-divide/index.htm">消除数字鸿沟</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/employee/index.htm">关爱员工</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/fair-operations/index.htm">公平经营</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/environmental-protection/index.htm">绿色环保</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/supply-chain/index.htm">供应链</a></li>

                </ul>
                <ul class="list">
                    <h2><a href="http://www.huawei.com/cn/about-huawei/newsroom/index.htm">新闻媒体</a></h2>
                    <li><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/index.htm">新闻</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/newsroom/media-coverage/index.htm">媒体热点</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/newsroom/product-launch/index.htm">产品发布信</a></li>
                    <li><a href="http://www.huawei.com/cn/ProductsLifecycle/index.htm">产品生命周期公告</a></li>
                </ul>
                <ul class="list last">
                    <h2><a href="http://www.huawei.com/cn/about-huawei/publications/index.htm">公司刊物</a></h2>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/annual-report/huawei2011/index.htm">《公司年报》</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/csr-report/index.htm">《社会责任报告》</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/publications/winwin-magazine/index.htm">《营赢》</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/publications/communicate/index.htm">《华为技术》</a></li>
                    <li><a href="http://app.huawei.com/paper/index.do">《华为人》</a></li>
                    <li><a href="http://enterprise.huawei.com/cn/about/e-journal/ict/index.htm?node=6&child=0">《ICT新视界》</a></li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="http://www.huawei.com/cn/about-huawei/publications/winwin-magazine/index.htm">
                        <img height="189" width="142" src="[!--news.url--]skin/default/images/hw_u_173050.jpg"></a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/publications/winwin-magazine/index.htm" style="color:#333;"><strong>《营赢》第13期（2012年7月）</strong></a></li>
                </ul>

            </div>
            <div class="shadow_b_layout"><div></div></div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="加入华为" href="javascript:void(0);" class="join_huawei"><span>加入华为</span></a>
    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="taxonomy">
                    <li><a href="http://118.186.241.26/campus/default.html" class="topfrx" target="_blank">校园招聘</a></li>
                    <li><a href="http://118.186.241.26/social/default.html" class="topfrx" target="_blank">社会招聘</a></li>

                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="http://118.186.241.26/campus/" target="_blank"><img height="140" width="259"
                                                                                     src="[!--news.url--]skin/default/images/hw_192713.jpg"></a></li>
                    <li class="title"><a href="http://118.186.241.26/campus/" target="_blank">走近华为</a></li>
                    <li class="summary">
                        <ul>
                            <li>华为是全球领先的信息与通信解决方案供应商。我们围绕客户的需求持续创新，与合作伙伴开放合作，在电信网络、企业网络、消费者和云计算等领域……</li>
                        </ul>
                    </li>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="http://118.186.241.26/campus/dt/details/105006002001/100000014891175.html" target="_blank">
                        <img height="140" width="259" src="[!--news.url--]skin/default/images/hw_192716.jpg"></a></li>
                    <li class="title">
                        <a href="http://118.186.241.26/campus/dt/details/105006002001/100000014891175.html" target="_blank">华为2013年应届毕业生招聘正式启动</a></li>
                    <li class="summary">
                        <ul>
                            <li>加入华为，大有可为！我们诚邀拥有梦想并锐意进取的您，加入华为大家庭，在全球舞台上激扬无悔的青春，激发潜能，成就团队，成就自我！</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="shadow_b_layout"><div></div></div>
        </div>
    </div>
</li>
</ul>
</div>
</div>

<script language="JavaScript">
function Support_Search(){
    var key =document.getElementById("support_ssUserText").value;
    doSearch(key);
}

function doSearch(keyvalue){
    var url=null;
    if ((!keyvalue)||(trim(keyvalue)=='')){
        url='http://support.huawei.com/support/pages/search/advancedSearch.do?actionFlag=advancedInit';
    }
    else{
        url='http://support.huawei.com/support/pages/search/Search.do?actionFlag=homepageSearch&searchString='+keyvalue;
    }
    window.location=url;
}

function Support_EnterClick(e){
    var key= window.event ? e.keyCode:e.which;
    if (key == 13){
        Support_Search();
    }
}

function trim(s) {
    var tempStr;
    tempStr = s.replace(/s+$/g,'');
    tempStr = tempStr.replace(/^s+/g,'');
    return tempStr;
}

function Usearch()
{
    var warn="请输入关键字";
    var KeyText = $('#SEARCH_BOX').find('input').attr("value");
    $('#SEARCH_BOX').find('input').attr("value",trim(KeyText));
    if(trim(KeyText)==""){
        alert(warn);return false;
    }else{
        $('#SEARCH_BOX').submit();
    }
}
$(function() {
    var HWDomainNamePath= 'www.huawei.com,www-beta.huawei.com,www-resource.huawei.com,www-ipv6.huawei.com,ipv6.huawei.com';
    HWDomainNamePath = HWDomainNamePath.split(",");
    var accFromF = 0;
    var accPath = window.location+"";
    for(var i=0;i<HWDomainNamePath.length;i++){
        if(accPath.indexOf(HWDomainNamePath[i])>-1){
            accFromF = 1;
        }
    }
    if(accFromF == 1){

        //for header search box;
        var HSearchPath = $('#SEARCH_BOX').attr('action');
        //for en
        if(HSearchPath && HSearchPath.indexOf("/ilink/")==-1){
            HSearchPath = "/ilink/cn" + HSearchPath.substring(HSearchPath.indexOf("/search/"));
            $('#SEARCH_BOX').attr('action',HSearchPath);
        }

        //for success story form
        var SuccCasePath = $('#ss_form').attr('action');
        //for en
        if(SuccCasePath && SuccCasePath.indexOf("/ilink/")==-1){
            SuccCasePath = "/ilink/cn" + SuccCasePath.substring(SuccCasePath.indexOf("/success-story/"));
            $('#ss_form').attr('action',SuccCasePath);
        }
        //for related success story form;
        var RelSuccCasePath = $('#re_ss_form').attr('action');
        //for en
        if(RelSuccCasePath && RelSuccCasePath.indexOf("/ilink/")==-1){
            RelSuccCasePath = "/ilink/cn" + RelSuccCasePath.substring(RelSuccCasePath.indexOf("/success-story/"));
            $('#re_ss_form').attr('action',RelSuccCasePath);
        }
        //for pageNav form;
        var USearchPath = $('#PageNav_form').attr('action');
        //for en
        if(USearchPath && USearchPath.indexOf("/ilink/")==-1){
            USearchPath = "/ilink/cn" + USearchPath.substring(USearchPath.indexOf("/search/"));
            $('#PageNav_form').attr('action',USearchPath);
        }
        //for union search box and  right search box;
        var USearchPath = $('#TBK_SEARCH_BOX').attr('action');
        //for en
        if(USearchPath && USearchPath.indexOf("/ilink/")==-1){
            USearchPath = "/ilink/cn" + USearchPath.substring(USearchPath.indexOf("/search/"));
            $('#TBK_SEARCH_BOX').attr('action',USearchPath);
        }
        //for tag cloud and other search link;
        var searchLinkPath = $("a[href*='/search/']");
        if(searchLinkPath.size()>0){
            for(var i=0; i<searchLinkPath.size();i++){
                if(searchLinkPath[i].href.indexOf("/ilink/")==-1){
                    searchLinkPath[i].href=$("a[href*='/search/']")[i].href.replace("/cn/search","/ilink/cn/search");
                }
            }
        }

    }


});


function hFeedback(){
    $('a[href*="#Subscribe"]:not(a[href*="#SubscribeMag"])').attr('rel', '');
    $('a[href*="#Subscribe"]:not(a[href*="#SubscribeMag"])').attr("href", "/ilink/login?originalURL="+window.location);
    $("#Subscribe").html('');

    $("#feedback-link").mouseover(function() {
        $("#tipbox").show();
    });
    $("#feedback-link").mouseout(function() {
        $("#tipbox").hide();
    });
    $("#FeedBack_BOX").mouseover(function() {
        $("#tipbox_top").show();
    });
    $("#FeedBack_BOX").mouseout(function() {
        $("#tipbox_top").hide();
    });

    $("#tipbox_top").mouseover(function() {
        $(this).show();
    });
    $("#tipbox_top").mouseout(function() {
        $("#tipbox_top").hide();
    });
}

function loadUserInfo(userName) {
    var userData = {
        IdcService : "GET_USER_INFO",
        dUser : userName
    };
    $.ucm.executeService(userData, function(ucmResponse){
        var userInfoRs = ucmResponse.ResultSets.USER_INFO;
        if (userInfoRs.rows.length != 0) {
            var userInfo = ucmResponse.getRow("USER_INFO", 0);
            $("#ftextfield").val(userInfo.uGivenName);
            $("#ftextfield2").val(userInfo.dEmail);
        }
    });
}

isEmail = function(str) {
    var re = /^([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/;
    return re.test(str);
}
function validateFeedback(){

    var categorySelected = false;

    $('input[name="feedbackCategoryId"]:checked').each(function() {
        categorySelected = true;
    });

    if(categorySelected == false){
        alert("请先选择一个反馈分类");
        return;
    }

    if($("#ftextfield").val()==""){
        alert("请填写姓名");
        return;
    }
    if($("#ftextfield2").val()==""){
        alert("请填写Email地址");
        return;
    }

    if(isEmail($("#ftextfield2").val())==false){
        alert("请填写正确的Email地址");
        return;
    }

    if($("#ftextarea").val()==""){
        alert("请填写意见或建议");
        return;
    }

    if(confirm("是否提交？"))
        submitFeedback();

}

function submitFeedback() {

    var feedbackData = {
        IdcService : "SEND_FEEDBACK",
        givenName: $("#ftextfield").val(),
        feedbackCategory: $('input[name="feedbackCategoryId"]:checked').val(),
        company: $("#ftextfield4").val(),
        feedbackContent: $("#ftextarea").val(),
        email: $("#ftextfield2").val(),
        tel: $("#ftextfield3").val(),
        siteId: 'cn'
    };

    $.ucm.executeService(feedbackData, function(ucmResponse){
        if(ucmResponse.LocalData.StatusCode == 1) {
            $('input[name="feedbackCategoryId"]').each(function() {
                $(this).attr('checked', false);
            });
            $("#ftextfield").val('');
            $("#ftextfield4").val('');
            $("#ftextarea").val('');
            $("#ftextfield2").val('');
            $("#ftextfield3").val('');
            lightbox.close();
            $("#feedback-confirm-link").trigger('click');
        }
        else
            alert("An error occurred and feedback was not sent. Please try again. We apologize for the inconvenience.");
    });
}
</script>

<div class="hide">
    <div id="permissions_alert" class="box_subscribe">
        <div class="Title">
            <div class="red_bg">提示</div>
        </div>
        <p class="alertext">您还未登录或账号权限不够</p>
        <div class="BtnBox">
            <input type="Submit" onclick="javascript:void(0)" value="返回" class="btn_b permissions_back">
        </div>
    </div>
</div>

<!-- SS_END_SNIPPET(fragment1,group-header)-->



<div class="videoList-container" id="pcList" style="margin-bottom: 0px;">
    <div id="slide-index" style="width: 1294px;">
        <div class="slides" style="width: 5176px; margin-left: -3881.254656px;">
            <div class="slide autoMaxWidth" links="[{left:&#39;30px&#39;,top:&#39;81px&#39;},{left:&#39;30px&#39;,top:&#39;244px&#39;},{direction:&#39;tb&#39;}]" style="width: 1294px;">
                <div class="image" id="bi_0"><a target="_blank" href="http://enterprise.huawei.com/cn/solutions/move/integer/index.htm?node=7"><img name="BYOD" src="[!--news.url--]skin/default/images/hw_194667.jpg" style="left: -313px; position: relative;"></a></div>
                <div class="text" id="bt_0" style="left: 3000px; top: 81px;"></div>
                <div class="button" id="bb_0" style="left: 3000px; top: 244px; display: block;"></div>
            </div>
            <div class="slide autoMaxWidth" links="[{left:&#39;30px&#39;,top:&#39;81px&#39;},{left:&#39;30px&#39;,top:&#39;244px&#39;},{direction:&#39;tb&#39;}]" style="width: 1294px;">
                <div class="image" id="bi_1"><a href="http://www.huaweidevice.com/cn/productFeatures.do?pinfoId=2988&directoryId=5011&treeId=3470&tab=0" target="_blank"><img name="华为MediaPad 10 FHD" src="[!--news.url--]skin/default/images/hw_149403.jpg" style="left: -313px; position: relative;"></a></div>
                <div class="text" id="bt_1" style="left: 3000px; top: 81px;"></div>
                <div class="button" id="bb_1" style="left: 3000px; top: 244px; display: block;"></div>
            </div>
            <div class="slide autoMaxWidth" links="[{left:&#39;30px&#39;,top:&#39;81px&#39;},{left:&#39;30px&#39;,top:&#39;244px&#39;},{direction:&#39;tb&#39;}]" style="width: 1294px;">
                <div class="image" id="bi_2"><a target="" href="http://www.huawei.com/cn/solutions/arpu-up/hw-079049---------------------------------------.htm"><img name="NGBSS BANNER" src="[!--news.url--]skin/default/images/hw_149025.jpg" style="left: -313px; position: relative;"></a></div>
                <div class="text" id="bt_2" style="left: 2999.446692px; top: 81px;"></div>
                <div class="button" id="bb_2" style="left: 2999.446692px; top: 244px; display: block;"></div>
            </div>
            <div class="slide autoMaxWidth" links="[{left:&#39;30px&#39;,top:&#39;81px&#39;},{left:&#39;30px&#39;,top:&#39;244px&#39;},{direction:&#39;tb&#39;}]" style="width: 1294px;">
                <div class="image" id="bi_0"><a target="_blank" href="http://enterprise.huawei.com/cn/solutions/move/integer/index.htm?node=7"><img name="BYOD" src="[!--news.url--]skin/default/images/hw_194667.jpg" style="left: -313px; position: relative;"></a></div>
                <div class="text" id="bt_0" style="left: 177px; top: 0px;"></div>
                <div class="button" id="bb_0" style="left: 177px; top: 396px; display: block;"></div>
            </div></div>
        <div class="control">

            <a href="" class="active"></a>


            <a href="" class=""></a>


            <a href="" class=""></a>


        </div>
    </div>
</div>
<!--IPAD-->


<script type="text/javascript">
    $(function(){
        addVideo();

        for(var i=0;i<3;i++){
            $('#bt_'+i).find("img").addClass("IE6png");
            $('#bb_'+i).find("img").addClass("IE6png");
        }

    });

    function addVideo(){
    }

</script>


<div id="latest-news-index">
    <div class="bound">
        <div class="latest-news">
            <div class="title" style="margin-top:7px; width:40px;font-weight:bold; color:#BB0000;"><a href="http://www.huawei.com/cn/about-huawei/newsroom/index.htm" style="font-weight:bold; color:#BB0000;">新闻</a>：</div>
            <div class="content" style="float: none; margin-left: 45px; margin-top: -385px;">

                <div><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/hw-195135-gitex---.htm" target="_blank">华为参展GITEX 将发布业界最新云数据中心解决方案</a></div>
                <div><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/hw-195133-singlesonecoordinator.htm" target="_blank">华为SingleSON创新解决方案领跑SON技术发展</a></div>
                <div><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/hw-194982-100g.htm" target="_blank">华为助力甘肃广电部署国内首个相干100G OTN网络</a></div>
     </div>

        <div class="social-network">
            <div class="title" style="margin-top:7px; font-weight:bold;color:#333;width:75px;margin-left: 30px;">关注我们</div>
            <div class="content">
                <!--
                    <a target="_blank" href="http://twitter.com/Huaweipress" class="twitter" title="Twitter"></a>
                    -->
                <!--<a href="#" class="facebook"></a>-->
                <a href="http://www.weibo.com/u/2557129567" class="icons_weibo" target="_blank" title="华为新浪微博"></a>
                <a href="http://t.qq.com/huawei" class="icons_qq_weibo" target="_blank" title="华为腾讯微博"></a>
                <a href="http://www.flickr.com/photos/huaweipress/" class="flickr" target="_blank" title="华为Flickr"></a>
                <a href="http://www.huawei.com/cn/about-huawei/rss-feeds/" class="rss" title="华为Rss"></a>
                <!--
                <a target="_blank" href="http://www.youtube.com/user/HuaweiPress" class="youtube" title="Youtube"></a>
                -->
            </div>
        </div>

        <div class="clear"></div>

    </div>
</div>

<div id="features-index">
    <div class="bound">

        <a href="http://www.huawei.com/ilink/cn/success-story/HW_146834?ABCG=&Product=&Operator=&Geo=&ABCG_index=&Product_index=&Operator_index=&Geo_index=&StartRow=1" target="_blank" id="feature-trigger">
						<span>
        				<h4 class="c_blue">
                            桌面云绽放非盟会议中心</h4>
        				<p>借助会议中心桌面云的部署，非洲联盟在处理地区政治、经济等事务时将拥有更加强大的信息化支撑。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_149255.jpg">
        </a>
        <a href="http://www.huawei.com/cn/about-huawei/events/hw-194468-hw_194468.htm" target="_blank">
						<span>
        				<h4 class="c_orange">
                            精简IT，敏捷商道</h4>
        				<p>云计算改变IT，IT改变商业。2012华为云计算大会上，来自全球的IT业界精英共论IT实践与变革之道，共享年度IT盛宴。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_195116.jpg">
        </a>

        <a href="http://www.huawei.com/cn/about-huawei/publications/winwin-magazine/index.htm" class="last" target="_blank">
						<span>
        				<h4 class="c_green">
                            《营赢》第13期<br></h4>
        				<p>本期封面：Safaricom CEO Collymore认为，M-PESA移动货币服务改变了肯尼亚人的生活方式，同时提高了其ARPU值和用户数。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_146899.jpg">
        </a>

        <a href="http://www.huaweidevice.com/cn/newsIndex.do?method=viewMedia&newsId=668&directoryId=5027" target="_blank">
						<span>
        				<h4 class="c_green">
                            四核芯3D见证不凡时刻</h4>
        				<p>极速四核、全高清分辨率、杜比5.1环绕音效……华为“中国芯”的强悍性能令人叹为观止。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_194666.jpg">
        </a>
        <a href="http://www.huawei.com/cn/services/index.htm" target="_blank">
						<span>
        				<h4 class="c_blue">
                            主动关怀 价值服务</h4>
        				<p>从网络的快速部署、卓越运营到能力提升，华为助力您实现从响应式服务到主动保障的转变，实现商业成功。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_u_165756.jpg">
        </a>

        <a href="http://118.186.241.26/social/default.html" class="last" target="_blank">
						<span>
        				<h4 class="c_orange">
                            全球招聘</h4>
        				<p>加入我们，一起为丰富人们的沟通与生活而努力。点击查看华为最新的招聘信息。</p>
        				</span>
            <img src="[!--news.url--]skin/default/images/hw_u_165757.jpg">
        </a>

    </div>
</div>

    <div id="seo-footer" style="height:310px;">
        <div class="bound">
            <div class="section information">
                <span class="title">按访问者</span>
                <ul>
                    <li><a href="http://www.huawei.com/cn/carrier/index.htm" target="_blank">运营商</a></li>
                    <li><a href="http://enterprise.huawei.com/cn/" target="_blank">企业用户</a></li>
                    <li><a href="http://www.huaweidevice.com/cn/" target="_blank">最终消费者</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/Partner/" target="_blank">合作伙伴</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/">新闻媒体</a></li>
                    <li><a href="http://118.186.241.26/social/default.html" target="_blank">求职者</a></li>
                </ul>
            </div>

            <div class="section information">

                <span class="title">行业洞察</span>
                <ul>
                    <li><a href="http://www.huawei.com/cn/industry/customer-voices/index.htm">客户声音</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/consumer-lab/index.htm">消费者研究</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/moving-forward/index.htm">创新</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/huawei-voices/index.htm">热点技术</a></li>
                    <li><a href="http://www.huawei.com/cn/industry/standards-contributions/index.htm">标准与行业贡献</a></li>
                </ul>
            </div>
            <div class="section information">

                <span class="title">关于华为</span>
                <ul>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/vision-mission/index.htm">愿景与使命</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/strategy/index.htm">公司战略</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-citizenship/index.htm">社会责任</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/coporate-governance/index.htm">公司治理</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/financial-highlights/index.htm">财务概要</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/milestone/index.htm">发展历程</a></li>
                </ul>
            </div>


            <div class="section information">

                <span class="title">常用链接</span>
                <ul>
                    <li><a href="http://www.huawei.com/cn/about-huawei/newsroom/press-release/">新闻中心</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/events/index.htm">展会活动</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/publications/index.htm">公司刊物</a></li>
                    <li><a href="http://www.huawei.com/cn/about-huawei/corporate-info/cyber_security/index.htm">网络安全</a></li>
                    <li><a href="http://www.huawei.com/ilink/cn/success-story/index.htm" target="_blank">成功故事</a></li>
                </ul>
            </div>

            <div class="section information" style="margin-right:0px;">

                <span class="title">相关网站</span>
                <ul>
                    <li><a href="http://www.huawei.com/cn/carrier/index.htm" target="_blank">华为运营商网络</a></li>
                    <li><a href="http://enterprise.huawei.com/cn/" target="_blank">华为企业业务</a></li>
                    <li><a href="http://www.huaweidevice.com/cn/" target="_blank">华为终端</a></li>
                    <li><a href="http://www.huaweimarine.com/marine/" target="_blank">华为海洋</a></li>
                    <li><a href="http://www.huawei.com/minisite/mobile_cn/index.html" target="_blank">手机华为网</a></li>
                </ul>
            </div>
        </div>

        <div style=" width:980px;margin:auto;color:#FFF;padding-top:30px;">
            <ul style="margin-left:6px;height:30px;">
                <li class="left"><a style="color:#FFF;" href="/">法律声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a style="color:#FFF;" href="/">隐私保护</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a href="/" style="color:#FFF;">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                <li class="left"><a href="/" style="color:#FFF;">网站地图</a></li>
                <li class="left" style="margin-left:100px;">版权所有 /。 保留一切权利。/</li>
            </ul>
        </div>

    </div>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-7728030-4']);
        _gaq.push(['_trackPageview']);
        $(document).ready(function(){
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? ' https://ssl' : ' http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

        });

        $(document).ready(function() {
            var categoryData = {
                IdcService : "GET_FEEDBACK_CATEGORIES",
                SITEID : 'cn'
            };
            $.ucm.executeService(categoryData, function(ucmResponse){
                $.each(ucmResponse.ResultSets.FEEDBACK_CATEGORIES.rows, function() {
                    $("#feedbackCategory").append("<li><input name=\"feedbackCategoryId\" type=\"radio\" value="+this[0]+" /> "+this[1]+"</li>");
                });
            });

            <!--Check logged-in user code starts here (Abdallah 22.12.2011)-->

            var ssc = getCookie("ssc");
            if ( ssc != null && ssc != "null" && ssc != "" && ssc != "0")
            {
                var sscArray = ssc.split(":");
                var userName = sscArray[0];
                loadUserInfo(userName);
            }
            else
            {
                var ssf = getCookie("sid");
                var ssb = getCookie("login_sid");

                if  ( ( ssf != null && ssf != "null" && ssf != "" && ssf != "0") ||
                        ( ssb != null && ssb != "null" && ssb != "" && ssb != "0") )
                {
                    $.ajax({
                        type:"POST",
                        url:"/ilink/cn/my-huawei/login/index.htm",
                        dataType:"text",
                        data:"isAjax=1",
                        success:function(data){
                            if (data != null && data !="" && data !="anonymous")
                            {
                                loadUserInfo(data);
                                $(".login").show();
                                $(".notlogin").hide();
                            }
                            else
                            {
                                // hFeedback();
                                $(".login").hide();
                                $(".notlogin").show();
                            }
                        },

                        error:function(lEx){
                            //  hFeedback();
                            $(".login").hide();
                            $(".notlogin").show();
                        },

                        timeout:10000

                    });
                }
                else
                {
                    //      hFeedback();
                    $(".login").hide();
                    $(".notlogin").show();
                }
            }

        });

    </script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/global_website_js.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/swfobject.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jwplayer.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/global_cn.index.js"></script>



</body>

</html>