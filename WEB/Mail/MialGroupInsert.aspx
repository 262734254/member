﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MialGroupInsert.aspx.cs" Inherits="Mail_MialGroupInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title >邮件组录入页</title>
     <link href="../css/CRM.css" rel="stylesheet" type="text/css" />
     <script  src="../js/JScriptloans.js" type ="text/javascript" language="javascript"></script>
         <script type ="text/javascript" language ="javascript">
           function postnewtabs()
   {
  if(document.getElementById ("txtName").value.length==0)
   {
     document.getElementById ("showtxtnewsTitle").innerHTML="*";
     document.getElementById ("showtxtnewsTitle").style .display ="inline";
     document.getElementById ("txtName").focus();
     return false;
   }
   else
   {
    document.getElementById ("imgLoding").style .display ="";
  return true;
}
}
         </script>
</head>
<body>
    <form id="form1" runat="server" action="">
    <div>
                    <div class="title">
                <h2>
                    <p>
                        <span><b>邮件组录入列表</b></span></p>
                </h2>
            </div>
    <table border="0" cellpadding="0" cellspacing="0"    class="one_table">
    			<tr >
				<th colSpan="2">
					<div  align="center">
                        <asp:Label ID="labTitle" runat="server" Text="Label"></asp:Label></div>
				</th>
			</tr>
    <tr><td><span style ="color:Red">*</span>组名：</td><td >
        <asp:TextBox ID="txtName"  onblur="outpostcode(this,'showtxtnewsTitle')"  runat="server" Width="278px"></asp:TextBox>&nbsp;<div id="showtxtnewsTitle" style ="display:none; color:Red ; font-size:12px">*</div></td></tr>
    <tr id="showshenhes" runat ="server" style =" display :none;"><td>审核：</td><td >
        <asp:RadioButtonList ID="radiocaozuo" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">否</asp:ListItem>
            <asp:ListItem Value="1">是</asp:ListItem>
        </asp:RadioButtonList></td></tr>
        <tr><td><span style ="color:Red"></span>备注：</td><td >
        <asp:TextBox ID="txtdesctption"   runat="server" TextMode="MultiLine"  Width="396px" Height="94px"></asp:TextBox>&nbsp;<div id="showd" style ="display:none; color:Red ; font-size:12px">*</div><br />注意事项：添加之后将无法删除该组！</td></tr>

    <tr><td colspan="2" align="center">
        <asp:Button ID="btnSave" runat="server" OnClientClick="return postnewtabs()" CssClass="btn"  Text="发 布" OnClick="btnSave_Click" /> &nbsp;&nbsp;<input type="button" id="Button3" onclick="history.back();" value="返 回" class="btn" /></td></tr>
    </table>
    </div>
    </form>
    <div id="imgLoding" style="position: absolute; 
  display:none; background-color: #A9A9A9; 
  top: 0px; left: 0px; width: 100%;
   height:1135px; filter: 
   alpha(opacity=60);" runat="server">

               <div class="content" style="text-align:center; margin-top:200px">
                <p>
                    数据正在提交,请稍候...</p>
                <img src="../image/loading42.gif"alt="Loading" />
                </div>
   </div>
</body>
</html>
