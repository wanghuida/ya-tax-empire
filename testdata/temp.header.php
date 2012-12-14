<div id="header">
    <div class="bound">
        <a href="/" id="logo">
            <img title="首页" src="[!--news.url--]skin/default/images/logo_cn.gif"></a>

        <div class="topnav">
            <div class="log">
                <!--change iframe to ajax start-->
            <?php
                $lggroupid=intval(getcvar('mlgroupid'));//会员组ID
                if($lggroupid)  //登陆会员显示菜单
                {
                ?>
                    <script>
                        document.write('<script src="/e/member/login/loginjs.php?t='+Math.random()+'"><'+'/script>');
                    </script>
                
            <?php
                }
                else  //游客显示菜单
                {
            ?> 
            <form name="form1" method="post" action="[!--news.url--]e/enews/index.php">
                    <input type=hidden name=ecmsfrom value="">
                    <input type=hidden name=enews value=login>
                    用户名
                    <input name="username" type="text" id="username" size="15">&nbsp;&nbsp;
                    密码
                    <input name="password" type="password" id="password" size="15">
                    <!--
                    <a href="../GetPassword/" target="_blank">忘记密码？</a></td>
                    <select name=lifetime>
                        <option value="0" selected="selected">不保存</option>
                        <option value="3600">一小时</option>
                        <option value="2592000">一个月</option>
                    </select>
                    -->
                    <input type="submit" name="Submit" value="登陆">&nbsp;&nbsp;&nbsp; 
                    <input type="button" name="button" value="注册" onclick="parent.location.href='[!--news.url--]e/member/register/';">
                </form>
            <?php
                }
            ?>
            </div>
            <!--change iframe to ajax end-->

        </div>
    </div>
</div>

<div id="menu">
<div class="nav">
<ul>
<li is="menuindex">
    <a href="[!--news.url--]" class="trad"><span>首页</span></a>
