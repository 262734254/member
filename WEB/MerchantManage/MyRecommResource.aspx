﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyRecommResource.aspx.cs"
    Inherits="MerchantManage_MyRecommResource" %>

<%@ Register Assembly="Tz888.Pager" Namespace="Tz888.Pager" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css/CRM.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/Common.js"></script>

    <script type="text/javascript" src="../js/CheckAll.js"></script>

    <script type="text/javascript">

function SelectAll()
{
    if(!document.getElementById("cbxSelect"))
        return;
    var obj = document.getElementById("cbxSelect");
    elem=obj.form.elements;
    for(i=0;i<elem.length;i++)
    {          
		if(elem[i].type=="checkbox" && elem[i].id=="cbxSelect")
		{
		    if(elem[i].checked!=true)			
			    elem[i].click();
		}
    }
}

function ReSelect()
{
    if(!document.getElementById("cbxSelect"))
        return;
    var obj = document.getElementById("cbxSelect");
    elem=obj.form.elements;
    for(i=0;i<elem.length;i++)
    {          
		if(elem[i].type=="checkbox" && elem[i].id=="cbxSelect")
		{
			    elem[i].click();
		}
    }
}
function recommNavigate(infoID)
{
    if(infoID!="")
    {
    var url="";
    url="RecommResource.aspx?infoID="+infoID;
    window.location.href=url;
    }
}
function modifyNavigate(fid,infoId)
{
    if(infoId=="")
    {
    var url="";
    url="UpdateMerchant.aspx?fid="+fid;
    window.location.href=url;
    }
    else
    {
     var url="";
    url="UpdateMerchant.aspx?fid="+fid+"&infoID="+infoId;
    window.location.href=url;
    }
    
}

function DelNav(id)
{
    var url="";
    url="MerchantManage.aspx?fID="+id;
    window.location.href = url;
}

function DelPart()
{

   document.getElementById("divPart").style.display="block";
}
function Fun()
{
  document.getElementById("imgLoding").style.display="block";
  }

