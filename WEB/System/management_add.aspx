﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="management_add.aspx.cs" Inherits="System_management_add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_agencies">
        <div class="recomme">
            专业服务类别管理</div>
        <div class="redtxt">
            <a href="contentManagement.aspx">分类添加</a></div>
    </div>
    <div class="r_audit">
        <ul>
            <li>类别名称
                <input name="txtTypeName" type="text" id="txtTypeName" runat="server" />
            </li>
            <li>排序序号
                <input name="txtIndexNum" type="text" id="txtIndexNum" runat="server" style="width: 37px" />
            </li>
            <li>上级类别
                <asp:DropDownList ID="ddlType" DataTextField="ServiesBName" DataValueField="ServiesBID"
                    runat="server">
                </asp:DropDownList></li>
            <li>服务介绍：<asp:TextBox ID="txtRemark" runat="server" Height="149px" TextMode="MultiLine"
                Width="579px"></asp:TextBox></li><li class="interval">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添　加" />
                </li>
        </ul>
    </div>
    </form>
</body>
</html>
