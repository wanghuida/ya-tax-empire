/////////////////////////////////////////////////////////////////////////////
// Function : NavNode (constructor)
// Comments :
/////////////////////////////////////////////////////////////////////////////
function NavNode(id, label, href, parent)
{
	this.m_parent = null;
	this.m_level = 0;

	if (parent)
	{
		this.m_parent = parent;
		this.m_level = parent.m_level+1;
	}

	this.m_id = id;

	// assume that m_label will most often be used directly as HTML
	this.m_rawlabel = label;

	label = label.replace(/&/g, '&amp;');
	label = label.replace(/</g, '&lt;');
	label = label.replace(/>/g, '&gt;');
	label = label.replace(/"/g, '&quot;');

	this.m_label = label;

	this.m_href = href;
	this.m_subNodes = new Array();

	var argValues = NavNode.arguments;
	var argCount = NavNode.arguments.length;

	for (i = 4 ; i < argCount ; i++)
	{
		var eqPos = argValues[i].indexOf("==");
		var attrName = argValues[i].substring(0,eqPos);
		var attrValue = argValues[i].substring(eqPos+2);

		eval("this.cp_" + attrName + " = '" + attrValue + "';");
	}

	NavNode.prototype.addNode = addNode;
	NavNode.prototype.isSelected = isSelected;
}

/////////////////////////////////////////////////////////////////////////////
// Function : addNode
// Comments :
/////////////////////////////////////////////////////////////////////////////
function addNode(id, label, href)
{
	var newIndex = this.m_subNodes.length;
	var newNode = new NavNode(id, label, href, this);

	var argValues = addNode.arguments;
	var argCount = addNode.arguments.length;

	for (i = 3 ; i < argCount ; i++)
	{
		var eqPos = argValues[i].indexOf("==");
		var attrName = argValues[i].substring(0,eqPos);
		var attrValue = argValues[i].substring(eqPos+2);

		eval("newNode.cp_" + attrName + " = '" + attrValue + "';");
	}

	this.m_subNodes[newIndex] = newNode;
	return newNode;
}

/////////////////////////////////////////////////////////////////////////////
// Function : isSelected
// Comments :
/////////////////////////////////////////////////////////////////////////////
function isSelected()
{
    var pos = window.location.href.lastIndexOf("/");
    var docname = window.location.href.substring(pos+1, window.location.href.length);

    pos = this.m_href.lastIndexOf("/");
    var myname = this.m_href.substring(pos+1, this.m_href.length);

    if (docname == myname)
		return true;
	else
		return false;
}

/////////////////////////////////////////////////////////////////////////////
// Function : customSectionPropertyExists
// Comments :
/////////////////////////////////////////////////////////////////////////////
function customSectionPropertyExists(csp)
{
	return (typeof csp != _U && csp != null);
}

/////////////////////////////////////////////////////////////////////////////
// Function : getCustomSectionProperty
// Comments :
/////////////////////////////////////////////////////////////////////////////
function getCustomSectionProperty(csp)
{
	if (customSectionPropertyExists(csp))
	{
		return csp;
	}
	else
	{
		return "";
	}
}

/////////////////////////////////////////////////////////////////////////////

var g_navNode_Root = new NavNode('1','Worldwide',ssUrlPrefix + 'index.htm',null);
g_navNode_2=g_navNode_Root.addNode('2351','\u884c\u4e1a\u6d1e\u5bdf',ssUrlPrefix + 'industry/index.htm','isDynamic==FALSE');
g_navNode_2_0=g_navNode_2.addNode('2355','\u5ba2\u6237\u58f0\u97f3',ssUrlPrefix + 'industry/customer-voices/index.htm','secondaryUrlVariableField==creative_detail');
g_navNode_2_1=g_navNode_2.addNode('2354','\u6d88\u8d39\u8005\u7814\u7a76',ssUrlPrefix + 'industry/consumer-lab/index.htm','includeInContent==FALSE');
g_navNode_2_3=g_navNode_2.addNode('2357','\u521b\u65b0',ssUrlPrefix + 'industry/moving-forward/index.htm','includeInContent==TRUE','secondaryUrlVariableField==creative_detail');
g_navNode_2_4=g_navNode_2.addNode('2359','\u70ed\u70b9\u6280\u672f',ssUrlPrefix + 'industry/huawei-voices/index.htm','secondaryUrlVariableField==creative_detail');
g_navNode_2_5=g_navNode_2.addNode('2358','\u6807\u51c6\u4e0e\u884c\u4e1a\u8d21\u732e',ssUrlPrefix + 'industry/standards-contributions/index.htm','includeInContent==TRUE','secondaryUrlVariableField==creative_detail');
g_navNode_4=g_navNode_Root.addNode('2391','carrier',ssUrlPrefix + 'carrier/index.htm');
g_navNode_6=g_navNode_Root.addNode('2','\u89e3\u51b3\u65b9\u6848',ssUrlPrefix + 'solutions/index.htm','contributorOnly==FALSE');
g_navNode_6_0=g_navNode_6.addNode('3','\u589e\u52a0\u6536\u76ca',ssUrlPrefix + 'solutions/arpu-up/index.htm','secondaryUrlVariableField==article');
g_navNode_6_1=g_navNode_6.addNode('4','\u66f4\u5bbd\u66f4\u667a\u80fd',ssUrlPrefix + 'solutions/broader-smarter/index.htm','secondaryUrlVariableField==article');
g_navNode_6_2=g_navNode_6.addNode('5','\u63d0\u5347\u8fd0\u8425\u6548\u7387',ssUrlPrefix + 'solutions/costs-down/index.htm','secondaryUrlVariableField==article');
g_navNode_6_3=g_navNode_6.addNode('6','\u8282\u80fd\u51cf\u6392',ssUrlPrefix + 'solutions/go-greener/index.htm','secondaryUrlVariableField==article');
g_navNode_7=g_navNode_Root.addNode('7','\u4ea7\u54c1',ssUrlPrefix + 'products/index.htm');
g_navNode_7_0=g_navNode_7.addNode('10','\u65e0\u7ebf\u63a5\u5165',ssUrlPrefix + 'products/radio-access/index.htm');
g_navNode_7_0_0=g_navNode_7_0.addNode('59','\u591a\u6a21\u57fa\u7ad9',ssUrlPrefix + 'products/radio-access/singlebts/index.htm');
g_navNode_7_0_1=g_navNode_7_0.addNode('29','\u591a\u6a21\u57fa\u7ad9\u63a7\u5236\u5668',ssUrlPrefix + 'products/radio-access/multi-mode-bsc/index.htm');
g_navNode_7_1=g_navNode_7.addNode('11','\u56fa\u5b9a\u63a5\u5165',ssUrlPrefix + 'products/fixed-access/index.htm');
g_navNode_7_1_0=g_navNode_7_1.addNode('295','FTTx',ssUrlPrefix + 'products/fixed-access/fttx/index.htm');
g_navNode_7_1_0_0=g_navNode_7_1_0.addNode('66','OLT',ssUrlPrefix + 'products/fixed-access/fttx/olt/index.htm','externalUrl==/cn/products/fixed-access/fttx/olt/ma5680t/index.htm');
g_navNode_7_1_0_0_0=g_navNode_7_1_0_0.addNode('516','MA5680T',ssUrlPrefix + 'products/fixed-access/fttx/olt/ma5680t/index.htm');
g_navNode_7_1_0_1=g_navNode_7_1_0.addNode('67','MxU',ssUrlPrefix + 'products/fixed-access/fttx/mxu/index.htm');
g_navNode_7_1_0_1_0=g_navNode_7_1_0_1.addNode('517','MA5612',ssUrlPrefix + 'products/fixed-access/fttx/mxu/ma5612/index.htm');
g_navNode_7_1_0_1_1=g_navNode_7_1_0_1.addNode('518','MA5616',ssUrlPrefix + 'products/fixed-access/fttx/mxu/ma5616/index.htm');
g_navNode_7_1_0_1_2=g_navNode_7_1_0_1.addNode('519','MA5620',ssUrlPrefix + 'products/fixed-access/fttx/mxu/ma5620/index.htm');
g_navNode_7_1_0_1_3=g_navNode_7_1_0_1.addNode('520','MA5626',ssUrlPrefix + 'products/fixed-access/fttx/mxu/ma5626/index.htm');
g_navNode_7_1_0_2=g_navNode_7_1_0.addNode('68','ONT',ssUrlPrefix + 'products/fixed-access/fttx/ont/index.htm');
g_navNode_7_1_0_2_0=g_navNode_7_1_0_2.addNode('521','HG813',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg813/index.htm');
g_navNode_7_1_0_2_1=g_navNode_7_1_0_2.addNode('522','HG813e',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg813e/index.htm');
g_navNode_7_1_0_2_2=g_navNode_7_1_0_2.addNode('523','HG8010',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8010/index.htm');
g_navNode_7_1_0_2_3=g_navNode_7_1_0_2.addNode('524','HG8110',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8110/index.htm');
g_navNode_7_1_0_2_4=g_navNode_7_1_0_2.addNode('525','HG8120',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8120/index.htm');
g_navNode_7_1_0_2_5=g_navNode_7_1_0_2.addNode('526','HG8120R',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8120r/index.htm');
g_navNode_7_1_0_2_6=g_navNode_7_1_0_2.addNode('527','HG8240',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8240/index.htm');
g_navNode_7_1_0_2_7=g_navNode_7_1_0_2.addNode('528','HG8240R',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8240r/index.htm');
g_navNode_7_1_0_2_8=g_navNode_7_1_0_2.addNode('529','HG8245',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8245/index.htm');
g_navNode_7_1_0_2_9=g_navNode_7_1_0_2.addNode('530','HG8247',ssUrlPrefix + 'products/fixed-access/fttx/ont/hg8247/index.htm');
g_navNode_7_1_1=g_navNode_7_1.addNode('69','\u5149\u7ea4\u57fa\u7840\u8bbe\u65bd',ssUrlPrefix + 'products/fixed-access/odn/index.htm');
g_navNode_7_1_1_0=g_navNode_7_1_1.addNode('531','\u5149\u7ea4\u914d\u7ebf\u67b6',ssUrlPrefix + 'products/fixed-access/odn/fddi/index.htm');
g_navNode_7_1_1_1=g_navNode_7_1_1.addNode('532','\u5149\u7f06\u4ea4\u63a5\u7bb1',ssUrlPrefix + 'products/fixed-access/odn/brilliance/index.htm');
g_navNode_7_1_1_1_0=g_navNode_7_1_1_1.addNode('6317','GXF147-iFDT3103D',ssUrlPrefix + 'products/fixed-access/odn/brilliance/GXF147-iFDT3103D/index.htm');
g_navNode_7_1_1_1_1=g_navNode_7_1_1_1.addNode('6318','GXF147-iFDT3101D-A',ssUrlPrefix + 'products/fixed-access/odn/brilliance/GXF147-iFDT3101D-A/index.htm');
g_navNode_7_1_1_2=g_navNode_7_1_1.addNode('533','\u5149\u5206\u8def\u5355\u5143',ssUrlPrefix + 'products/fixed-access/odn/photodynamics/index.htm');
g_navNode_7_1_1_3=g_navNode_7_1_1.addNode('534','\u5149\u7f06\u63a5\u5934\u76d2',ssUrlPrefix + 'products/fixed-access/odn/guanglan/index.htm');
g_navNode_7_1_1_4=g_navNode_7_1_1.addNode('535','\u5149\u7f06\u5206\u7ea4\u7bb1',ssUrlPrefix + 'products/fixed-access/odn/fenxian/index.htm');
g_navNode_7_1_1_4_0=g_navNode_7_1_1_4.addNode('6328','GPX147-iFAT3105T-32/36',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3105T/index.htm');
g_navNode_7_1_1_4_1=g_navNode_7_1_1_4.addNode('6326','GPX147-iFAT3103TD-F/P',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3103TD/index.htm');
g_navNode_7_1_1_4_2=g_navNode_7_1_1_4.addNode('6324','GPX147-iFAT3103T-16/24',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3103T/index.htm');
g_navNode_7_1_1_4_3=g_navNode_7_1_1_4.addNode('6322','GPX147-iFAT3102-24',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3102-24/index.htm');
g_navNode_7_1_1_4_4=g_navNode_7_1_1_4.addNode('6320','GPX147-iFAT3101TD-32/36',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3101TD/index.htm');
g_navNode_7_1_1_4_5=g_navNode_7_1_1_4.addNode('6319','GPX147-iFAT3101-48',ssUrlPrefix + 'products/fixed-access/odn/fenxian/GPX147-iFAT3101-48/index.htm');
g_navNode_7_1_1_5=g_navNode_7_1_1.addNode('536','\u5149\u7ea4\u5165\u6237\u7ec8\u7aef\u76d2',ssUrlPrefix + 'products/fixed-access/odn/guangxianruhu/index.htm');
g_navNode_7_1_1_6=g_navNode_7_1_1.addNode('537','\u5f31\u7535\u7bb1',ssUrlPrefix + 'products/fixed-access/odn/ruodian/index.htm');
g_navNode_7_1_1_7=g_navNode_7_1_1.addNode('538','\u5149\u7f06',ssUrlPrefix + 'products/fixed-access/odn/guanglanxilie/index.htm');
g_navNode_7_1_4=g_navNode_7_1.addNode('64','DSLAM',ssUrlPrefix + 'products/fixed-access/dslam/index.htm','externalUrl==/cn/products/fixed-access/dslam/ma5600/index.htm');
g_navNode_7_1_4_0=g_navNode_7_1_4.addNode('511','MA5600',ssUrlPrefix + 'products/fixed-access/dslam/ma5600/index.htm');
g_navNode_7_1_9=g_navNode_7_1.addNode('508','\u7efc\u5408\u63a5\u5165',ssUrlPrefix + 'products/fixed-access/colligate-access/index.htm','externalUrl==/cn/products/fixed-access/colligate-access/ua5000/index.htm');
g_navNode_7_1_9_0=g_navNode_7_1_9.addNode('509','UA5000',ssUrlPrefix + 'products/fixed-access/colligate-access/ua5000/index.htm');
g_navNode_7_1_10=g_navNode_7_1.addNode('510','\u96c6\u6210\u7ad9\u70b9',ssUrlPrefix + 'products/fixed-access/integration-site/index.htm','externalUrl==/cn/products/fixed-access/integration-site/unisite/index.htm');
g_navNode_7_1_10_0=g_navNode_7_1_10.addNode('70','uniSite',ssUrlPrefix + 'products/fixed-access/integration-site/unisite/index.htm');
g_navNode_7_2=g_navNode_7.addNode('13','\u6838\u5fc3\u7f51',ssUrlPrefix + 'products/core-network/index.htm');
g_navNode_7_2_9=g_navNode_7_2.addNode('57','\u878d\u5408\u901a\u4fe1',ssUrlPrefix + 'products/core-network/singlecore/index.htm');
g_navNode_7_2_9_0=g_navNode_7_2_9.addNode('110','GU CS',ssUrlPrefix + 'products/core-network/singlecore/gu-cs/index.htm');
g_navNode_7_2_9_1=g_navNode_7_2_9.addNode('111','CDMA CS',ssUrlPrefix + 'products/core-network/singlecore/cdma-cs/index.htm');
g_navNode_7_2_9_2=g_navNode_7_2_9.addNode('636','\u56fa\u5b9a\u8f6f\u4ea4\u6362',ssUrlPrefix + 'products/core-network/singlecore/fixed-softswitch/index.htm');
g_navNode_7_2_9_3=g_navNode_7_2_9.addNode('119','SBC',ssUrlPrefix + 'products/core-network/singlecore/sbc/index.htm');
g_navNode_7_2_9_4=g_navNode_7_2_9.addNode('641','IMS Core',ssUrlPrefix + 'products/core-network/singlecore/ims-core/index.htm');
g_navNode_7_2_9_5=g_navNode_7_2_9.addNode('120','IMS AS',ssUrlPrefix + 'products/core-network/singlecore/ims-as/index.htm');
g_navNode_7_2_9_6=g_navNode_7_2_9.addNode('637','\u79fb\u52a8\u8bed\u97f3\u5a92\u4f53\u7f51\u5173',ssUrlPrefix + 'products/core-network/singlecore/umg/index.htm');
g_navNode_7_2_9_7=g_navNode_7_2_9.addNode('638','NGN\u5a92\u4f53\u7f51\u5173',ssUrlPrefix + 'products/core-network/singlecore/umg-ngn/index.htm');
g_navNode_7_2_9_8=g_navNode_7_2_9.addNode('639','IMS\u5a92\u4f53\u7f51\u5173',ssUrlPrefix + 'products/core-network/singlecore/umg-ims/index.htm');
g_navNode_7_2_10=g_navNode_7_2.addNode('58','\u5206\u7ec4\u6838\u5fc3\u7f51',ssUrlPrefix + 'products/core-network/singleepc/index.htm');
g_navNode_7_2_10_0=g_navNode_7_2_10.addNode('125','USN',ssUrlPrefix + 'products/core-network/singleepc/usn/index.htm');
g_navNode_7_2_10_1=g_navNode_7_2_10.addNode('126','UGW',ssUrlPrefix + 'products/core-network/singleepc/ugw/index.htm');
g_navNode_7_2_10_4=g_navNode_7_2_10.addNode('123','PDSN',ssUrlPrefix + 'products/core-network/singleepc/pdsn/index.htm');
g_navNode_7_2_10_5=g_navNode_7_2_10.addNode('124','WASN',ssUrlPrefix + 'products/core-network/singleepc/wasn/index.htm');
g_navNode_7_2_11=g_navNode_7_2.addNode('642','\u878d\u5408\u7528\u6237\u6570\u636e',ssUrlPrefix + 'products/core-network/singlesdb/index.htm');
g_navNode_7_2_11_0=g_navNode_7_2_11.addNode('102','GU HLR9820',ssUrlPrefix + 'products/core-network/singlesdb/gu-hlr/index.htm');
g_navNode_7_2_11_1=g_navNode_7_2_11.addNode('103','CDMA HLR9820',ssUrlPrefix + 'products/core-network/singlesdb/cdma-hlr/index.htm');
g_navNode_7_2_11_2=g_navNode_7_2_11.addNode('643','HSS9820',ssUrlPrefix + 'products/core-network/singlesdb/hss9820/index.htm');
g_navNode_7_2_11_3=g_navNode_7_2_11.addNode('105','SAE HSS9820',ssUrlPrefix + 'products/core-network/singlesdb/sae-hss/index.htm');
g_navNode_7_2_11_4=g_navNode_7_2_11.addNode('644','UPCC',ssUrlPrefix + 'products/core-network/singlesdb/upcc/index.htm');
g_navNode_7_2_11_5=g_navNode_7_2_11.addNode('645','UEIR',ssUrlPrefix + 'products/core-network/singlesdb/ueir/index.htm');
g_navNode_7_2_11_6=g_navNode_7_2_11.addNode('646','SPS',ssUrlPrefix + 'products/core-network/singlesdb/sps/index.htm');
g_navNode_7_2_12=g_navNode_7_2.addNode('647','SmartCare',ssUrlPrefix + 'products/core-network/smartcare/index.htm');
g_navNode_7_2_12_0=g_navNode_7_2_12.addNode('648','SEQ Analyst',ssUrlPrefix + 'products/core-network/smartcare/seq-analyst/index.htm');
g_navNode_7_2_12_1=g_navNode_7_2_12.addNode('649','VisualIP',ssUrlPrefix + 'products/core-network/smartcare/visualip/index.htm');
g_navNode_7_3=g_navNode_7.addNode('93','\u4f20\u9001\u7f51',ssUrlPrefix + 'products/transport-network/index.htm');
g_navNode_7_3_0=g_navNode_7_3.addNode('97','WDM/OTN',ssUrlPrefix + 'products/transport-network/wdm-otn/index.htm');
g_navNode_7_3_0_0=g_navNode_7_3_0.addNode('573','BWS 1600G',ssUrlPrefix + 'products/transport-network/wdm-otn/bwS1600g/index.htm');
g_navNode_7_3_0_1=g_navNode_7_3_0.addNode('574','OSN 8800',ssUrlPrefix + 'products/transport-network/wdm-otn/osn8800/index.htm');
g_navNode_7_3_0_2=g_navNode_7_3_0.addNode('575','OSN 6800\x263800',ssUrlPrefix + 'products/transport-network/wdm-otn/osn-68003800/index.htm');
g_navNode_7_3_0_3=g_navNode_7_3_0.addNode('576','OSN 1800',ssUrlPrefix + 'products/transport-network/wdm-otn/osn1800/index.htm');
g_navNode_7_3_1=g_navNode_7_3.addNode('559','Hybrid MSTP',ssUrlPrefix + 'products/transport-network/hybrid-mstp/index.htm');
g_navNode_7_3_1_0=g_navNode_7_3_1.addNode('746','OSN 7500',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn7500/index.htm');
g_navNode_7_3_1_1=g_navNode_7_3_1.addNode('567','OSN 7500 II',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn7500ii/index.htm');
g_navNode_7_3_1_2=g_navNode_7_3_1.addNode('568','OSN 3500',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn3500/index.htm');
g_navNode_7_3_1_3=g_navNode_7_3_1.addNode('569','OSN 1500',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn1500/index.htm');
g_navNode_7_3_1_4=g_navNode_7_3_1.addNode('570','OSN 550',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn550/index.htm');
g_navNode_7_3_1_5=g_navNode_7_3_1.addNode('571','OSN 500',ssUrlPrefix + 'products/transport-network/hybrid-mstp/osn500/index.htm');
g_navNode_7_3_1_6=g_navNode_7_3_1.addNode('572','Metro 1000',ssUrlPrefix + 'products/transport-network/hybrid-mstp/metro1000/index.htm');
g_navNode_7_3_2=g_navNode_7_3.addNode('558','MSTP',ssUrlPrefix + 'products/transport-network/MSTP/index.htm');
g_navNode_7_3_2_0=g_navNode_7_3_2.addNode('562','OSN 9560',ssUrlPrefix + 'products/transport-network/MSTP/osn9560/index.htm');
g_navNode_7_3_2_1=g_navNode_7_3_2.addNode('563','OSN 9500',ssUrlPrefix + 'products/transport-network/MSTP/osn9500/index.htm');
g_navNode_7_3_2_2=g_navNode_7_3_2.addNode('564','OSN 3500 II',ssUrlPrefix + 'products/transport-network/MSTP/osn3500ii/index.htm');
g_navNode_7_3_2_3=g_navNode_7_3_2.addNode('565','OSN 2500',ssUrlPrefix + 'products/transport-network/MSTP/osn2500/index.htm');
g_navNode_7_3_2_4=g_navNode_7_3_2.addNode('566','Metro 100',ssUrlPrefix + 'products/transport-network/MSTP/metro100/index.htm');
g_navNode_7_3_10=g_navNode_7_3.addNode('560','\u5fae\u6ce2',ssUrlPrefix + 'products/transport-network/weibo/index.htm');
g_navNode_7_3_10_0=g_navNode_7_3_10.addNode('577','RTN 600',ssUrlPrefix + 'products/transport-network/weibo/rtn600/index.htm');
g_navNode_7_3_10_1=g_navNode_7_3_10.addNode('578','RTN 900',ssUrlPrefix + 'products/transport-network/weibo/rtn900/index.htm');
g_navNode_7_3_11=g_navNode_7_3.addNode('561','\u6d77\u7f06\u901a\u4fe1',ssUrlPrefix + 'products/transport-network/hailantonxin/index.htm','externalUrl==http\x3a//www.huaweimarine.com/marine/');
g_navNode_7_4=g_navNode_7.addNode('12','\u6570\u636e\u901a\u4fe1',ssUrlPrefix + 'products/data-communication/index.htm');
g_navNode_7_4_1=g_navNode_7_4.addNode('541','NE\u7cfb\u5217\u8def\u7531\u5668',ssUrlPrefix + 'products/data-communication/ne/index.htm');
g_navNode_7_4_1_0=g_navNode_7_4_1.addNode('546','NE5000E',ssUrlPrefix + 'products/data-communication/ne/ne5000e/index.htm');
g_navNode_7_4_1_1=g_navNode_7_4_1.addNode('547','NE80E',ssUrlPrefix + 'products/data-communication/ne/ne80e/index.htm');
g_navNode_7_4_1_2=g_navNode_7_4_1.addNode('548','NE40E',ssUrlPrefix + 'products/data-communication/ne/ne40e/index.htm');
g_navNode_7_4_1_3=g_navNode_7_4_1.addNode('259','NE20E-X6',ssUrlPrefix + 'products/data-communication/ne/ne20e-x6/index.htm');
g_navNode_7_4_1_4=g_navNode_7_4_1.addNode('549','NE20E/20',ssUrlPrefix + 'products/data-communication/ne/ne20e20/index.htm');
g_navNode_7_4_2=g_navNode_7_4.addNode('542','CX\u7cfb\u5217\u7efc\u5408\u4e1a\u52a1\u627f\u8f7d\u8def\u7531\u5668',ssUrlPrefix + 'products/data-communication/cx/index.htm');
g_navNode_7_4_2_0=g_navNode_7_4_2.addNode('550','CX600\u7cfb\u5217\u7efc\u5408\u4e1a\u52a1\u627f\u8f7d\u8def\u7531\u5668',ssUrlPrefix + 'products/data-communication/cx/cx600/index.htm');
g_navNode_7_4_3=g_navNode_7_4.addNode('87','\u4ee5\u592a\u7f51\u4ea4\u6362\u673a',ssUrlPrefix + 'products/data-communication/ethernet-switches/index.htm');
g_navNode_7_4_3_0=g_navNode_7_4_3.addNode('751','S9300',ssUrlPrefix + 'products/data-communication/ethernet-switches/s9300/index.htm');
g_navNode_7_4_3_1=g_navNode_7_4_3.addNode('551','S6300',ssUrlPrefix + 'products/data-communication/ethernet-switches/S6300/index.htm');
g_navNode_7_4_3_2=g_navNode_7_4_3.addNode('748','S5300',ssUrlPrefix + 'products/data-communication/ethernet-switches/s5300/index.htm');
g_navNode_7_4_3_3=g_navNode_7_4_3.addNode('749','S3300',ssUrlPrefix + 'products/data-communication/ethernet-switches/s3300/index.htm');
g_navNode_7_4_3_4=g_navNode_7_4_3.addNode('750','S2300',ssUrlPrefix + 'products/data-communication/ethernet-switches/s2300/index.htm');
g_navNode_7_4_5=g_navNode_7_4.addNode('543','MSCG\u591a\u4e1a\u52a1\u63a7\u5236\u7f51\u5173',ssUrlPrefix + 'products/data-communication/mscg/index.htm','externalUrl==/cn/products/data-communication/mscg/me60/index.htm');
g_navNode_7_4_5_0=g_navNode_7_4_5.addNode('552','ME60',ssUrlPrefix + 'products/data-communication/mscg/me60/index.htm');
g_navNode_7_4_6=g_navNode_7_4.addNode('86','PTN',ssUrlPrefix + 'products/data-communication/ptn/index.htm');
g_navNode_7_4_6_0=g_navNode_7_4_6.addNode('553','PTN 910',ssUrlPrefix + 'products/data-communication/ptn/ptn910/index.htm');
g_navNode_7_4_6_1=g_navNode_7_4_6.addNode('554','PTN 950',ssUrlPrefix + 'products/data-communication/ptn/ptn950/index.htm');
g_navNode_7_4_6_2=g_navNode_7_4_6.addNode('555','PTN 1900',ssUrlPrefix + 'products/data-communication/ptn/ptn1900/index.htm');
g_navNode_7_4_6_3=g_navNode_7_4_6.addNode('556','PTN 3900-8',ssUrlPrefix + 'products/data-communication/ptn/ptn3900-8/index.htm');
g_navNode_7_4_6_4=g_navNode_7_4_6.addNode('557','PTN 3900',ssUrlPrefix + 'products/data-communication/ptn/ptn3900/index.htm');
g_navNode_7_4_7=g_navNode_7_4.addNode('88','SRG\u7cfb\u5217\u4e1a\u52a1\u8def\u7531\u7f51\u5173',ssUrlPrefix + 'products/data-communication/service-router-gateway/index.htm');
g_navNode_7_4_7_0=g_navNode_7_4_7.addNode('752','SRG1200',ssUrlPrefix + 'products/data-communication/service-router-gateway/srg1200/index.htm');
g_navNode_7_4_7_2=g_navNode_7_4_7.addNode('754','SRG2200',ssUrlPrefix + 'products/data-communication/service-router-gateway/srg2200/index.htm');
g_navNode_7_4_7_3=g_navNode_7_4_7.addNode('755','SRG3200',ssUrlPrefix + 'products/data-communication/service-router-gateway/srg3200/index.htm');
g_navNode_7_4_8=g_navNode_7_4.addNode('84','\u5b89\u5168\u4ea7\u54c1',ssUrlPrefix + 'products/data-communication/security/index.htm');
g_navNode_7_4_8_0=g_navNode_7_4_8.addNode('640','\u9632\u706b\u5899',ssUrlPrefix + 'products/data-communication/security/Firewall/index.htm');
g_navNode_7_4_8_0_0=g_navNode_7_4_8_0.addNode('905','E8000E\u7cfb\u5217\u4e07\u5146IPS\u5b89\u5168\u7f51\u5173',ssUrlPrefix + 'products/data-communication/security/Firewall/E8000E/index.htm');
g_navNode_7_4_8_0_1=g_navNode_7_4_8_0.addNode('799','E1000E-X\u7cfb\u5217\u9632\u706b\u5899',ssUrlPrefix + 'products/data-communication/security/Firewall/E1000E-X/index.htm');
g_navNode_7_4_8_2=g_navNode_7_4_8.addNode('708','\u5185\u5bb9\u5b89\u5168',ssUrlPrefix + 'products/data-communication/security/content-security/index.htm');
g_navNode_7_4_8_2_0=g_navNode_7_4_8_2.addNode('812','NIP\u7f51\u7edc\u667a\u80fd\u9632\u62a4\u7cfb\u7edf',ssUrlPrefix + 'products/data-communication/security/content-security/NIP/index.htm');
g_navNode_7_4_8_3=g_navNode_7_4_8.addNode('709','\u6d41\u91cf\u7ba1\u7406',ssUrlPrefix + 'products/data-communication/security/sig/index.htm');
g_navNode_7_4_8_3_0=g_navNode_7_4_8_3.addNode('893','SIG9800\u7cfb\u5217\u4e1a\u52a1\u76d1\u63a7\u7f51\u5173',ssUrlPrefix + 'products/data-communication/security/sig/SIG9800/index.htm');
g_navNode_7_4_8_3_1=g_navNode_7_4_8_3.addNode('894','SIG9280E\x26SIG1000E\u4e1a\u52a1\u76d1\u63a7\u7f51\u5173',ssUrlPrefix + 'products/data-communication/security/sig/SIG9280E/index.htm');
g_navNode_7_4_8_4=g_navNode_7_4_8.addNode('710','\u5f02\u5e38\u6d41\u91cf\u7ba1\u7406',ssUrlPrefix + 'products/data-communication/security/abnormity/index.htm');
g_navNode_7_4_8_4_0=g_navNode_7_4_8_4.addNode('895','E1000E-I/D\u7cfb\u5217',ssUrlPrefix + 'products/data-communication/security/abnormity/E1000E-ID/index.htm');
g_navNode_7_4_8_4_1=g_navNode_7_4_8_4.addNode('896','Anti-DDoS \u5b89\u5168\u4e1a\u52a1\u677f',ssUrlPrefix + 'products/data-communication/security/abnormity/Anti-DDoS/index.htm');
g_navNode_7_4_8_5=g_navNode_7_4_8.addNode('711','\u7f51\u7edc\u7f13\u5b58',ssUrlPrefix + 'products/data-communication/security/network/index.htm');
g_navNode_7_4_8_5_0=g_navNode_7_4_8_5.addNode('897','Internet cache',ssUrlPrefix + 'products/data-communication/security/network/internet-cache/index.htm');
g_navNode_7_4_8_6=g_navNode_7_4_8.addNode('712','\u5408\u89c4\u7c7b',ssUrlPrefix + 'products/data-communication/security/normally/index.htm');
g_navNode_7_4_8_6_0=g_navNode_7_4_8_6.addNode('899','iSoc \u7edf\u4e00\u5b89\u5168\u7ba1\u63a7\u4e2d\u5fc3',ssUrlPrefix + 'products/data-communication/security/normally/iSoc/index.htm');
g_navNode_7_4_8_6_1=g_navNode_7_4_8_6.addNode('810','SSP/NSE',ssUrlPrefix + 'products/data-communication/security/normally/SSP-NSE/index.htm');
g_navNode_7_4_8_7=g_navNode_7_4_8.addNode('747','\u7ec8\u7aef\u5b89\u5168',ssUrlPrefix + 'products/data-communication/security/terminal/index.htm');
g_navNode_7_4_8_7_0=g_navNode_7_4_8_7.addNode('902','TSM \u7ec8\u7aef\u5b89\u5168\u7ba1\u7406\u7cfb\u7edf',ssUrlPrefix + 'products/data-communication/security/terminal/TSM/index.htm');
g_navNode_7_4_8_7_1=g_navNode_7_4_8_7.addNode('903','DSM \u6587\u6863\u5b89\u5168\u7ba1\u7406\u7cfb\u7edf',ssUrlPrefix + 'products/data-communication/security/terminal/DSM/index.htm');
g_navNode_7_4_8_7_2=g_navNode_7_4_8_7.addNode('904','eLog \u65e5\u5fd7\u7ba1\u7406\u7cfb\u7edf',ssUrlPrefix + 'products/data-communication/security/terminal/eLog/index.htm');
g_navNode_7_4_10=g_navNode_7_4.addNode('1083','ATN',ssUrlPrefix + 'products/data-communication/ATN/index.htm');
g_navNode_7_5=g_navNode_7.addNode('696','\u7f51\u7edc\u80fd\u6e90\u4ea7\u54c1\u7ebf',ssUrlPrefix + 'products/energy-infrastructure/index.htm');
g_navNode_7_5_0=g_navNode_7_5.addNode('5286','\u7ad9\u70b9\u4e0e\u7535\u6e90',ssUrlPrefix + 'products/energy-infrastructure/site-power/index.htm');
g_navNode_7_5_0_0=g_navNode_7_5_0.addNode('158','\u4e00\u6b21\u7535\u6e90',ssUrlPrefix + 'products/energy-infrastructure/site-power/carrier-class-power/index.htm');
g_navNode_7_5_0_1=g_navNode_7_5_0.addNode('183','EasySite',ssUrlPrefix + 'products/energy-infrastructure/site-power/easysite/index.htm');
g_navNode_7_5_0_2=g_navNode_7_5_0.addNode('700','Mini\u673a\u623f',ssUrlPrefix + 'products/energy-infrastructure/site-power/mini/index.htm');
g_navNode_7_5_0_3=g_navNode_7_5_0.addNode('699','\u4e00\u4f53\u7f8e\u5316\u7ad9',ssUrlPrefix + 'products/energy-infrastructure/site-power/camouflage-site/index.htm');
g_navNode_7_5_0_4=g_navNode_7_5_0.addNode('697','\u5feb\u88c5\u7ad9',ssUrlPrefix + 'products/energy-infrastructure/site-power/rds/index.htm');
g_navNode_7_5_1=g_navNode_7_5.addNode('5288','\u6570\u636e\u4e2d\u5fc3\u80fd\u6e90',ssUrlPrefix + 'products/energy-infrastructure/Data-Center-Energy/index.htm');
g_navNode_7_5_2=g_navNode_7_5.addNode('159','\u6df7\u5408\u4f9b\u7535',ssUrlPrefix + 'products/energy-infrastructure/hybrid-power/index.htm');
g_navNode_7_6=g_navNode_7.addNode('14','\u4e1a\u52a1\u4e0e\u8f6f\u4ef6',ssUrlPrefix + 'products/software/index.htm');
g_navNode_7_6_0=g_navNode_7_6.addNode('128','\u8fd0\u8425\u652f\u6491',ssUrlPrefix + 'products/software/bss/index.htm');
g_navNode_7_6_0_0=g_navNode_7_6_0.addNode('131','NGBSS',ssUrlPrefix + 'products/software/bss/ngbss/index.htm');
g_navNode_7_6_0_0_0=g_navNode_7_6_0_0.addNode('756','NGBSS',ssUrlPrefix + 'products/software/bss/ngbss/ngbss/index.htm');
g_navNode_7_6_0_0_1=g_navNode_7_6_0_0.addNode('757','\u5408\u4f5c\u4f19\u4f34\u5173\u7cfb\u7ba1\u7406',ssUrlPrefix + 'products/software/bss/ngbss/prm/index.htm');
g_navNode_7_6_0_0_2=g_navNode_7_6_0_0.addNode('758','\u5546\u4e1a\u667a\u80fd',ssUrlPrefix + 'products/software/bss/ngbss/bi/index.htm');
g_navNode_7_6_0_0_3=g_navNode_7_6_0_0.addNode('759','\u667a\u80fd\u547c\u53eb\u4e2d\u5fc3',ssUrlPrefix + 'products/software/bss/ngbss/ipcc/index.htm');
g_navNode_7_6_0_1=g_navNode_7_6_0.addNode('132','NGCRM',ssUrlPrefix + 'products/software/bss/ngcrm/index.htm');
g_navNode_7_6_0_1_0=g_navNode_7_6_0_1.addNode('760','CRM',ssUrlPrefix + 'products/software/bss/ngcrm/crm/index.htm');
g_navNode_7_6_0_1_1=g_navNode_7_6_0_1.addNode('761','\u8425\u9500\u7ba1\u7406',ssUrlPrefix + 'products/software/bss/ngcrm/campaign-management/index.htm');
g_navNode_7_6_0_1_2=g_navNode_7_6_0_1.addNode('762','\u5ba2\u6237\u5173\u6000',ssUrlPrefix + 'products/software/bss/ngcrm/customer-care/index.htm');
g_navNode_7_6_0_1_3=g_navNode_7_6_0_1.addNode('763','\u9500\u552e\u7ba1\u7406',ssUrlPrefix + 'products/software/bss/ngcrm/sales-management/index.htm');
g_navNode_7_6_0_1_4=g_navNode_7_6_0_1.addNode('764','\u81ea\u52a9\u670d\u52a1',ssUrlPrefix + 'products/software/bss/ngcrm/selfcare/index.htm');
g_navNode_7_6_0_2=g_navNode_7_6_0.addNode('133','NGRM',ssUrlPrefix + 'products/software/bss/ngrm/index.htm');
g_navNode_7_6_0_2_0=g_navNode_7_6_0_2.addNode('765','NGRM',ssUrlPrefix + 'products/software/bss/ngrm/ngrm/index.htm');
g_navNode_7_6_0_2_1=g_navNode_7_6_0_2.addNode('766','\u878d\u5408\u8ba1\u8d39',ssUrlPrefix + 'products/software/bss/ngrm/cbs/index.htm');
g_navNode_7_6_0_2_2=g_navNode_7_6_0_2.addNode('767','\u6b3a\u8bc8\u7ba1\u7406\u7cfb\u7edf',ssUrlPrefix + 'products/software/bss/ngrm/fraud/index.htm');
g_navNode_7_6_0_2_3=g_navNode_7_6_0_2.addNode('768','Mediation\u7cfb\u7edf',ssUrlPrefix + 'products/software/bss/ngrm/mediation/index.htm');
g_navNode_7_6_0_2_4=g_navNode_7_6_0_2.addNode('769','\u79fb\u52a8\u652f\u4ed8',ssUrlPrefix + 'products/software/bss/ngrm/mobilemoney/index.htm');
g_navNode_7_6_0_3=g_navNode_7_6_0.addNode('134','\u7ba1\u7406\u670d\u52a1',ssUrlPrefix + 'products/software/bss/bss-oss/index.htm');
g_navNode_7_6_0_3_0=g_navNode_7_6_0_3.addNode('770','BSS/OSS\u7ba1\u7406\u670d\u52a1',ssUrlPrefix + 'products/software/bss/bss-oss/BSS-OSSmanagament/index.htm');
g_navNode_7_6_0_3_1=g_navNode_7_6_0_3.addNode('771','\u4e1a\u52a1\u6d41\u7a0b\u5916\u5305\u670d\u52a1',ssUrlPrefix + 'products/software/bss/bss-oss/bpo/index.htm');
g_navNode_7_6_0_3_2=g_navNode_7_6_0_3.addNode('772','IT\u7ba1\u7406\u670d\u52a1',ssUrlPrefix + 'products/software/bss/bss-oss/ito/index.htm');
g_navNode_7_6_0_3_3=g_navNode_7_6_0_3.addNode('773','\u8f6c\u578b\u670d\u52a1',ssUrlPrefix + 'products/software/bss/bss-oss/transformation/index.htm');
g_navNode_7_6_1=g_navNode_7_6.addNode('129','\u4e2a\u4eba\u4e0e\u5bb6\u5ead',ssUrlPrefix + 'products/software/consumer/index.htm');
g_navNode_7_6_1_0=g_navNode_7_6_1.addNode('135','SDP',ssUrlPrefix + 'products/software/consumer/sdp/index.htm');
g_navNode_7_6_1_0_0=g_navNode_7_6_1_0.addNode('774','\u4e1a\u52a1\u4ea4\u4ed8\u5e73\u53f0\uff08SDP\uff09',ssUrlPrefix + 'products/software/consumer/sdp/SDP/index.htm');
g_navNode_7_6_1_0_1=g_navNode_7_6_1_0.addNode('775','\u79fb\u52a8\u5bbd\u5e26\u4ef7\u503c\u589e\u957f\u89e3\u51b3\u65b9\u6848\uff08MBB VGS\uff09',ssUrlPrefix + 'products/software/consumer/sdp/mbbvgs/index.htm');
g_navNode_7_6_1_0_2=g_navNode_7_6_1_0.addNode('776','\u6570\u5b57\u5546\u57ce\uff08DSM\uff09',ssUrlPrefix + 'products/software/consumer/sdp/dsm/index.htm');
g_navNode_7_6_1_1=g_navNode_7_6_1.addNode('136','\u6570\u5b57\u5bb6\u5ead',ssUrlPrefix + 'products/software/consumer/digital-home/index.htm');
g_navNode_7_6_1_1_0=g_navNode_7_6_1_1.addNode('777','IPTV',ssUrlPrefix + 'products/software/consumer/digital-home/iptv/index.htm');
g_navNode_7_6_1_1_1=g_navNode_7_6_1_1.addNode('778','WiHome',ssUrlPrefix + 'products/software/consumer/digital-home/wihome/index.htm');
g_navNode_7_6_1_1_2=g_navNode_7_6_1_1.addNode('779','DTV',ssUrlPrefix + 'products/software/consumer/digital-home/dtv/index.htm');
g_navNode_7_6_1_2=g_navNode_7_6_1.addNode('137','\u878d\u5408\u901a\u4fe1',ssUrlPrefix + 'products/software/consumer/rcs/index.htm');
g_navNode_7_6_1_2_0=g_navNode_7_6_1_2.addNode('780','\u878d\u5408\u901a\u4fe1\uff08RCS\uff09',ssUrlPrefix + 'products/software/consumer/rcs/rcs/index.htm');
g_navNode_7_6_1_2_1=g_navNode_7_6_1_2.addNode('781','\u77ed\u6d88\u606f',ssUrlPrefix + 'products/software/consumer/rcs/sms/index.htm');
g_navNode_7_6_1_2_2=g_navNode_7_6_1_2.addNode('782','\u8bed\u97f3\u90ae\u7bb1',ssUrlPrefix + 'products/software/consumer/rcs/vms/index.htm');
g_navNode_7_6_1_2_3=g_navNode_7_6_1_2.addNode('783','\u591a\u5a92\u4f53\u6d88\u606f',ssUrlPrefix + 'products/software/consumer/rcs/mms/index.htm');
g_navNode_7_6_1_2_4=g_navNode_7_6_1_2.addNode('784','NGIN',ssUrlPrefix + 'products/software/consumer/rcs/ngin/index.htm');
g_navNode_7_6_2=g_navNode_7_6.addNode('130','\u4f01\u4e1a\u4e1a\u52a1',ssUrlPrefix + 'products/software/enterprise/index.htm');
g_navNode_7_6_2_0=g_navNode_7_6_2.addNode('595','\u7edf\u4e00\u901a\u4fe1',ssUrlPrefix + 'products/software/enterprise/ucc/index.htm');
g_navNode_7_6_2_0_0=g_navNode_7_6_2_0.addNode('600','\u4f01\u4e1a\u878d\u5408\u901a\u4fe1\u89e3\u51b3\u65b9\u6848',ssUrlPrefix + 'products/software/enterprise/ucc/tongyi/index.htm');
g_navNode_7_6_2_0_1=g_navNode_7_6_2_0.addNode('601','IP\u8bed\u97f3\u89e3\u51b3\u65b9\u6848',ssUrlPrefix + 'products/software/enterprise/ucc/ip-yuyin/index.htm');
g_navNode_7_6_2_0_2=g_navNode_7_6_2_0.addNode('610','\u591a\u5a92\u4f53\u4f1a\u8bae\u89e3\u51b3\u65b9\u6848',ssUrlPrefix + 'products/software/enterprise/ucc/media/index.htm');
g_navNode_7_6_2_0_3=g_navNode_7_6_2_0.addNode('612','\u4e2d\u5c0f\u4f01\u4e1a\u4e91\u89e3\u51b3\u65b9\u6848',ssUrlPrefix + 'products/software/enterprise/ucc/communications/index.htm');
g_navNode_7_6_2_0_8=g_navNode_7_6_2_0.addNode('622','IP PBX',ssUrlPrefix + 'products/software/enterprise/ucc/ip-pbx/index.htm');
g_navNode_7_6_2_0_9=g_navNode_7_6_2_0.addNode('624','IAD',ssUrlPrefix + 'products/software/enterprise/ucc/iad/index.htm');
g_navNode_7_6_2_0_10=g_navNode_7_6_2_0.addNode('626','IP Phone',ssUrlPrefix + 'products/software/enterprise/ucc/ip-phone/index.htm');
g_navNode_7_6_2_0_11=g_navNode_7_6_2_0.addNode('628','Web Conference',ssUrlPrefix + 'products/software/enterprise/ucc/web-conference/index.htm');
g_navNode_7_6_2_0_12=g_navNode_7_6_2_0.addNode('630','Unified Message',ssUrlPrefix + 'products/software/enterprise/ucc/unified-message/index.htm');
g_navNode_7_6_2_0_13=g_navNode_7_6_2_0.addNode('631','eSpace',ssUrlPrefix + 'products/software/enterprise/ucc/espace/index.htm');
g_navNode_7_6_2_1=g_navNode_7_6_2.addNode('615','\u89c6\u9891\u76d1\u63a7',ssUrlPrefix + 'products/software/enterprise/video/index.htm');
g_navNode_7_6_2_2=g_navNode_7_6_2.addNode('598','\u547c\u53eb\u4e2d\u5fc3',ssUrlPrefix + 'products/software/enterprise/waibao/index.htm');
g_navNode_7_7=g_navNode_7.addNode('290','OSS',ssUrlPrefix + 'products/oss/index.htm');
g_navNode_7_7_0=g_navNode_7_7.addNode('291','FBB\u8fd0\u7ef4',ssUrlPrefix + 'products/oss/fbb-oss/index.htm');
g_navNode_7_7_0_0=g_navNode_7_7_0.addNode('582','\u56fd\u5bb6\u5bbd\u5e26\u96c6\u6210',ssUrlPrefix + 'products/oss/fbb-oss/country/index.htm','externalUrl==/cn/services/HW_087685?KeyTemps\x3d','isDynamic==TRUE');
g_navNode_7_7_0_1=g_navNode_7_7_0.addNode('583','IPTV\u96c6\u6210',ssUrlPrefix + 'products/oss/fbb-oss/iptv/index.htm','externalUrl==/cn/services/HW_087689?KeyTemps\x3d','isDynamic==TRUE');
g_navNode_7_7_0_2=g_navNode_7_7_0.addNode('584','\u56fa\u5b9a\u7f51\u7edc\u6f14\u8fdb',ssUrlPrefix + 'products/oss/fbb-oss/fixed/index.htm','externalUrl==/cn/services/HW_087693?KeyTemps\x3d','isDynamic==TRUE');
g_navNode_7_7_1=g_navNode_7_7.addNode('292','MBB\u8fd0\u7ef4',ssUrlPrefix + 'products/oss/mbb-oss/index.htm');
g_navNode_7_7_1_0=g_navNode_7_7_1.addNode('585','\u9762\u5411\u7ad9\u70b9\u7684\u878d\u5408\u7ba1\u7406',ssUrlPrefix + 'products/oss/mbb-oss/mianxiang/index.htm');
g_navNode_7_7_1_1=g_navNode_7_7_1.addNode('586','uBro\u548c\u5c0f\u57fa\u7ad9\u8fd0\u7ef4',ssUrlPrefix + 'products/oss/mbb-oss/ubro/index.htm');
g_navNode_7_7_5=g_navNode_7_7.addNode('580','FBB\u8fd0\u7ef4\u7cfb\u5217\u4ea7\u54c1',ssUrlPrefix + 'products/oss/fbb/index.htm');
g_navNode_7_7_5_0=g_navNode_7_7_5.addNode('588','iManager U2000',ssUrlPrefix + 'products/oss/fbb/imanageru2000/index.htm');
g_navNode_7_7_5_1=g_navNode_7_7_5.addNode('589','iManager N2510',ssUrlPrefix + 'products/oss/fbb/imanagern2510/index.htm');
g_navNode_7_7_6=g_navNode_7_7.addNode('581','MBB\u8fd0\u7ef4\u7cfb\u5217\u4ea7\u54c1',ssUrlPrefix + 'products/oss/mbb/index.htm');
g_navNode_7_7_6_0=g_navNode_7_7_6.addNode('590','iManager M2000',ssUrlPrefix + 'products/oss/mbb/imanager-m2000/index.htm');
g_navNode_7_7_6_1=g_navNode_7_7_6.addNode('591','iManager Nastar',ssUrlPrefix + 'products/oss/mbb/imanager-nastar/index.htm');
g_navNode_7_7_6_2=g_navNode_7_7_6.addNode('592','iManager PRS',ssUrlPrefix + 'products/oss/mbb/imanager-prs/index.htm');
g_navNode_7_7_6_3=g_navNode_7_7_6.addNode('593','iManager NetEco',ssUrlPrefix + 'products/oss/mbb/imanager-neteco/index.htm');
g_navNode_7_8=g_navNode_7.addNode('656','\u5b58\u50a8\u4e0e\u7f51\u7edc\u5b89\u5168',ssUrlPrefix + 'products/security-storage/index.htm');
g_navNode_7_8_0=g_navNode_7_8.addNode('657','\u5b89\u5168\u4ea7\u54c1',ssUrlPrefix + 'products/security-storage/security-product/index.htm');
g_navNode_7_8_0_0=g_navNode_7_8_0.addNode('659','\u5b89\u5168\u8def\u7531\u7f51\u5173',ssUrlPrefix + 'products/security-storage/security-product/security-router-gateway/index.htm');
g_navNode_7_8_0_0_0=g_navNode_7_8_0_0.addNode('670','USG2000 BSR/HSR',ssUrlPrefix + 'products/security-storage/security-product/security-router-gateway/usg2000-bsr-hsr/index.htm');
g_navNode_7_8_0_0_1=g_navNode_7_8_0_0.addNode('671','USG5000 BSRHSR',ssUrlPrefix + 'products/security-storage/security-product/security-router-gateway/usg5000-bsr-hsr/index.htm');
g_navNode_7_8_0_1=g_navNode_7_8_0.addNode('660','\u9632\u706b\u5899\u548c\u7edf\u4e00\u5a01\u80c1\u7ba1\u7406',ssUrlPrefix + 'products/security-storage/security-product/fireproofing/index.htm');
g_navNode_7_8_0_1_0=g_navNode_7_8_0_1.addNode('672','USG2110',ssUrlPrefix + 'products/security-storage/security-product/fireproofing/usg2110/index.htm');
g_navNode_7_8_0_1_1=g_navNode_7_8_0_1.addNode('673','USG2000',ssUrlPrefix + 'products/security-storage/security-product/fireproofing/usg2000/index.htm');
g_navNode_7_8_0_1_2=g_navNode_7_8_0_1.addNode('674','USG5000',ssUrlPrefix + 'products/security-storage/security-product/fireproofing/usg5000/index.htm');
g_navNode_7_8_0_1_3=g_navNode_7_8_0_1.addNode('675','USG9300',ssUrlPrefix + 'products/security-storage/security-product/fireproofing/usg9300/index.htm');
g_navNode_7_8_0_2=g_navNode_7_8_0.addNode('661','SVN\u4e13\u4e1a\u7f51\u5173',ssUrlPrefix + 'products/security-storage/security-product/svn/index.htm','externalUrl==/cn/products/security-storage/security-product/svn/svn3000/index.htm');
g_navNode_7_8_0_2_0=g_navNode_7_8_0_2.addNode('676','SVN3000',ssUrlPrefix + 'products/security-storage/security-product/svn/svn3000/index.htm');
g_navNode_7_8_0_3=g_navNode_7_8_0.addNode('662','\u5165\u4fb5\u68c0\u6d4b\u9632\u62a4',ssUrlPrefix + 'products/security-storage/security-product/infall/index.htm','externalUrl==/cn/products/security-storage/security-product/infall/nip/index.htm');
g_navNode_7_8_0_3_0=g_navNode_7_8_0_3.addNode('677','NIP\u7f51\u7edc\u5165\u4fb5\u68c0\u6d4b\u7cfb\u7edf',ssUrlPrefix + 'products/security-storage/security-product/infall/nip/index.htm');
g_navNode_7_8_0_4=g_navNode_7_8_0.addNode('663','\u5b89\u5168\u7ba1\u7406\u8f6f\u4ef6',ssUrlPrefix + 'products/security-storage/security-product/security-manage/index.htm');
g_navNode_7_8_0_4_0=g_navNode_7_8_0_4.addNode('678','TSM',ssUrlPrefix + 'products/security-storage/security-product/security-manage/tsm/index.htm');
g_navNode_7_8_0_4_1=g_navNode_7_8_0_4.addNode('679','DSM',ssUrlPrefix + 'products/security-storage/security-product/security-manage/dsm/index.htm');
g_navNode_7_8_0_4_2=g_navNode_7_8_0_4.addNode('680','VSM',ssUrlPrefix + 'products/security-storage/security-product/security-manage/vsm/index.htm');
g_navNode_7_8_1=g_navNode_7_8.addNode('658','\u5b58\u50a8\u4ea7\u54c1',ssUrlPrefix + 'products/security-storage/storage-product/index.htm');
g_navNode_7_8_1_0=g_navNode_7_8_1.addNode('664','\u4e91\u5b58\u50a8',ssUrlPrefix + 'products/security-storage/storage-product/dcs/index.htm');
g_navNode_7_8_1_0_0=g_navNode_7_8_1_0.addNode('682','CSE\u4e91\u5b58\u50a8\u4e1a\u52a1\u5e73\u53f0',ssUrlPrefix + 'products/security-storage/storage-product/dcs/cse/index.htm');
g_navNode_7_8_1_0_1=g_navNode_7_8_1_0.addNode('683','CSS\u4e91\u5b58\u50a8\u7cfb\u7edf',ssUrlPrefix + 'products/security-storage/storage-product/dcs/css/index.htm');
g_navNode_7_8_1_0_2=g_navNode_7_8_1_0.addNode('681','DCS\u6570\u636e\u4e2d\u5fc3\u5b58\u50a8',ssUrlPrefix + 'products/security-storage/storage-product/dcs/dcs/index.htm');
g_navNode_7_8_1_1=g_navNode_7_8_1.addNode('666','\u5b58\u50a8\u533a\u57df\u7f51\u7edc\uff08SAN\uff09',ssUrlPrefix + 'products/security-storage/storage-product/san/index.htm');
g_navNode_7_8_1_1_0=g_navNode_7_8_1_1.addNode('684','S2000',ssUrlPrefix + 'products/security-storage/storage-product/san/s2300/index.htm');
g_navNode_7_8_1_1_1=g_navNode_7_8_1_1.addNode('685','S2600',ssUrlPrefix + 'products/security-storage/storage-product/san/s2600/index.htm');
g_navNode_7_8_1_1_2=g_navNode_7_8_1_1.addNode('686','S5000',ssUrlPrefix + 'products/security-storage/storage-product/san/s5000/index.htm');
g_navNode_7_8_1_1_3=g_navNode_7_8_1_1.addNode('687','S6800E',ssUrlPrefix + 'products/security-storage/storage-product/san/s6800e/index.htm');
g_navNode_7_8_1_1_4=g_navNode_7_8_1_1.addNode('688','Sx900 Series\uff08T\u7cfb\u5217\uff09',ssUrlPrefix + 'products/security-storage/storage-product/san/sx900-series/index.htm');
g_navNode_7_8_1_1_5=g_navNode_7_8_1_1.addNode('689','S12000',ssUrlPrefix + 'products/security-storage/storage-product/san/s12000/index.htm');
g_navNode_7_8_1_2=g_navNode_7_8_1.addNode('667','\u7f51\u7edc\u9644\u5c5e\u5b58\u50a8\uff08NAS\uff09',ssUrlPrefix + 'products/security-storage/storage-product/nas/index.htm','externalUrl==/cn/products/security-storage/storage-product/nas/n8000/index.htm');
g_navNode_7_8_1_2_0=g_navNode_7_8_1_2.addNode('690','N8000',ssUrlPrefix + 'products/security-storage/storage-product/nas/n8000/index.htm');
g_navNode_7_8_1_3=g_navNode_7_8_1.addNode('668','\u5e94\u7528\u5b58\u50a8',ssUrlPrefix + 'products/security-storage/storage-product/application-storage/index.htm');
g_navNode_7_8_1_3_0=g_navNode_7_8_1_3.addNode('691','VTL3500',ssUrlPrefix + 'products/security-storage/storage-product/application-storage/vtl3500/index.htm');
g_navNode_7_8_1_3_1=g_navNode_7_8_1_3.addNode('692','VTL6000',ssUrlPrefix + 'products/security-storage/storage-product/application-storage/vtl6000/index.htm');
g_navNode_7_8_1_3_2=g_navNode_7_8_1_3.addNode('693','VIS6000',ssUrlPrefix + 'products/security-storage/storage-product/application-storage/vis6000/index.htm');
g_navNode_7_8_1_4=g_navNode_7_8_1.addNode('669','SNS\u4ea4\u6362\u673a',ssUrlPrefix + 'products/security-storage/storage-product/sns/index.htm');
g_navNode_7_8_1_4_0=g_navNode_7_8_1_4.addNode('694','SNS\u4ea4\u6362\u673a2120',ssUrlPrefix + 'products/security-storage/storage-product/sns/sns2120/index.htm');
g_navNode_7_8_1_4_1=g_navNode_7_8_1_4.addNode('695','SNS\u4ea4\u6362\u673a5120',ssUrlPrefix + 'products/security-storage/storage-product/sns/sns5120/index.htm');
g_navNode_7_9=g_navNode_7.addNode('18','\u7ec8\u7aef',ssUrlPrefix + 'products/devices/index.htm','externalUrl==http\x3a//www.huaweidevice.com/cn/');
g_navNode_8=g_navNode_Root.addNode('9','\u670d\u52a1',ssUrlPrefix + 'services/index.htm','secondaryUrlVariableField==article');
g_navNode_10=g_navNode_Root.addNode('25','\u5173\u4e8e\u534e\u4e3a',ssUrlPrefix + 'about-huawei/index.htm');
g_navNode_10_0=g_navNode_10.addNode('166','\u516c\u53f8\u4ecb\u7ecd',ssUrlPrefix + 'about-huawei/corporate-info/index.htm');
g_navNode_10_0_0=g_navNode_10_0.addNode('171','\u613f\u666f\u4f7f\u547d',ssUrlPrefix + 'about-huawei/corporate-info/vision-mission/index.htm');
g_navNode_10_0_1=g_navNode_10_0.addNode('172','\u516c\u53f8\u6218\u7565',ssUrlPrefix + 'about-huawei/corporate-info/strategy/index.htm');
g_navNode_10_0_2=g_navNode_10_0.addNode('173','\u8d22\u52a1\u6982\u8981',ssUrlPrefix + 'about-huawei/corporate-info/financial-highlights/index.htm');
g_navNode_10_0_3=g_navNode_10_0.addNode('174','\u516c\u53f8\u6cbb\u7406',ssUrlPrefix + 'about-huawei/corporate-info/coporate-governance/index.htm');
g_navNode_10_0_4=g_navNode_10_0.addNode('175','\u7814\u7a76\u5f00\u53d1',ssUrlPrefix + 'about-huawei/corporate-info/research-development/index.htm');
g_navNode_10_0_5=g_navNode_10_0.addNode('2180','\u7f51\u7edc\u5b89\u5168',ssUrlPrefix + 'about-huawei/corporate-info/cyber_security/index.htm');
g_navNode_10_0_6=g_navNode_10_0.addNode('176','\u53d1\u5c55\u5386\u7a0b',ssUrlPrefix + 'about-huawei/corporate-info/milestone/index.htm');
g_navNode_10_0_7=g_navNode_10_0.addNode('222','\u8d28\u91cf\u65b9\u9488',ssUrlPrefix + 'about-huawei/corporate-info/quality-policy/index.htm');
g_navNode_10_0_8=g_navNode_10_0.addNode('177','\u516c\u53f8\u5e74\u62a5',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/index.htm','externalUrl==/cn/about-huawei/corporate-info/annual-report/huawei2011/index.htm');
g_navNode_10_0_8_0=g_navNode_10_0_8.addNode('238','\u534e\u4e3a2011\u5e74\u5e74\u62a5',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/index.htm');
g_navNode_10_0_8_0_0=g_navNode_10_0_8_0.addNode('239','CEO\u81f4\u8f9e',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/letter-from-the-ceo/index.htm');
g_navNode_10_0_8_0_1=g_navNode_10_0_8_0.addNode('1688','\u8f6e\u503cCEO\u81f4\u8f9e',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/letter-from-the-rotating-and-acting-ceo/index.htm');
g_navNode_10_0_8_0_2=g_navNode_10_0_8_0.addNode('246','2011\u5e74\u4e1a\u52a1\u8fdb\u5c55',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/Business-Highlights-in-2009/index.htm');
g_navNode_10_0_8_0_3=g_navNode_10_0_8_0.addNode('247','5\u5e74\u8d22\u52a1\u6982\u8981',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/Five-Year-financial-highlights/index.htm');
g_navNode_10_0_8_0_4=g_navNode_10_0_8_0.addNode('248','\u8463\u4e8b\u957f\u81f4\u8f9e',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/letter-from-the-chairperson/index.htm');
g_navNode_10_0_8_0_5=g_navNode_10_0_8_0.addNode('249','\u613f\u666f\u3001\u4f7f\u547d\u548c\u6838\u5fc3\u4ef7\u503c\u89c2',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/vision-mission-and-core-values/index.htm');
g_navNode_10_0_8_0_6=g_navNode_10_0_8_0.addNode('250','\u7ba1\u7406\u5c42\u8ba8\u8bba\u4e0e\u5206\u6790',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/management-discussion-and-analysis/index.htm');
g_navNode_10_0_8_0_7=g_navNode_10_0_8_0.addNode('1703','\u884c\u4e1a\u8d8b\u52bf',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/market-trends/index.htm');
g_navNode_10_0_8_0_8=g_navNode_10_0_8_0.addNode('1704','\u72ec\u7acb\u5ba1\u8ba1\u5e08\u62a5\u544a',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/independent-auditor-report/index.htm');
g_navNode_10_0_8_0_9=g_navNode_10_0_8_0.addNode('251','\u5408\u5e76\u8d22\u52a1\u62a5\u8868\u6458\u8981\u53ca\u9644\u6ce8',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/financial-statements-summary/index.htm');
g_navNode_10_0_8_0_10=g_navNode_10_0_8_0.addNode('1705','\u516c\u53f8\u4fe1\u606f',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/company-information/index.htm');
g_navNode_10_0_8_0_11=g_navNode_10_0_8_0.addNode('1706','\u98ce\u9669\u8981\u7d20',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/risk-factors/index.htm');
g_navNode_10_0_8_0_12=g_navNode_10_0_8_0.addNode('252','\u516c\u53f8\u6cbb\u7406\u62a5\u544a',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/corporate-governance-report/index.htm');
g_navNode_10_0_8_0_13=g_navNode_10_0_8_0.addNode('1707','\u4f01\u4e1a\u793e\u4f1a\u8d23\u4efb',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/corporate-social-responsibility/index.htm');
g_navNode_10_0_8_0_14=g_navNode_10_0_8_0.addNode('253','\u82f1\u6587\u7f29\u7565\u8bed\u3001\u8d22\u52a1\u672f\u8bed\u4e0e\u6c47\u7387',ssUrlPrefix + 'about-huawei/corporate-info/annual-report/huawei2011/abbreviations/index.htm');
g_navNode_10_1=g_navNode_10.addNode('167','\u793e\u4f1a\u8d23\u4efb',ssUrlPrefix + 'about-huawei/corporate-citizenship/index.htm');
g_navNode_10_1_0=g_navNode_10_1.addNode('180','CSR\u6218\u7565\u4e0e\u7ba1\u7406\u4f53\u7cfb',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/index.htm');
g_navNode_10_1_0_0=g_navNode_10_1_0.addNode('178','\u8463\u4e8b\u957f\u81f4\u8f9e',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/Message-from-the-Chairwoman/index.htm');
g_navNode_10_1_0_1=g_navNode_10_1_0.addNode('235','CSR\u59d4\u5458\u4f1a\u4e3b\u4efb\u81f4\u8f9e',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/csr-committee/index.htm');
g_navNode_10_1_0_2=g_navNode_10_1_0.addNode('2674','CSR\u6218\u7565',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/csr-strategy/index.htm');
g_navNode_10_1_0_3=g_navNode_10_1_0.addNode('2675','CSR\u6218\u7565\u8def\u7ebf\u56fe',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/csr-strategy-roadmap/index.htm');
g_navNode_10_1_0_4=g_navNode_10_1_0.addNode('2676','CSR\u7ba1\u7406\u4f53\u7cfb',ssUrlPrefix + 'about-huawei/corporate-citizenship/leadership-and-strategy/csr-management-system/index.htm');
g_navNode_10_1_1=g_navNode_10_1.addNode('236','\u6d88\u9664\u6570\u5b57\u9e3f\u6c9f',ssUrlPrefix + 'about-huawei/corporate-citizenship/bridging-the-digital-divide/index.htm');
g_navNode_10_1_2=g_navNode_10_1.addNode('393','\u5173\u7231\u5458\u5de5',ssUrlPrefix + 'about-huawei/corporate-citizenship/employee/index.htm');
g_navNode_10_1_3=g_navNode_10_1.addNode('182','\u516c\u5e73\u7ecf\u8425',ssUrlPrefix + 'about-huawei/corporate-citizenship/fair-operations/index.htm');
g_navNode_10_1_4=g_navNode_10_1.addNode('391','\u7eff\u8272\u73af\u4fdd',ssUrlPrefix + 'about-huawei/corporate-citizenship/environmental-protection/index.htm');
g_navNode_10_1_5=g_navNode_10_1.addNode('394','\u793e\u4f1a\u516c\u76ca',ssUrlPrefix + 'about-huawei/corporate-citizenship/social-contribution/index.htm');
g_navNode_10_1_6=g_navNode_10_1.addNode('392','\u4f9b\u5e94\u94feCSR\u7ba1\u7406',ssUrlPrefix + 'about-huawei/corporate-citizenship/supply-chain/index.htm');
g_navNode_10_1_7=g_navNode_10_1.addNode('181','\u5229\u76ca\u76f8\u5173\u65b9\u6c9f\u901a',ssUrlPrefix + 'about-huawei/corporate-citizenship/communicate-and-response/index.htm');
g_navNode_10_1_8=g_navNode_10_1.addNode('2681','\u5b89\u5168\u8fd0\u8425',ssUrlPrefix + 'about-huawei/corporate-citizenship/safe-operations/index.htm');
g_navNode_10_1_9=g_navNode_10_1.addNode('34','CSR\u62a5\u544a',ssUrlPrefix + 'about-huawei/corporate-citizenship/csr-report/index.htm');
g_navNode_10_2=g_navNode_10.addNode('168','\u65b0\u95fb\u5a92\u4f53',ssUrlPrefix + 'about-huawei/newsroom/index.htm');
g_navNode_10_2_0=g_navNode_10_2.addNode('184','\u65b0\u95fb',ssUrlPrefix + 'about-huawei/newsroom/press-release/index.htm','secondaryUrlVariableField==article');
g_navNode_10_2_1=g_navNode_10_2.addNode('227','\u4ea7\u54c1\u53d1\u5e03',ssUrlPrefix + 'about-huawei/newsroom/product-launch/index.htm','secondaryUrlVariableField==article');
g_navNode_10_2_2=g_navNode_10_2.addNode('185','\u5a92\u4f53\u70ed\u70b9',ssUrlPrefix + 'about-huawei/newsroom/media-coverage/index.htm','secondaryUrlVariableField==article');
g_navNode_10_3=g_navNode_10.addNode('27','\u516c\u53f8\u520a\u7269',ssUrlPrefix + 'about-huawei/publications/index.htm');
g_navNode_10_3_0=g_navNode_10_3.addNode('28','\u300a\u8425\u8d62\u300b',ssUrlPrefix + 'about-huawei/publications/winwin-magazine/index.htm','secondaryUrlVariableField==winwinContent');
g_navNode_10_3_1=g_navNode_10_3.addNode('198','\u300a\u534e\u4e3a\u6280\u672f\u300b',ssUrlPrefix + 'about-huawei/publications/communicate/index.htm','secondaryUrlVariableField==communicateContent');
g_navNode_10_3_2=g_navNode_10_3.addNode('199','\u300a\u534e\u4e3a\u670d\u52a1\u300b',ssUrlPrefix + 'about-huawei/publications/huawei-service/index.htm','secondaryUrlVariableField==winwinContent');
g_navNode_10_3_3=g_navNode_10_3.addNode('200','\u300a\u534e\u4e3a\u4eba\u300b',ssUrlPrefix + 'about-huawei/publications/huawei-people/index.htm','externalUrl==http\x3a//app.huawei.com/paper/index.do');
g_navNode_10_4=g_navNode_10.addNode('26','\u5c55\u4f1a\u6d3b\u52a8',ssUrlPrefix + 'about-huawei/events/index.htm','secondaryUrlVariableField==eventarticle');
g_navNode_10_4_0=g_navNode_10_4.addNode('190','\u5f80\u671f\u5c55\u4f1a',ssUrlPrefix + 'about-huawei/events/previous-events/index.htm','secondaryUrlVariableField==Eventscontent');
g_navNode_10_6=g_navNode_10.addNode('170','\u5408\u4f5c\u4f19\u4f34',ssUrlPrefix + 'about-huawei/Partner/index.htm');
g_navNode_10_6_1=g_navNode_10_6.addNode('380','\u8fd0\u8425\u5546\u7f51\u7edc\u4e1a\u52a1\u5408\u4f5c',ssUrlPrefix + 'about-huawei/Partner/integrated-oss/index.htm');
g_navNode_10_6_1_0=g_navNode_10_6_1.addNode('384','OSS \u5bf9\u63a5\u4fe1\u606f',ssUrlPrefix + 'about-huawei/Partner/integrated-oss/inter-operability/index.htm');
g_navNode_10_6_1_1=g_navNode_10_6_1.addNode('385','OSS\u5408\u4f5c\u4f19\u4f34',ssUrlPrefix + 'about-huawei/Partner/integrated-oss/oss_partners/index.htm');
g_navNode_10_6_2=g_navNode_10_6.addNode('381','\u4f01\u4e1a\u4e1a\u52a1\u5408\u4f5c',ssUrlPrefix + 'about-huawei/Partner/enterprise/index.htm','externalUrl==http\x3a//enterprise.huawei.com/cn/partners/index.htm');
g_navNode_10_6_4=g_navNode_10_6.addNode('197','\u91c7\u8d2d\u5e73\u53f0',ssUrlPrefix + 'about-huawei/Partner/purchase/index.htm');
g_navNode_10_7=g_navNode_10.addNode('263','Newsletter',ssUrlPrefix + 'about-huawei/newsletter/index.htm','contributorOnly==false','externalUrl==http\x3a//www.huawei.com/newsletter/SubscribeNL_init.html?form.subscribeCategory\x3dChinese\x26request_locale\x3dzh_CN','isDynamic==FALSE');
g_navNode_10_7_0=g_navNode_10_7.addNode('264','\u8ba2\u9605',ssUrlPrefix + 'about-huawei/newsletter/subscribe/index.htm','externalUrl==http\x3a//www.huawei.com/newsletter/SubscribeNL_init.html?form.subscribeCategory\x3dChinese\x26request_locale\x3dzh_CN');
g_navNode_10_7_1=g_navNode_10_7.addNode('266','\u9000\u8ba2',ssUrlPrefix + 'about-huawei/newsletter/unsubscribe/index.htm','externalUrl==http\x3a//www.huawei.com/newsletter/UnsubscribeNL_init.html?request_locale\x3dzh_CN');
g_navNode_10_8=g_navNode_10.addNode('163','RSS',ssUrlPrefix + 'about-huawei/rss-feeds/index.htm','externalUrl==http\x3a//www.huawei.com/cn/about-huawei/rss-feeds/');
g_navNode_10_9=g_navNode_10.addNode('35','\u8054\u7cfb\u6211\u4eec',ssUrlPrefix + 'about-huawei/contact-us/index.htm');
g_navNode_10_9_0=g_navNode_10_9.addNode('39','\u4e2d\u56fd',ssUrlPrefix + 'about-huawei/contact-us/china/index.htm');
g_navNode_10_9_1=g_navNode_10_9.addNode('37','\u4e9a\u592a',ssUrlPrefix + 'about-huawei/contact-us/asia-pacific/index.htm');
g_navNode_10_9_2=g_navNode_10_9.addNode('38','\u72ec\u8054\u4f53',ssUrlPrefix + 'about-huawei/contact-us/cis/index.htm');
g_navNode_10_9_3=g_navNode_10_9.addNode('40','\u6b27\u6d32',ssUrlPrefix + 'about-huawei/contact-us/europe/index.htm');
g_navNode_10_9_4=g_navNode_10_9.addNode('41','\u62c9\u4e01\u7f8e\u6d32',ssUrlPrefix + 'about-huawei/contact-us/latin-america/index.htm');
g_navNode_10_9_5=g_navNode_10_9.addNode('42','\u4e2d\u4e1c\u5317\u975e',ssUrlPrefix + 'about-huawei/contact-us/mena/index.htm');
g_navNode_10_9_6=g_navNode_10_9.addNode('43','\u5317\u7f8e',ssUrlPrefix + 'about-huawei/contact-us/north-america/index.htm');
g_navNode_10_9_7=g_navNode_10_9.addNode('44','\u5357\u90e8\u975e\u6d32',ssUrlPrefix + 'about-huawei/contact-us/south-africa/index.htm');
g_navNode_10_9_8=g_navNode_10_9.addNode('36','\u5168\u7403\u5206\u652f\u673a\u6784',ssUrlPrefix + 'about-huawei/contact-us/a-z/index.htm');
g_navNode_12=g_navNode_Root.addNode('219','\u6210\u529f\u6545\u4e8b',ssUrlPrefix + 'success-story/index.htm','secondaryUrlVariableField==article');
g_navNode_16=g_navNode_Root.addNode('299','\u4ea7\u54c1\u751f\u547d\u5468\u671f',ssUrlPrefix + 'ProductsLifecycle/index.htm');
g_navNode_16_0=g_navNode_16.addNode('300','\u65e0\u7ebf\u63a5\u5165\u7f51\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/index.htm');
g_navNode_16_0_0=g_navNode_16_0.addNode('308','GSM BSS\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/GSMBSSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_1=g_navNode_16_0.addNode('3808','SingleRAN\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/SingleRan/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_2=g_navNode_16_0.addNode('309','UMTS RAN\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/UMTSRANProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_4=g_navNode_16_0.addNode('310','CDMA BSS\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/CDMABSSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_5=g_navNode_16_0.addNode('311','OSS\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/OSSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_6=g_navNode_16_0.addNode('254','WiMAX\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/WiMAXProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_0_7=g_navNode_16_0.addNode('1008','LTE\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/RadioAccessProducts/LTE-Products/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1=g_navNode_16.addNode('301','\u6838\u5fc3\u7f51\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/index.htm');
g_navNode_16_1_0=g_navNode_16_1.addNode('312','GSM/UMTS CS ',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/GSMUMTSCSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_1=g_navNode_16_1.addNode('313','CDMA CS',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/CDMACSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_2=g_navNode_16_1.addNode('314','NGN',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/NGNProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_3=g_navNode_16_1.addNode('315','IMS',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/IMSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_4=g_navNode_16_1.addNode('317','Switch',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/SwitchProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_5=g_navNode_16_1.addNode('318','HLR',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/HLRProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_6=g_navNode_16_1.addNode('319','MGW',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/MGWProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_7=g_navNode_16_1.addNode('320','CDMA PS',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/CDMAPSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_8=g_navNode_16_1.addNode('322','WiMAX PS',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/WiMAXPSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_9=g_navNode_16_1.addNode('321','GSM/UMTS/LTE PS',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/GPRSUMTSPSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_10=g_navNode_16_1.addNode('815','SG/STP',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/STP/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_1_11=g_navNode_16_1.addNode('316','Others',ssUrlPrefix + 'ProductsLifecycle/CoreNetworkProducts/others/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_2=g_navNode_16.addNode('302','\u4f20\u9001\u7f51\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/TransportNetworkProducts/index.htm');
g_navNode_16_2_0=g_navNode_16_2.addNode('323','\u6ce2\u5206\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/TransportNetworkProducts/WDMOTNProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_2_1=g_navNode_16_2.addNode('324','MSTP\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/TransportNetworkProducts/MSTPProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_2_2=g_navNode_16_2.addNode('325','\u5fae\u6ce2\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/TransportNetworkProducts/MicrowaveProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_3=g_navNode_16.addNode('303','\u63a5\u5165\u7f51\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/index.htm');
g_navNode_16_3_0=g_navNode_16_3.addNode('326','DSLAM\u7cfb\u5217',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/DSLAMProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_3_1=g_navNode_16_3.addNode('327','MSAN\u7cfb\u5217',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/MSANProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_3_2=g_navNode_16_3.addNode('328','FTTx\u7cfb\u5217',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/FTTXProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_3_3=g_navNode_16_3.addNode('329','ODN\u7cfb\u5217',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/ODNProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_3_4=g_navNode_16_3.addNode('269','BITS\u7cfb\u5217',ssUrlPrefix + 'ProductsLifecycle/BroadbandAccessProducts/BITSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_4=g_navNode_16.addNode('304','\u4e1a\u52a1\u4e0e\u8f6f\u4ef6',ssUrlPrefix + 'ProductsLifecycle/ApplicationSoftware/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5=g_navNode_16.addNode('305','\u6570\u636e\u901a\u4fe1\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/index.htm');
g_navNode_16_5_0=g_navNode_16_5.addNode('330','NE\u7cfb\u5217\u8def\u7531\u5668',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/NESeriesRoutersProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_1=g_navNode_16_5.addNode('331','AR\u7cfb\u5217\u8def\u7531\u5668',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/ARSeriesRoutersProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_2=g_navNode_16_5.addNode('332','MSCG\u591a\u4e1a\u52a1\u63a7\u5236\u7f51\u5173',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/Multi-serviceControlGatewayProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_3=g_navNode_16_5.addNode('333','CX\u7cfb\u5217\u57ce\u57df\u4e1a\u52a1\u5e73\u53f0',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/MetroServicesPlatform/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_4=g_navNode_16_5.addNode('813','SRG\u7cfb\u5217\u4e1a\u52a1\u8def\u7531\u7f51\u5173',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/SRGSeriesRoutersGateway/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_5=g_navNode_16_5.addNode('334','\u4ee5\u592a\u7f51\u4ea4\u6362\u673a',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/EthernetSwitchesProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_6=g_navNode_16_5.addNode('335','\u7f51\u7edc\u5b89\u5168\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/NetworkSecurityProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_5_7=g_navNode_16_5.addNode('336','PTN',ssUrlPrefix + 'ProductsLifecycle/DataCommunicationsProducts/PTN/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6=g_navNode_16.addNode('306','OSS\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/index.htm');
g_navNode_16_6_0=g_navNode_16_6.addNode('337','\u7f51\u7edc\u7edf\u4e00\u7f51\u7ba1\uff08U2000\uff09',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerU2000/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_1=g_navNode_16_6.addNode('338','\u4f20\u9001\u7f51\u7ba1\uff08T2000/2100\uff09',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerT2000-2100/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_2=g_navNode_16_6.addNode('339','\u8def\u7531\u5668\u7f51\u7ba1\uff08DMS\uff09 ',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerN2000DMSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_3=g_navNode_16_6.addNode('340','\u63a5\u5165\u7f51\u7ba1\uff08BMS\uff09',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerN2000BMSProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_4=g_navNode_16_6.addNode('341','\u589e\u503c\u8f6f\u4ef6\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/Value-AddedSoftwareProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_5=g_navNode_16_6.addNode('342','\u6838\u5fc3\u7f51\u7f51\u7ba1\uff08N2000\uff09',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerN2000Products/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_6_6=g_navNode_16_6.addNode('343','\u65e0\u7ebf\u7f51\u7ba1\uff08M2000\uff09',ssUrlPrefix + 'ProductsLifecycle/OSSProducts/iManagerM2000Products/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_7=g_navNode_16.addNode('307','\u7ad9\u70b9\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/SiteProducts/index.htm');
g_navNode_16_7_0=g_navNode_16_7.addNode('814','\u5929\u9988\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/SiteProducts/AntennaProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
g_navNode_16_7_1=g_navNode_16_7.addNode('344','\u914d\u7ebf\u67b6\u4ea7\u54c1',ssUrlPrefix + 'ProductsLifecycle/SiteProducts/MDFProducts/index.htm','secondaryUrlVariableField==lifecycleContent');
