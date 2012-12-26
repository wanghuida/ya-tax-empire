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
    <link rel="stylesheet" href="[!--news.url--]skin/default/css/bootstrap.css" type="text/css" media="screen, project, print" />
    <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/bootstrap.js"></script>
    <script type="text/javascript" src="[!--news.url--]skin/default/js/bootstrap-tab.js"></script>

</head>

<body>
[!--temp.header--]
<div id="content" class="nobg">
    <h2 class="productitle wryh"></h2>
    <div class="container">
        <div class="content_l">
            <div class="kecheng">
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
            <div class="hr"></div>
            <div class="kecheng">
                <h2 class="redtitle wryh">
                    <a href="[!--news.url--]a/peixunzhuanti" class="link_title">资料下载区</a>
                </h2>
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#home" data-toggle="tab">营改增专题</a></li>
                  <li><a href="#profile" data-toggle="tab">企业重组培训</a></li>
                  <li><a href="#messages" data-toggle="tab">注册税务师培训</a></li>
                  <li><a href="#settings" data-toggle="tab">设置</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="home">
                    <ul>
                        <li class="kecheng_index">
                            <div class="kecheng_img"><img class="kecheng_img" alt="参加培训" src="[!--news.url--]skin/default/images/ent_cn_img_train_pic5.jpg"></div>
                            <div class="kecheng_intro">
                                <h5>标题</h5>
                                <div>课程/资料介绍</div>
                            </div>
                            <div class="kecheng_dn"><button class="btn">下载</button></div>
                        </li>
                        <li class="kecheng_index">
                            <div class="kecheng_img"><img class="kecheng_img" alt="参加培训" src="[!--news.url--]skin/default/images/ent_cn_img_train_pic5.jpg"></div>
                            <div class="kecheng_intro">
                                <h5>标题</h5>
                                <div>课程/资料介绍</div>
                            </div>
                            <div class="kecheng_dn"><button class="btn">下载</button></div>
                        </li>
                        <li class="kecheng_index">
                            <div class="kecheng_img"><img class="kecheng_img" alt="参加培训" src="[!--news.url--]skin/default/images/ent_cn_img_train_pic5.jpg"></div>
                            <div class="kecheng_intro">
                                <h5>标题</h5>
                                <div>课程/资料介绍</div>
                            </div>
                            <div class="kecheng_dn"><button class="btn">下载</button></div>
                        </li>
                        <li class="kecheng_index">
                            <div class="kecheng_img"><img class="kecheng_img" alt="参加培训" src="[!--news.url--]skin/default/images/ent_cn_img_train_pic5.jpg"></div>
                            <div class="kecheng_intro">
                                <h5>标题</h5>
                                <div>课程/资料介绍</div>
                            </div>
                            <div class="kecheng_dn"><button class="btn">下载</button></div>
                        </li>
                    </ul>
                  </div>
                  <div class="tab-pane" id="profile">
                    <p class="col4">
                        [e:loop={67,4,0,0}]
                        <a href="<?=$bqsr[titleurl]?>" class="leftarrow"  target="_blank"><?=esub($bqr[title],36)?></a>
                        [/e:loop]
                    </p>
                  </div>
                  <div class="tab-pane" id="messages">
                     <p class="col4">
                        [e:loop={69,4,0,0}]
                        <a href="<?=$bqsr[titleurl]?>" class="leftarrow"  target="_blank"><?=esub($bqr[title],36)?></a>
                        [/e:loop]
                    </p>
                  </div>
                  <div class="tab-pane" id="settings">......</div>
                </div>
                <script>
                  $(function () {
                    $('.tabs a:last').tab('show')
                  })
                </script>
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
            </div>
        </div>
    </div>
</div>
[!--temp.footer--]

</body>
</html>