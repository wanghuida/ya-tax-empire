/*
列表内容模板(list.var) (*) <strong><a href="[!--titleurl--]">[!--title--]</a></strong>
        <p>
            [!--smalltext--]
        </p>
        <div class="hr"></div>

*/
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
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print">
        <link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print">
    </head>
    <body>
        <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js">
</script>
[!--temp.header--]
        <div id="container">
            <div class="bound body">
                <div>
                    您当前的位置：[!--newsnav--]
                </div>
                <div class="grid215 left">
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
                        <div class="core-network">
                            <div class="content">
                                <!--列表模板主页面开始-->
                                <div class="title">
                                    [!--class.name--]
                                </div>
                                <hr>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
                                    <tr>
                                        <td>
                                            [!--empirenews.listtemp--]
                                            <ul>
                                                <!--list.var1-->
                                            </ul>[!--empirenews.listtemp--]
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
                                </table><!--列表模板主页面结束-->
                            </div>
                        </div>
                    </div>
                    <div class="grid215 right">
                        <div class="search-year">
                            <div class="body">
                                <div class="header">
                                    <div class="icon"></div>按年份查询
                                </div>
                                <div class="content">
                                    <ul>
                                        <li>
                                            <a href="/a/hangyedongcha">2012</a>
                                        </li>
                                        <li>
                                            <a href="/a/hangyedongcha">2011</a>
                                        </li>
                                        <li>
                                            <a href="/a/hangyedongcha">2010</a>
                                        </li>
                                        <li>
                                            <a href="/a/hangyedongcha">全部新闻</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="tags">
                            <div class="body">
                                <div class="header">
                                    <div class="icon"></div>热门标签
                                </div>
                                <div class="tags">
                                    <span class="highlights3"><a href="/">培训业务</a></span> <span class="highlights2"><a href="/">税务咨询</a></span>
                                </div>
                            </div>
                        </div><!--wcmPlaceholder("contact_us", "placeholderDefinitionDocName=PH_CN_MAIN_CONTENT")-->
                    </div>
                </div>
            </div>
        </div>[!--temp.footer--]
    </body>
</html>