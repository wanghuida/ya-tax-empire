function search_check(obj){if(obj.keyboard.value.length==0){alert('请输入搜索关键字');return false;}return true;}document.write("<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action='/e/search/index.php' onsubmit='return search_check(document.search_js2);'><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option><option value=64>|-关于我们</option><option value=62>|-业务介绍</option><option value=63>|-税收大课堂</option><option value=67>&nbsp;&nbsp;|-企业重组培训</option><option value=68>&nbsp;&nbsp;|-营改增专题</option><option value=69>&nbsp;&nbsp;|-注册税务师培训</option><option value=71>&nbsp;&nbsp;|-培训公告</option><option value=65>|-行业洞察</option><option value=72>&nbsp;&nbsp;|-业界动态</option><option value=73>&nbsp;&nbsp;|-最新法规</option><option value=74>&nbsp;&nbsp;|-公司新闻</option><option value=75>&nbsp;&nbsp;|-税务文化研究</option></select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>");