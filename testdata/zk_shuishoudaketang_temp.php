<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>[!--pagetitle--]</title>
    <meta name="keywords" content="[!--pagekey--]"/>
    <meta name="description" content="[!--pagedes--]"/>

    <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js"></script>

</head>

<body>

[!--temp.header--]



<div id="content" class="nobg">
    <h2 class="productitle wryh"></h2>
    <div class="container">
        <div class="content_l">
            <ul class="productblock">
                <li>
                    <img alt="参加培训" src="[!--news.url--]skin/default/images/hw_s_195890.jpg">
                    <p>
                        <a href="[!--news.url--]a/peixunzhuanti/yinggaizeng" class="title wryh">营改增专题</a>
                    </p>

                    <p class="col4">
                        [e:loop={68,3,0,0}]
                        <a href="<?=$bqsr[titleurl]?>" class="leftarrow"  target="_blank"><?=esub($bqr[title],36)?></a>
                        [/e:loop]
                    </p>
                </li>
                <li>
                    <img alt="产品培训" src="[!--news.url--]skin/default/images/hw_s_195891.jpg">
                    <p>
                        <a href="[!--news.url--]a/peixunzhuanti/qiyechongzu" class="title wryh">企业重组培训</a>
                    </p>
                    <p class="col4">
                        [e:loop={68,3,0,0}]
                        <a href="<?=$bqsr[titleurl]?>" class="leftarrow"  target="_blank"><?=esub($bqr[title],36)?></a>
                        [/e:loop]
                    </p>
                </li>
                <li class="nomr">
                    <img alt="培训合作伙伴" src="[!--news.url--]skin/default/images/hw_s_195892.jpg">

                    <p>
                        <a href="[!--news.url--]a/peixunzhuanti/"
                           class="title wryh">网校课堂</a>
                    </p>

                    <p class="col1">
                        <a href="[!--news.url--]a/peixunzhuanti/" class="leftarrow">注册税务师课程</a>
                        <a href="[!--news.url--]a/peixunzhuanti/" class="leftarrow">初级会计课程</a>
                        <a href="[!--news.url--]a/peixunzhuanti/" class="leftarrow">中级会计课程</a>
                        <a href="[!--news.url--]a/peixunzhuanti/" class="leftarrow">财务经理高级课程</a>
                    </p>
                </li>
            </ul>

            <div class="block mb10 mt10">
                <h2 class="redtitle wryh">
                    <a href="[!--news.url--]a/peixunzhuanti/peixungonggao" class="link_title">培训课程公告</a>
                    <a href="[!--news.url--]a/peixunzhuanti/peixungonggao" class="more">更多</a>
                </h2>
                <ul class="subject">
                    [e:loop={71,5,0,0}]
                    <li class="leftarrow">
                    <span class="date"><?=$bqr['newspath']?></span>
                    <a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a>
                    </li>
                    [/e:loop]
                </ul>
            </div>
            <div class="block mb10 mt10">
                <h2 class="redtitle wryh">
                    <a href="[!--news.url--]a/peixunzhuanti" class="link_title">资料下载区</a>
                    <a href="[!--news.url--]a/peixunzhuanti" class="more">更多</a>
                </h2>
                <ul class="subject">
                    <li class="leftarrow">
                        暂无
                    </li>
                </ul>
            </div>
        </div>

        <div class="content_r">
            <div class="product_relevant">

                <dd class="border">
                    <h2 class="wryh">合作联系</h2>
                    <ul class="relevant_links mt_5">
                        <li>
                            <a href="mailto:xxx@ya-tax.com" class="arial paddleft0">xxx@ya-tax.com</a>
                        </li>
                    </ul>
                    <span class="call">027-88937081</span>
                </dd>
                <dd class="border">
                    <h2 class="wryh">相关链接</h2>
                    <ul class="relevant_links">
                        <li>
                            <a href="http://www.taxren.net" target="_blank">纳税人论坛</a>
                        </li>
                    </ul>
                </dd>

<!--
                <dd class="border">
                    <h2 class="wryh">推荐服务</h2>
                    <ul class="relevant_links">

                        <li>
                            <a href="/hw-u_136348.htm" target="">永安中小企业解决方案</a>
                        </li>
                        <li>
                            <a href="/" target="">永安解决方案</a>
                        </li>
                        <li>
                            <a href="/" target="">永安解决方案</a>
                        </li>
                        <li>
                            <a href="/" class="links_more">更多...</a>
                        </li>

                    </ul>
                </dd>
-->
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]

</body>
</html>