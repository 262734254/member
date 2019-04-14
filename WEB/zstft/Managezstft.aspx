﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Managezstft.aspx.cs" Inherits="zstft_Managezstft" %>

<%@ Register Assembly="Tz888.Pager" Namespace="Tz888.Pager" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Tz888.Common" Namespace="Tz888.Common.Pager" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>企业名片管理</title>
    <link type="text/css" href="../css/CRM.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript" src="../js/Common1.js"></script>
    <script language="javascript" type="text/javascript">
          function Del(Id,Picture,Category)
          {
              if(confirm('确定要删除!'))
              {
                 var url="Managezstft.aspx?Id="+Id+"&Picture="+Picture+"&Category="+escape(Category);
                 window.location.href=url;
              }
          }
          
          function Modfiy(Id)
          {
             var url="Updatezstft.aspx?Id="+Id;
             window.location.href=url;
          }
          
          function CheckCategory()
          {
             var Category=document.getElementById("DropCategory");
             if(Category.options[Category.selectedIndex].value=="")
             {
                alert("请选择要生成的类别!");
                Category.focus();
                return false;
             }
             return true;
          }
          
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="mainconbox">
            <div class="title" align="center">
                <h2>
                    <p><span><b>招商拓富通管理</b></span></p>
                </h2>
            </div>
            <%-- <table border="0" cellpadding="0" cellspacing="0" align="center" class="one_table" >
                <tr>
                    <td align="center" >
                        标题：
                        <input id="txtTitle" type="text" runat="server" />
                        </td>
                        <td align="center">
                          是否推荐：
                         <asp:DropDownList ID="DropRecommend" runat="server">
                           <asp:ListItem Value="-1">-请选择-</asp:ListItem>
                           <asp:ListItem Value="1">是</asp:ListItem>
                           <asp:ListItem Value="0">否</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td align="center">
                          展示位置:
                         <asp:DropDownList ID="ShowPosition" runat="server">
                        </asp:DropDownList>
                        </td>
                        <td align="center">
                        <asp:Button runat="server" ID="Search" CssClass="btn" Text="确定" OnClick="Search_Click"/></td>
                </tr>
            </table>--%>
               <div class=" cshibiank">
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" class="one_table">
                      <tr>
                        <th width="8%" align="center" class="tabtitle" style="height: 29px"><a href="Javascript:js.IsSelect(true,'Cbox');">全</a>|<a href="Javascript:js.IsSelect(false,'Cbox');">反</a></th>
                        <th align="center" width="8%" class="tabtitle">序号</th>
                        <th align="center" width="20%" class="tabtitle">网站名称</th>
                        <th align="center" width="20%" class="tabtitle">网站地址</th>
                        <th align="center" width="16%" class="tabtitle"> 区域</th>
                        <th align="center" width="16%" class="tabtitle"> 类型</th>
                        <th align="center" width="10%" class="tabtitle">管理</th>
                    </tr>    
                    <asp:Repeater ID="zstft" runat="server">
                        <ItemTemplate>
                            <tr onmouseover="this.style.backgroundColor='#f5f5f5';" onmouseout="this.style.backgroundColor=''">
                                <td align="center">
                                     <asp:CheckBox runat="server" ID="Cbox" ToolTip='<%# Eval("Id") %>' />
                                </td>
                                <td align="center">
                                  <%# Container.ItemIndex + 1 %>
                                </td>
                                <td align="center">
                                   <%# Eval("Title")%>
                                </td>
                                <td align="center">
                                   <a href='<%# Eval("Address") %>' target="_blank"><%# Eval("Address")%></a>
                                </td>
                                <td align="center">
                                   <%# Eval("ProvinceName") %>
                                </td>
                                <td align="center">
                                   <%# Eval("Category") %>
                                </td>
                                <td align="center">
                                    <asp:Label runat="server" ID="Picture" Visible="false" Text='<%# Eval("Picture") %>'></asp:Label>
                                     <asp:Label runat="server" ID="Category" Visible="false" Text='<%# Eval("Category") %>'></asp:Label>
                                    <a href="JavaScript:Del('<%# Eval("Id") %>','<%# Eval("Picture") %>','<%# Eval("Category") %>')">删除</a>&nbsp &nbsp
                                    <a href='JavaScript:Modfiy(<%#Eval("Id") %>)'>修改</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            <div class="pagebox" style="margin-left:5px; margin-top:5px;">
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td style="width: 20%;" align="left">
                            共<span id="pinfo" style="color: Red" runat="server"></span>个数据
                        </td>
                        <td style="width: 80%">
                            <cc1:AspNetPager ID="AspNetPager1" runat="server" ShowFirstLast="false" NextPageText="下一页"
                                OnPageChanged="AspNetPager1_PageChanged" PrevPageText="上一页" ShowInputBox="Always"
                                SubmitButtonText="GO" Width="479px">
                            </cc1:AspNetPager>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="margin-left:5px; margin-top:5px;">
            <asp:DropDownList ID="DropCategory" runat="server">
              <asp:ListItem Value="">==请选择生成类别==</asp:ListItem>
              <asp:ListItem Value="招商">招商</asp:ListItem>
              <asp:ListItem Value="投资">投资</asp:ListItem>
              <asp:ListItem Value="融资">融资</asp:ListItem>
            </asp:DropDownList>
           <asp:Button ID="StaticPage" CssClass="btn" Text="生成页面" OnClientClick="return CheckCategory();" runat="server" OnClick="StaticPage_Click" />
           <input type="button" value="添 加" class="btn" onclick="window.location.href='Addzstft.aspx';" />
           <asp:Button ID="BtnDel" runat="server" CssClass="btn" OnClientClick='return js.DelChecked("Cbox","请选择删除项","")' Text="删 除" OnClick="BtnDel_Click" />
        </div>
    </form>
</body>
</html>
