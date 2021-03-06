
    using System;
    using System.Web;
    using System.Web.UI;

    public class BaseUC : UserControl
    {


        public void ValidateLogin()
        {
            if (this.LoginName == "")
            {
                //base.Response.Redirect("~/login.aspx");
            }
        }



        public string HostUrl
        {
            get
            {
                string str = HttpContext.Current.Request.Url.ToString();
                string str3 = str.Substring(str.IndexOf("//") + 2);
                return ("http://" + str3.Substring(0, str3.IndexOf("/") + 1));
            }
        }

        public string LoginName
        {
            get
            {
                BasePage page = new BasePage();

                //BasePage page = (BasePage) this.Page;
                return page.LoginName;
            }
            set
            {
                BasePage page = new BasePage();
                //BasePage page = (BasePage) this.Page;
                page.LoginName = value;
            }
        }

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

