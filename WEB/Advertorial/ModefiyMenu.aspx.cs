﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Tz888.BLL.Advertorial;
using Tz888.Model.Advertorial;
public partial class Advertorial_ModefiyMenu : System.Web.UI.Page
{
    Tz888.Model.Advertorial.IndustryTypeModel model = new Tz888.Model.Advertorial.IndustryTypeModel();
    IndustryType bll = new IndustryType();
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["sid"] != null && Request.QueryString["sid"] != "")
            {
                int sid = Convert.ToInt32(Request.QueryString["sid"].ToString());
                model = bll.GetModel(sid);
                txtMuneName.Text = model.industryName;
                txtUrlAdd.Text = model.desc;
                if (model.CheckiD == 0)
                {
                    rdoClose.Checked = true;
                }
                else
                {
                    rdoQidong.Checked = true;
                }
                classIds.Value = Request.QueryString["sid"].ToString();
            }
            else
            {
                classIds.Value = "0";
            }
            if (Request.UrlReferrer != null)
            {
                ViewState["returnUrl"] = Request.UrlReferrer.ToString();
            }
            else
            {
                ViewState["returnUrl"] = "IndustryManage.aspx";
            }
            if (Request.QueryString["ji"] != null && Request.QueryString["ji"] != "")
            {
                switch (Request.QueryString["ji"].ToString())
                {
                    case "1":
                        lbmenu.Text = "修改一级菜单";
                        break;
                    case "2":
                        lbmenu.Text = "修改二级菜单";
                        break;

                    default:
                        break;
                }
            }
            else
            {
                lbmenu.Text = "修改一级菜单";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int sid = Convert.ToInt32(Request.QueryString["sid"].ToString());
        model = bll.GetModel(sid);
        model.industryName = txtMuneName.Text.Trim();
        model.desc = txtUrlAdd.Text.Trim();
        if (rdoClose.Checked)
        {
            model.CheckiD = 0;
        }
        else
        {
            model.CheckiD = 1;
        }
        if (bll.Update(model))
        {
            Response.Write("<script>alert('更新成功');location.href='" + ViewState["returnUrl"].ToString() + "';</script>");

        }
        else
        {
            Response.Write("<script>alert('更新失败');location.href='" + ViewState["returnUrl"].ToString() + "';</script>");
        }
    }
}
