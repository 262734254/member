﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADListView.aspx.cs" Inherits="AD_ADListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css/CRM.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
     function Button1_onclick(name) 
     {
        window.location.href="ADUpLoadXml.aspx?channelid="+name;
     }
     function Button2_onclick(channelid) 
     {
        window.location.href="ADFileDetail.aspx?channelid="+channelid;
     }
// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="title"><h2><p><span><b>管理菜单</b></span></p></h2></div>
    <div id="Div1" runat="server">
        
    </div>
    </form>
</body>
</html>
