<!--
列表内容模板(list.var) (*) <strong><a href="[!--titleurl--]">[!--title--]</a></strong>
<p>
    [!--smalltext--]
</p>
<div class="hr"></div>
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        [!--pagetitle--]
    </title>
    <meta name="keywords" content="[!--pagekey--]">
    <meta name="description" content="[!--pagedes--]">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css"
          media="screen, project, print">
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css"
          media="screen, project, print">
</head>
<body>
<script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js">
</script>
[!--temp.header--]
<div id="container">
    <div class="bound body">
        <div class="grid215 left">
            <div>导航：[!--newsnav--]</div>
            <div class='leftNav' id='1001'>
                <div class='top' id='1002'></div>
                <div class='content' id='1003'>
                    [showclasstemp]'selfinfo',13,0,0[/showclasstemp]
                </div>
                <div class='bottom' id='1004'></div>
            </div>
        </div>
        <div class="grid765_r left">
            <div class="grid550_l left">
                <script type="text/javascript">
                    var sHTML="<img src='[!--news.url--]skin/default/images/mybanner{N}.jpg'>"
                    document.write(sHTML.replace("{N}",Math.random()*3|0)) 
                </script>
                <div class="core-network">
                    <div class="content">
                        <!--列表模板主页面开始-->
                        <div class="hr"></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
                            <tr>
                                <td>
                                    [!--empirenews.listtemp--]
                                    <ul>
                                        <!--list.var1-->
                                    </ul>
                                    [!--empirenews.listtemp--]
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="38">
                                                <div class="epages">
                                                    [!--show.listpage--]
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <!--列表模板主页面结束-->
                    </div>
                </div>
            </div>
            <div class="grid215 right">
                <div class="search-year">
                    <div class="body">
                        <div class="header">
                            <div class="icon"></div>
                            培训公告
                        </div>
                        <div class="content">
                            <ul>
                            [e:loop={71,5,0,0}]
                            <li><a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a> </li>
                            [/e:loop]
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="tags">
                    <div class="body">
                        <div class="header">
                            <div class="icon"></div>
                            热门标签
                        </div>
                        <div class="tags">
                            <span class="highlights3">
                                <a href="[!--news.url--]a/peixunzhuanti/">培训业务</a>
                            </span> 
                            <span class="highlights3">
                                <a href="[!--news.url--]a/yewujieshao/#117">税务筹划</a>
                            </span>
                            <span class="highlights3">
                                <a href="[!--news.url--]a/yewujieshao/#122">税务代理</a>
                            </span>
                            <span class="highlights3">
                                <a href="[!--news.url--]a/peixunzhuanti/qiyechongzu">企业重组</a>
                            </span>
                        </div>
                    </div>
                </div>
                <!--wcmPlaceholder("contact_us", "placeholderDefinitionDocName=PH_CN_MAIN_CONTENT")-->
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]
</body>
</html>