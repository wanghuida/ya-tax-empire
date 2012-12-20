<?php
if(!defined('InEmpireCMS'))
{
  exit();
}
?>
<?php
$url="<a href=/>首页</a>&nbsp;>&nbsp;<a href=../cp/>会员中心</a>";
require(ECMS_PATH.'e/data/template/cp_1.php');
?>
  <div style="height:320px">
      <div><strong>会员中心</strong></div>
      <div class="hr"></div>
      <div style="float:left;text-align:center;padding-left:50px;padding-top:30px">
        <img src="<?=$userpic?>" width="158" height="158" style="border:1px solid #cccccc;" /><br/>
        <a href="../../space/?userid=<?=$user[userid]?>" target="_blank"><?=$user[username]?></a>
      </div>
      <div>
        <table border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
          <tr bgcolor="#FFFFFF"> 
            <td width="15%" height="25">用户ID:</td>
            <td width="85%" height="25"> 
              <?=$user[userid]?>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td height="25">用户名:</td>
            <td height="25"> 
              <?=$user[username]?>&nbsp;&nbsp;(<a href="../../space/?userid=<?=$user[userid]?>" target="_blank">我的会员空间</a>) 
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="33%" height="25">注册时间:</td>
            <td width="67%" height="25"> 
              <?=$registertime?>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td height="25">会员等级:</td>
            <td height="25"> 
              <?=$level_r[$r[groupid]][groupname]?>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td height="25">剩余有效期:</td>
            <td height="25"> 
              <?=$userdate?>天
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td height="25">剩余点数:</td>
            <td height="25"> 
              <?=$r[userfen]?>点
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td height="25">帐户余额:</td>
             <td height="25"> 
                <?=$r[money]?>元
              </td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td height="25">新短信息:</td>
              <td height="25"> 
                <?=$havemsg?>
              </td>
            </tr>
        </table>
      </div>
  </div>
  <div>
    <div><strong>快速入口</strong></div>
    <div class="hr"></div>
    <table width="100%">
      <tr>
        <td><a href="../EditInfo/"><img src="../../data/images/membercp/userinfo.gif" width="16" height="16" border="0" align="absmiddle"> 
      修改资料</a></td>
        <td><a href="../msg/"><img src="../../data/images/membercp/msg.gif" width="16" height="16" border="0" align="absmiddle"> 
      站内信息</a></td>
        <td><a href="../mspace/SetSpace.php"><img src="../../data/images/membercp/space.gif" width="16" height="16" border="0" align="absmiddle"> 
      空间设置</a></td>
        <td><a href="../../tool/gbook/?bid=1" target='_blank'><img src="../../data/images/membercp/info.gif" width="16" height="16" border="0" align="absmiddle"> 
      在线咨询</a></td>
      </tr>
    </table>
  </div>
<?php
require(ECMS_PATH.'e/data/template/cp_2.php');
?>