function SelPart()
{
  var beg=document.getElementById("begInfo").value;
  var end=document.getElementById("endInfo").value;
  if(beg=="")
  {
      alert("请输入起始编号");
      document.getElementById("begInfo").focus();
      return false;
  }
  if(end=="")
  {
      alert("请输入结束编号");
      document.getElementById("endInfo").focus();
      return false;
  } 
  if(parseInt(beg) >parseInt(end))
  {
      alert("您输入的起始编号不能大于结束编号");
      document.getElementById("begInfo").value="";
      document.getElementById("endInfo").value="";
      document.getElementById("begInfo").focus();
      return false;
  }
}


    </script>

    <style type="text/css">
        body{text-align:center;}
        .content{width:466px;height:300px;background:url(images/search_bg_03.jpg) no-repeat left top;margin:300px auto 0;text-align:center;padding-top:30px;}
        .content p{line-height:30px;        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <div class="title">
                <h2>
                    <p>
                        <span><b>我推荐的资源</b></span></p>
                </h2>
            </div>
            <table border="0" cellpadding="0" cellspacing="0" align="center" class="one_table">
                <tr>
                    <td align="center" style="height: 24px">
                        标题：
                        <input id="txtTitle" style="width: 100px;" type="text" runat="server" /></td>
                    <td align="center" style="height: 24px">
                        编号：
                        <input id="txtNuber" style="width: 100px;" type="text" runat="server" /></td>
                    <%--<td  align="center" style="height: 24px">
            发布人：<input id="txtLoginName"  style="width:100px;" type="text"  runat="server" />
        </td>--%>
                    <td align="center" style="height: 24px">
                        <asp:Button ID="btnSearch" CssClass="btn" runat="server" Text="搜 索" OnClick="btnSearch_Click" />&nbsp;
                    </td>
                </tr>
            </table>
            <table border="0" cellpadding="0" cellspacing="0" align="center" class="one_table">
                <tr style="background: #bcd9e7; height: 27px;">
                    <th align="center" class="tabtitle" style="height: 32px; width: 10%;">
                        选择</th>
                    <th width="10%" align="center" class="tabtitle" style="height: 32px">
                        编号</th>
                        <th width="10%" align="center" class="tabtitle" style="height: 32px">
                        资源编号</th>
                    <th width="30%" align="center" class="tabtitle" style="height: 32px">
                        标题</th>
                    <th width="10%" align="center" class="tabtitle" style="height: 32px">
                        推荐用户</th>
                    <th width="10%" align="center" class="tabtitle" style="height: 32px">
                        推荐日期</th>
                    <th width="10%" align="center" class="tabtitle" style="height: 32px">
                        管理</th>
                </tr>
                <asp:Repeater ID="NewsList" OnItemDataBound="NewsList_ItemDataBound" runat="server">
                    <ItemTemplate>
                        <tr onmouseover="this.style.backgroundColor='#f5f5f5';" onmouseout="this.style.backgroundColor=''">
                            <td style="width: 100px">
                                <label>
                                    <input type="checkbox" name="cbxSelect" id="cbxSelect" value="<%#Eval("RecommID")%>" />
                                </label>
                            </td>
                            <td style="width: 100px">
                                <%#Eval("RecommID")%>
                                </td>
                                <td style="width: 100px">
                                <%#Eval("ResourceID")%>
                                </td>
                                <td>
                                    <asp:HyperLink ID="hlTitle" runat="server"></asp:HyperLink>
                                </td>
                                <td style="width: 100px">
                                    <%#Eval("RecommToUser")%>
                                </td>
                                <td style="width: 100px">
                                    <%#Convert.ToDateTime(Eval("RecommDate")).ToString("yyyy-MM-dd(hh:mm)")%>
                                </td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbdel" CommandArgument='<%#Eval("RecommID")%>' CommandName="del"
                                        runat="server" OnCommand="LinkButton1_Command" ToolTip="删除本条记录" OnClientClick="return confirm('确认删除此文件?');">删除</asp:LinkButton>
                                </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <br />
            <div>
                <a href="Javascript:SelectAll();">全选</a>/<a href="Javascript:ReSelect();">反选</a>&nbsp;将选中的资讯<asp:Button
                    ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" CssClass="btn" />
                <asp:Button ID="btnBack" runat="server" Text="返回" CssClass="btn" OnClick="btnBack_Click" />
                   
                
                &nbsp;&nbsp;&nbsp;&nbsp;共搜索到<span style="color: red;"><%=AspNetPager.RecordCount%></span>条，共<span
                    style="color: red;"><%=AspNetPager.PageCount%></span>页 每页显示<asp:DropDownList ID="ddlPageSize"
                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem Selected="True">15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>50000</asp:ListItem>
                    </asp:DropDownList>条记录 &nbsp;
            </div>
            <td style="text-align: right; width: 348px;">
                &nbsp;&nbsp;</td>
            <td style="text-align: left; width: 74px;">
                <span id="pinfo" runat="server"></span>&nbsp;</td>
            <th align="center" colspan="8" style="height: 32px">
                <cc1:AspNetPager ID="AspNetPager" runat="server" ShowFirstLast="false" NextPageText="下一页"
                    CssClass="anpager" OnPageChanged="AspNetPager_PageChanged" PrevPageText="上一页"
                    ShowInputBox="Always" SubmitButtonText="GO" PageSize="20">
                </cc1:AspNetPager>
            </th>
        </div>
    </form>
    <%--   <div id="imgLoding" style="position: absolute; 
  display:none; background-color: #A9A9A9; 
  top: 0px; left: 0px; width: 100%;
   height:1000px; filter: 
   alpha(opacity=60);" runat="server">

               <div class="content" style="text-align:center; margin-top:200px">
                <p>
                    数据正在提交,请稍候...</p>
                <img src="../image/loading42.gif"alt="Loading" />
                </div>
   </div>--%>
</body>
</html>
