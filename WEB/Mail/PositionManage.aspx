﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PositionManage.aspx.cs" Inherits="Mail_PositionManage" %>
<%@ Register Assembly="Tz888.Common" Namespace="Tz888.Common.Pager" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>职位列表页</title>
              <link href="../css/CRM.css" rel="stylesheet" type="text/css" />
    <script type ="text/javascript" language ="javascript">
    function UpdateType(idd)
{

      url="PositionInsert.aspx?str="+idd;
      window.location.href = url;
 

}
function DelNav(id)
{
    var url="";
    url="PositionManage.aspx?str="+id;
    window.location.href = url;
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
          <div align="center">
            <div class="title">
                <h2>
                    <p>
                        <span><b>职位列表</b></span></p>
                </h2>
            </div>
     <table border="0" cellpadding="0" cellspacing="0" align="center" class="one_table"  >
                <tr  style="background:#bcd9e7; height:27px;">
                      <th style="height: 27px" >
                        序号</th>
                        <th style="height: 27px" >
                        职位名称</th>
                        <th style="height: 27px">
                        是否审核
                        </th>
                          <th style="height: 27px" >
                        管理</th>
                       
                </tr>
                <asp:Repeater ID="RfList" runat="server">
                    <ItemTemplate>
                         <tr  onmouseover="this.style.backgroundColor='#f5f5f5';" onmouseout="this.style.backgroundColor=''" >
                            
                            <td >
                                        <%#(Eval("Id"))%>
                           </td>
                            <td >

                                <asp:Label ID="labstatu" runat="server" Text='<%# Eval("Name")%>'></asp:Label>
                            </td>
                            <td>
                            <%#Convert.ToString(Eval("Audit"))=="0"?"否":"是" %>
                            </td>
                               <td >
                             
                           <a href='JavaScript:UpdateType("<%#Eval("Id") %>");'>审核</a>&nbsp &nbsp
                            </td>
                         
                        </tr>
                        
                    </ItemTemplate>
                </asp:Repeater>
            </table>
            <br />
    <div class="pagebox" style ="text-align:left" >
        <input type="button"  value="录入职位"  class ="btn" onclick="javascript:location.href='PositionInsert.aspx'" />
        &nbsp;&nbsp;&nbsp;&nbsp;  <div style="text-align:right">
    
            <cc1:Pager ID="Pager1" runat="server" BackColor="Transparent" BorderStyle="None"
                PagerStyle="CustomAndNumeric" ControlToPaginate="RfList" PagingMode="NonCached"
                UseCustomDataSource="False" ShowCount="True" SortColumn="PublishT" SortType="DESC"
                TableViewName="MainInfoVIW" KeyColumn="InfoID"
                ShowPageCount="False"></cc1:Pager>
                &nbsp;</div>
        </div>

</div>
    </form>
</body>
</html>