</li>
<li is="menuindex">
    <a iblk="行业洞察" href="[!--news.url--]a/hangyedongcha" class="trad"><span>行业洞察</span></a>

    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="taxonomy">
                    <a href="[!--news.url--]a/hangyedongcha/yejiedongtai/" class="topfrx">业界动态</a><br/>
                    <a href="[!--news.url--]a/hangyedongcha/zuixinfagui/" class="topfrx">最新法规</a><br/>
                    <a href="[!--news.url--]a/hangyedongcha/gongsixinwen/" class="topfrx">公司新闻</a><br/>
                    <a href="[!--news.url--]a/hangyedongcha/shuiwuwenhua/" class="topfrx">税文化研究</a><br/>
                </ul>

                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="/cn/industry/moving-forward/index.htm"><img height="140"
                                                                             width="259"
                                                                             src="[!--news.url--]skin/default/images/hw_s_223305.gif"></a>
                    </li>
                    <li class="summary">
                        <ul>
                            <li>善道·永安税务师事务有限公司</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="shadow_b_layout">
                <div></div>
            </div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="服务与方案" href="[!--news.url--]a/yewujieshao" class="solutions_products"><span>服务与方案</span></a>

    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="solutions_products clearfix">
                <ul class="list">
                    <li><a href="[!--news.url--]a/yewujieshao/#123" class="topfrx">税务培训</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#122" class="topfrx">税务申报代理</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#121" class="topfrx">个人所得税代理</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#120" class="topfrx">汇算清缴代理</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#119" class="topfrx">税政协助</a></li>
                </ul>
                <ul class="list">
                    <li><a href="[!--news.url--]a/yewujieshao/#118" class="topfrx">转让定价</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#117" class="topfrx">税务筹划</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#116" class="topfrx">税务审计</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao/#115" class="topfrx">税务顾问</a></li>
                    <li><a href="[!--news.url--]a/yewujieshao" class="topfrx">其他业务</a></li>
                </ul>
                <ul class="list last">
                    <li><a href="[!--news.url--]a/chenggonganli" class="topfrx">成功案例</a></li>
                    <li><a href="[!--news.url--]a/chenggonganli/#180" class="topfrx">合作企业</a></li>
                </ul>

                <div class="verticalLine"></div>
                <ul class="m_box">
                    <li>
                        <a href="/" target="_blank"><img height="144" width="217"
                                                         src="[!--news.url--]skin/default/images/hw_s_223306.gif"></a>
                    </li>
                    <li class="summary">
                        <ul>
                            <li>善道·永安税务师事务有限公司</li>
                        </ul>
                    </li>
                </ul>

            </div>
            <div class="shadow_b_layout">
                <div></div>
            </div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="财税大课堂" href="[!--news.url--]a/peixunzhuanti" class="support"><span>财税大课堂</span></a>

    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="support clearfix">
                <ul class="list last">
                    <li><a href="[!--news.url--]a/peixunzhuanti/yinggaizeng" class="topfrx">营改增专题</a></li>
                    <li><a href="[!--news.url--]a/peixunzhuanti/qiyechongzu" class="topfrx">企业重组培训</a></li>
                    <li><a href="[!--news.url--]a/peixunzhuanti/" class="topfrx">注册税务师培训</a></li>
                    <li><a href="[!--news.url--]a/peixunzhuanti/peixungonggao" class="topfrx">培训公告</a></li>
                </ul>
                <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><img height="144" width="217" src="[!--news.url--]skin/default/images/hw_s_223303.gif"></li>
                    <li class="summary">
                        <ul>
                            <li>欢迎来到财税大课堂</li>
                        </ul>
                    </li>
                </ul>

            </div>
            <div class="shadow_b_layout">
                <div></div>
            </div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="关于永安" href="[!--news.url--]a/guanyuwomen/" class="about_yatax"><span>关于永安</span></a>

    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="list">
                    <li><a href="[!--news.url--]a/guanyuwomen/#131" class="topfrx">公司简介</a></li>
                    <li><a href="[!--news.url--]a/guanyuwomen/#130" class="topfrx">公司理念</a></li>
                    <li><a href="[!--news.url--]a/guanyuwomen/#129" class="topfrx">专家团队</a></li>
                </ul>
                <ul class="list last">
                    <li><a href="[!--news.url--]a/guanyuwomen/#128" class="topfrx">联系方式</a></li>
                    <li><a href="[!--news.url--]a/liuyanban/" class="topfrx">留言板</a></li>
                </ul>
                <div class="verticalLine"></div>
                <ul class="m_box">
                    <li><a href="[!--news.url--]a/guanyuwomen/">
                        <img height="155" width="273" src="[!--news.url--]skin/default/images/hw_u_173050.jpg"></a></li>
                    <li>善道·永安税务师事务有限公司</li>
                </ul>

            </div>
            <div class="shadow_b_layout">
                <div></div>
            </div>
        </div>
    </div>
</li>
<li is="menuindex">
    <a iblk="加入永安" href="[!--news.url--]a/jiaruyongan" class="join_yatax"><span>加入永安</span></a>

    <div class="menuitempanel">
        <div class="menucontentdiv">
            <div class="menufillet_e"></div>
            <div class="trad clearfix">
                <ul class="list">
                    <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">总经理助理</a></li>
                    <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">高级项目经理</a></li>
                    <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">项目助理</a></li>
                </ul>
                <ul class="list">
                    <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">教育项目经理</a></li>
                </ul>
                <ul class="list last">
                    <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">网站产品经理</a></li>
                <li><a href="[!--news.url--]a/jiaruyongan/" class="topfrx">技术与开发人员</a></li>
                </ul>


               <div class="verticalLine"></div>

                <ul class="m_box">
                    <li><a href="/" target="_blank"><img height="140" width="204"
                                                                src="[!--news.url--]skin/default/images/hw_192713.jpg"></a>
                    </li>
                    <li class="title"><a href="/" target="_blank">走近永安</a></li>
                </ul>
            </div>
            <div class="shadow_b_layout">
                <div></div>
            </div>
        </div>
    </div>
</li>
</ul>
</div>
</div>
<div id="message_box">
  <a href="[!--news.url--]e/tool/gbook/?bid=1" target=_blank>在线咨询</a>
</div> 
<script type="text/javascript">
  $('#message_box').css("top",$(window).height()-70 +"px");
  $('#message_box').css("left",$(window).width()-145 +"px"); 
  $('#message_box').css("display","block");
</script>