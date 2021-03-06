
using System;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

    public class BasePage : Page
    {
        Tz888.BLL.Conn bll = new Tz888.BLL.Conn();
        

        protected override void OnLoad(EventArgs e)
        {
            ValidateLogin();
            ValidRight();
            base.OnLoad(e);
        }

        /// <summary>
        /// 验证登录
        /// </summary>
        public void ValidateLogin()
        {
            if (this.LoginName == "")
            {
                base.Response.Redirect("~/login.aspx");
            }
        }
        /// <summary>
        /// 验证是否有当前页的访问权限并作相应处理
        /// </summary>
        public void ValidRight()
        {
            bool isOk = false;
            isOk = ValidateRightByRole();
            if (!isOk)
            {
                if (Request.UrlReferrer != null)
                {
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "myKey", "alert('注册成功！'); location.href='SysUser.aspx'", true);
                    Response.Clear();
                    base.Response.Redirect("/warn.aspx");
                    //Tz888.Common.MessageBox.ShowBack("你没有该页的访问权限,请联系系统管理员!");
                    return;
                }
                else
                {
                    Response.Clear();
                    Tz888.Common.MessageBox.ShowAndHref("你没有该页的访问权限,请联系系统管理员!", "/warn.aspx");
                    return;
                }
            }

        }
        ///// <summary>
        ///// 验证当前角色对当前路径是否有访问权限
        ///// </summary>
        public bool ValidateRightByRole()
        {
            bool flg = false;
            string[] arr = null;
            string[] arrMenu = null;
            try
            {
                DataRow[] drSystem = GetSystem().Select("employeeid='" + LoginName  + "'");  //获取当前用户的角色组
                for (int i = 0; i < drSystem.Length; i++)
                {
                    arr = Tz888.Common.Text.FormatDh(drSystem[i]["tem"].ToString().Trim(), ",").Split(',');
                    for (int k = 0; k < arr.Length; k++)
                    {
                        System.Data.DataRow[] myrow = GetSyspermission().Select("roleid=" + arr[k].ToString().Trim());  //获取权限菜单码
                        for (int v = 0; v < myrow.Length; v++)
                        {
                            arrMenu = Tz888.Common.Text.FormatDh(myrow[v]["spcode"].ToString().Trim(), ",").Split(',');
                            for (int m = 0; m < arrMenu.Length; m++)
                            {
                                DataRow[] drs = GetSysmenu().Select("scode='" + arrMenu[m].ToString().Trim() + "'");
                                for (int n = 0; n < drs.Length; n++)
                                {
                                    if (drs[n]["surl"].ToString().Trim().ToLower() == this.CurrentPath.Trim().ToLower())
                                    {
                                        flg = true;
                                        return flg;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch
            {
            }
            return flg;
        }

        #region [获取权验证数据]
        /// <summary>
        /// 获取用户组,采用缓存cache
        /// </summary>
        /// <returns></returns>
        public DataTable GetSystem()
        {
            DataTable dt = new DataTable();
            try
            {
                if (AppCache.IsExist("SystemList"))
                {
                    dt = (DataTable)AppCache.Get("SystemList");
                }
                else
                {
                    dt = bll.GetList("system", "employeeid,tem", "employeeid", 1000, 1, 0, 0, "");
                    AppCache.AddCache("SystemList", dt, 1);
                }
                
            }
            catch
            {
                dt = null;
            }
            return dt;
        }

        /// <summary>
        /// 获取权限表
        /// </summary>
        /// <returns></returns>
        public DataTable GetSyspermission()
        {
            DataTable dt = new DataTable();
            try
            {
                if (AppCache.IsExist("SyspermissionList"))
                {
                    dt = (DataTable)AppCache.Get("SyspermissionList");
                }
                else
                {
                    dt = bll.GetList("syspermissiontab", " roleid,spcode ", "roleid", 1000, 1, 0, 0, "");
                    AppCache.AddCache("SyspermissionList", dt, 1);
                }
                
            }
            catch
            {
                dt = null;
            }
            return dt;
        }

        /// <summary>
        /// 获取菜单个
        /// </summary>
        /// <returns></returns>
        public DataTable GetSysmenu()
        {
            DataTable dt = new DataTable();
            try
            {
                if (AppCache.IsExist("SysmenuList"))
                {
                    dt = (DataTable)AppCache.Get("SysmenuList");
                }
                else
                {
                    dt = bll.GetList("sysmenutab", " scode,surl ", "scode", 1000, 1, 0, 0, "");
                    AppCache.AddCache("SysmenuList", dt, 1);
                }
                
            }
            catch
            {
                dt = null;
            }
            return dt;
        }
        #endregion


        public string HostUrl
        {
            get
            {
                string str = HttpContext.Current.Request.Url.ToString();
                string str3 = str.Substring(str.IndexOf("//") + 2);
                return ("http://" + str3.Substring(0, str3.IndexOf("/") + 1));
            }
        }
        /// <summary>
        /// 登录用户名session
        /// </summary>
        public string LoginName
        {
            get
            {
                if (Session["LoginName"]!=null)
                {
                    return Session["LoginName"].ToString();
                }
                return "";
            }
            set
            {
                Session["LoginName"] = value;
            }
        }
        /// <summary>
        /// 主路径
        /// </summary>
        public string SitePath
        {
            get
            {
                return Globals.ApplicationPath;
            }
        }
        /// <summary>
        /// 当前访问url,不带参数
        /// </summary>
        public string CurrentPath
        {
            get
            {
                return Request.Path.ToString();
            }
        }

        

    }

