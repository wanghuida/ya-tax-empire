<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
			[!--pagetitle--]
		</title>
		<meta name="keywords" content="[!--pagekey--]" />
		<meta name="description" content="[!--pagedes--]" />
		<link rel="stylesheet" href="[!--news.url--]skin/default/css/yatax.css" type="text/css" media="screen, project, print" />
		<link rel="stylesheet" href="[!--news.url--]skin/default/css/globle_cn_ie6.css" type="text/css" media="screen, project, print" />
		<link rel="stylesheet" href="[!--news.url--]skin/default/css/jquery.ui.theme.css" type="text/css" media="screen, project, print" />
		<script type="text/javascript" src="[!--news.url--]skin/default/js/jquery-1.8.2.js">
</script>
	</head>
	<body>
		<p>
			[!--temp.header--]
		</p>
		<div id="container">
			<div class="bound body">
				<div>
					您的位置：[!--newsnav--]
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
						<div id="tabContent1">
							<div class="core-network">
								<div class="content">
									<div class="title" style="margin-bottom:0px;">
										业界动态
									</div>
									<hr />
								</div>
							</div>
							<div class="content">
								<!--content list start-->
								<div class="case">
									<ul>
										<li style="list-style: none">[ecmsinfo]72,3,32,0,0,8,0[/ecmsinfo]
										</li>
									</ul>
								</div>
							</div>
							<div class="content">
								<a href="[!--news.url--]a/hangyedongcha/yejiedongtai" class="expand" id="morenews" name="morenews">更多</a>
							</div>
						</div>
						<div id="tabContent2">
							<div class="core-network">
								<div class="content">
									<div class="title" style="margin-bottom:0px;">
										最新法规
									</div>
									<hr />
								</div>
							</div>
							<div class="content">
								<!--SortSpec = sortext-->
								<!--content list start-->
								<div class="case">
									<ul>
										<li style="list-style: none">[ecmsinfo]73,3,32,0,0,8,0[/ecmsinfo]
										</li>
									</ul>
								</div>
								<div class="clear"></div><!--content list end-->
								<div class="content">
									<a href="[!--news.url--]a/hangyedongcha/zuixinfagui" class="expand">更多</a>
								</div>
							</div>
						</div>
						<div id="tabContent3">
							<div class="core-network">
								<div class="content">
									<div class="title" style="margin-bottom:0px;">
										公司新闻
									</div>
									<hr />
								</div>
							</div>
							<div class="content">
								<!--SortSpec = sortext-->
								<!--content list start-->
								<div class="case">
									<ul>
										<li style="list-style: none">[ecmsinfo]74,3,32,0,0,8,0[/ecmsinfo]
										</li>
									</ul>
								</div>
								<div class="clear"></div><!--content list end-->
								<div class="content">
									<a href="[!--news.url--]a/hangyedongcha/gongsixinwen" class="expand">更多</a>
								</div>
							</div>
						</div>
						<div id="tabContent4">
							<div class="core-network">
								<div class="content">
									<div class="title" style="margin-bottom:0px;">
										税务文化研究
									</div>
									<hr />
								</div>
							</div>
							<div class="content">
								<!--SortSpec = sortext-->
								<!--content list start-->
								<div class="case">
									<ul>
										<li style="list-style: none">[ecmsinfo]75,3,32,0,0,8,0[/ecmsinfo]
										</li>
									</ul>
								</div>
								<div class="clear"></div><!--content list end-->
								<div class="content">
									<a href="[!--news.url--]a/hangyedongcha/shuiwuwenhua" target="_blank" class="expand">更多</a>
								</div>
							</div>
						</div>
					</div>
					<div class="grid215 right">
                 		<button type="button" class="zixun" onclick="window.open('[!--news.url--]e/tool/gbook/?bid=1')">
                    		在线咨询
                		</button>
                		<div class="hr"></div>
						<div class="white-paper">
							<div class="body">
								<div class="header">
									<div class="icon"></div>培训公告
								</div>
								<div class="content">
									<ul>
									[e:loop={71,5,0,0}]
                            		<li><a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a> </li>
                            		[/e:loop]
									</ul>
									<div style="padding-left:80%;height:20px">
										<a href="[!--news.url--]a/peixunzhuanti/peixungonggao/" target="_blank" class="expand">更多</a>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="related-news">
							<div class="body">
								<div class="header">
									<div class="icon"></div>最新动态
								</div>
								<div class="content">
									<ul>
									[e:loop={'news',5,18,0,'classid in ("72","73","74","67" ,"68","69")','newstime DESC'}]
                            		<li><a href="<?=$bqsr['titleurl']?>" target="_blank"><?=$bqr['title']?></a></li>
                            		[/e:loop]
									</ul>
									<div style="padding-left:80%">
										<a href="[!--news.url--]a/hangyedongcha/" target="_blank" class="expand">更多</a>
									</div>
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
									<span class="highlights3"><a href="[!--news.url--]a/peixunzhuanti/" target="_blank">培训业务</a></span> 
									<span class="highlights3"><a href="[!--news.url--]a/yewujieshao/#117" target="_blank">税务筹划</a></span> 
									<span class="highlights3"><a href="[!--news.url--]a/yewujieshao/#122" target="_blank">税务代理</a></span> 
									<span class="highlights3"><a href="[!--news.url--]a/peixunzhuanti/qiyechongzu" target="_blank">企业重组</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p>
			[!--temp.footer--]
		</p>
	</body>
</html>
