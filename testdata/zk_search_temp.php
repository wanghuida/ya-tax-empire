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
        <script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js"></script>
		[!--temp.header--]
	    <div class="bound body">
	    	<div>现在的位置：<a href="[!--news.url--]">首页</a>&nbsp;>&nbsp;搜索</div>
	    	<div class="grid765_r left">
				<form action='index.php' method="GET" name="search_news" id="search_news">
					关键字：
					<input name="keyboard" type="text" id="keyboard" value="[!--keyboard--]" size="42" />
	        		<select name="field" id="field">
			          <option value="1">全文</option>
			          <option value="2">标题</option>
			          <option value="3">内容</option>
			        </select> 
			        <input type="submit" name="Submit22" value="搜索" />
			        <font color="#666666">(多个关键字请用&quot;空格&quot;隔开)</font> 
				</form>
				系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果
				<div class='sch_left'>
					<div class="hr"></div>
					[!--empirenews.listtemp--]
					<h2 class="r"><span>[!--no.num--].</span> <a class="l schset" href="[!--titleurl--]" target="_blank">[!--title--]</a></h2>
					<div class="s_result">
						[!--smalltext--]<br/>
						<span class="a">[!--titleurl--] - [!--newstime--]</span>
					</div>
					<div class="hr"></div>
					[!--empirenews.listtemp--]
				</div>
				<div class="epages">
				    [!--listpage--]
				</div>
			</div>
			<div class="grid215 right">
			    <div class="white-paper">
			        <div class="body">
			            <div class="header">
			                <div class="icon"></div>
			                培训公告
			            </div>
			            <div class="content">
			                <ul>
			                    <?php
			                    require_once ECMS_PATH.'e/data/dbcache/class1.php';
			                    $link=db_connect();
			                    $empire=new mysqlquery();
			                    $peixungg = $empire->query("select * from phome_ecms_news where classid='91' order by id desc limit 5");
			                    while ($r=$empire->fetch($peixungg)) {
			                        $titleurl=sys_ReturnBqTitleLink($r);
			                        echo "<li><a href=".$titleurl." target=_blank>".$r['title']."</a></li>";
			                    }
			                    ?>
			                </ul>
			                <div style="padding-left:80%;height:20px">
			                    <a href="[!--news.url--]a/ketang/gonggao/" class="expand">更多</a>
			                </div>
			            </div>
			            <div class="clear"></div>
			        </div>
			    </div>
			    <div class="related-news">
			        <div class="body">
			            <div class="header">
			                <div class="icon"></div>
			                最新动态
			            </div>
			            <div class="content">
			                <ul>
			                    <?php
			                    $zuixindt = $empire->query("select * from phome_ecms_news where classid in ('72','73','74','67' ,'68','69') order by id desc limit 5");
			                    while ($r=$empire->fetch($zuixindt)) {
			                        $titleurl=sys_ReturnBqTitleLink($r);
			                        echo "<li><a href=".$titleurl." target=_blank>".$r['title']."</a></li>";
			                    }
			                    ?>
			                </ul>
			                <div style="padding-left:80%">
			                    <a href="[!--news.url--]a/hangyedongcha/" class="expand">更多</a>
			                </div>
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
			</div>
		</div>
		[!--temp.footer--]
	</body>
</html>
<?php
db_close();
$empire=null;
?>