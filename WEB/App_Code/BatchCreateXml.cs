﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;
using System.Text;
using System.Xml;


/// <summary>
/// BatchCreateXml 的摘要说明
/// </summary>
public class BatchCreateXml
{
    protected static String connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"].ToString();//连接字符串

    public BatchCreateXml()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //

        //createDataListXml(infoid);
        //createUserDataXml(infoid);
    }

    #region 其他公共的方法

    //创建连接
    public SqlConnection GetSqlConnection()
    {
        return new SqlConnection(connectionString);
    }

    #endregion


    #region 获取需要生成XML的maininfotab表的infoID

    public DataTable GetInfoID(string strwhere)
    {
        SqlConnection conn = GetSqlConnection();
        conn.Open();
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "select infoid from maininfotab where " + strwhere;
        comm.Connection = conn;

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = comm;

        DataSet ds = new DataSet();
        sda.Fill(ds);
        conn.Close();
        return ds.Tables[0];
    }

    #endregion


    #region 生成xml方法

    //生成类似资源的XML文件
    public void createDataListXml(string infoid)
    {
        string strdatalist = GetDataList(infoid, "", 5, "5");

        XmlDocument xml = new XmlDocument();
        XmlNode node = xml.CreateNode(XmlNodeType.XmlDeclaration, "", "");
        xml.AppendChild(node);

        XmlElement element = xml.CreateElement("", "string", "http://www.topfo.com/");
        XmlText text = xml.CreateTextNode(strdatalist);
        element.AppendChild(text);
        xml.AppendChild(element);

        xml.Save("J:\\topfo\\tzweb\\xml\\MatchInfoData\\" + infoid + ".xml");
    }

    //生成用户发布的其它资源的XML文件
    public void createUserDataXml(string infoid)
    {
        string userdata = GetUserInfoDate(infoid);

        XmlDocument xml = new XmlDocument();
        XmlNode node = xml.CreateNode(XmlNodeType.XmlDeclaration, "", "");
        xml.AppendChild(node);

        XmlElement element = xml.CreateElement("", "string", "http://www.topfo.com/");
        XmlText text = xml.CreateTextNode(userdata);
        element.AppendChild(text);
        xml.AppendChild(element);

        xml.Save("J:\\topfo\\tzweb\\xml\\UserOtherData\\" + infoid + ".xml");
    }

    #endregion


    #region //读取类似资源信息

    /// <summary>
    /// 读取类似资源信息
    /// </summary>
    /// <param name="infoID">信息ID</param>
    /// <param name="TotalCount">返回记录的页数</param>
    /// <param name="Criteria">查询条件</param>
    /// <param name="pagesize">页记录数</param>
    /// <returns>类似信息</returns>
    protected string GetDataList(string infoID, string Criteria, int pagesize, string TotalCount)
    {
        SqlConnection conn = GetSqlConnection();

        //根据infoID返回InfotypeID
        string sql_getinfotype = "Select InfoTypeID from MainInfoTab Where InfoID = " + infoID.ToString();
        SqlDataAdapter sda_getinfotype = new SqlDataAdapter(sql_getinfotype, conn);
        DataSet ds_getinfotype = new DataSet();
        sda_getinfotype.Fill(ds_getinfotype);

        string infoTypeID = ds_getinfotype.Tables[0].Rows[0][0].ToString();

        string MatchType1 = "";
        string MatchType2 = "";
        string MatchType3 = "";

        switch (infoTypeID.ToLower().Trim())
        {
            case "merchant":
                MatchType1 = "MM";
                MatchType2 = "MP";
                MatchType3 = "MC";
                break;
            case "project":
                MatchType1 = "PP";
                MatchType2 = "PM";
                MatchType3 = "PC";
                break;
            case "capital":
                MatchType1 = "CC";
                MatchType2 = "CP";
                MatchType3 = "CM";
                break;
            default:
                break;
        }

        DataSet ds1 = GetDataListTable(infoID, Criteria, pagesize, TotalCount, conn, MatchType1);
        DataSet ds2 = GetDataListTable(infoID, Criteria, pagesize, TotalCount, conn, MatchType2);
        DataSet ds3 = GetDataListTable(infoID, Criteria, pagesize, TotalCount, conn, MatchType3);
        //return ds.Tables[0];

        //返回string结果

        StringBuilder sOut = new StringBuilder();
        string doMainUrl = "http://www1.topfo.com";
        if (ds1.Tables[0].Rows.Count > 0 || ds3.Tables[0].Rows.Count > 0 || ds2.Tables[0].Rows.Count > 0)
        {
            sOut.Append("<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"listtab\"><tr><td width=\"7%\" class=\"title\">&nbsp;</td><td width=\"15%\" class=\"title\" align=\"left\">发布者</td><td width=\"50%\" class=\"title\" align=\"center\">标题</td><td width=\"28%\" align=\"center\" class=\"title\">刷新时间</td></tr>");
            sOut.Append("<tr><td  colspan=4 style=\"width: 100%; font-weight: bold\">政府招商相关资源</td></tr>");
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                sOut.Append("<tr><td class=\"font14\"><label><input type=\"checkbox\" name=\"checkbox\" value=\"" + ds1.Tables[0].Rows[i]["InfoID"].ToString().Trim() + "\" /></label></td>");
                sOut.Append("<td align=\"left\">" + ds1.Tables[0].Rows[i]["LoginName"] + "</td>");
                sOut.Append("<td align=\"left\"><a href=\"" + doMainUrl + @"/" + ds1.Tables[0].Rows[i]["HtmlFile"].ToString().Trim() + "\">" + ds1.Tables[0].Rows[i]["title"].ToString().Trim() + "</a></td>");
                sOut.Append("<td align=\"center\">" + ds1.Tables[0].Rows[i]["FrontDisplayTime"].ToString().Trim() + "</td>");
                sOut.Append("</tr>");
            }
            sOut.Append("<tr><td  colspan=4 style=\"width: 100%; font-weight: bold\">企业项目相关资源</td></tr>");
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                sOut.Append("<tr><td class=\"font14\"><label><input type=\"checkbox\" name=\"checkbox\" value=\"" + ds2.Tables[0].Rows[i]["InfoID"].ToString().Trim() + "\" /></label></td>");
                sOut.Append("<td align=\"left\">" + ds2.Tables[0].Rows[i]["LoginName"] + "</td>");
                sOut.Append("<td align=\"left\"><a href=\"" + doMainUrl + @"/" + ds2.Tables[0].Rows[i]["HtmlFile"].ToString().Trim() + "\">" + ds2.Tables[0].Rows[i]["title"].ToString().Trim() + "</a></td>");
                sOut.Append("<td align=\"center\">" + ds2.Tables[0].Rows[i]["FrontDisplayTime"].ToString().Trim() + "</td>");
                sOut.Append("</tr>");
            }
            sOut.Append("<tr><td colspan=4 style=\"width: 100%; font-weight: bold\">资本相关资源</td></tr>");
            for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
            {
                sOut.Append("<tr><td class=\"font14\"><label><input type=\"checkbox\" name=\"checkbox\" value=\"" + ds3.Tables[0].Rows[i]["InfoID"].ToString().Trim() + "\" /></label></td>");
                sOut.Append("<td align=\"left\">" + ds3.Tables[0].Rows[i]["LoginName"] + "</td>");
                sOut.Append("<td align=\"left\"><a href=\"" + doMainUrl + @"/" + ds3.Tables[0].Rows[i]["HtmlFile"].ToString().Trim() + "\">" + ds3.Tables[0].Rows[i]["title"].ToString().Trim() + "</a></td>");
                sOut.Append("<td align=\"center\">" + ds3.Tables[0].Rows[i]["FrontDisplayTime"].ToString().Trim() + "</td>");
                sOut.Append("</tr>");
            }


            sOut.Append("</table>");
            sOut.Append("<div class=\"sbuttom\">" +
                    "<div class=\"left\">" +
                    "<img src=\"/Web13/images/project/icon_04.gif\" />" +
                    "点击复选框<i></i><img src=\"/Web13/images/project/button_dbxzzy.gif\"" +
                        "align=\"absmiddle\" style=\"cursor:pointer;\" onclick=\"javascrpit:compare('" + infoTypeID.ToLower().Trim() + "')\" /></div>" +
                    "<div class=\"right\">" +
                    "<a href=\"http://member.topfo.com/helper/MatchingInfo.aspx\" target=\"_blank\">点此订阅相关资源&gt;&gt;</a></div>" +
                    "<div class=\"clear\"></div></div>");
        }
        else
        {
            sOut.Append("<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"listtab\"><tr><td align=\"center\" class=\"title\">对不起，没有查到类似的资源</td></tr></table>");
        }
        return sOut.ToString().Trim();
    }

    //获取一个类别的类似信息
    protected DataSet GetDataListTable(string infoID, string Criteria, int pagesize, string TotalCount, SqlConnection conn, string MatchType)
    {
        SqlCommand comm = new SqlCommand();
        comm.CommandType = CommandType.StoredProcedure;
        comm.CommandText = "GetDataList_FN";
        comm.Connection = conn;

        string FunParm = "(" + infoID.ToString() + ",'" + DateTime.Now.ToString() + "'," + TotalCount.ToString() + ")";

        SqlParameter tblName = new SqlParameter("@TableViewName", SqlDbType.VarChar, 255);
        switch (MatchType)
        {
            case "CC":
                tblName.Value = "dbo.Capital_Capital_Ralation" + FunParm;
                break;
            case "CM":
                tblName.Value = "dbo.CAPITAL_MERCHNAT_RALATION" + FunParm;
                break;
            case "CP":
                tblName.Value = "dbo.CAPITAL_PROJECT_RALATION" + FunParm;
                break;
            case "PP":
                tblName.Value = "dbo.Project_Project_Ralation" + FunParm;
                break;
            case "PC":
                tblName.Value = "dbo.PROJECT_CAPITAL_RALATION" + FunParm;
                break;
            case "PM":
                tblName.Value = "dbo.PROJECT_MERCHNAT_RALATION" + FunParm;
                break;
            case "MM":
                tblName.Value = "dbo.Merchant_Merchant_Ralation" + FunParm;
                break;
            case "MP":
                tblName.Value = "dbo.MERCHNAT_PROJECT_RALATION" + FunParm;
                break;
            case "MC":
                tblName.Value = "dbo.MERCHNAT_CAPITAL_RALATION" + FunParm;
                break;
            default:
                break;
        }
        comm.Parameters.Add(tblName);
        SqlParameter strGetFields = new SqlParameter("@Key", SqlDbType.VarChar, 50);
        strGetFields.Value = "InfoID";
        comm.Parameters.Add(strGetFields);
        SqlParameter fldName = new SqlParameter("@SelectStr", SqlDbType.VarChar, 500);
        fldName.Value = "*";
        comm.Parameters.Add(fldName);
        SqlParameter Criteriapara = new SqlParameter("@Criteria", SqlDbType.VarChar, 8000);
        Criteriapara.Value = Criteria;
        comm.Parameters.Add(Criteriapara);
        SqlParameter Sort = new SqlParameter("@Sort", SqlDbType.VarChar, 255);
        Sort.Value = "FrontDisplayTime DESC";
        comm.Parameters.Add(Sort);
        SqlParameter Pagepara = new SqlParameter("@Page", SqlDbType.BigInt);//当前页号
        Pagepara.Value = 1;
        comm.Parameters.Add(Pagepara);
        SqlParameter CurrentPageRow = new SqlParameter("@CurrentPageRow", SqlDbType.BigInt);
        CurrentPageRow.Value = pagesize;
        comm.Parameters.Add(CurrentPageRow);
        SqlParameter TotalCountpara = new SqlParameter("@TotalCount", SqlDbType.BigInt);
        TotalCountpara.Value = TotalCount;
        TotalCountpara.Direction = ParameterDirection.InputOutput;
        comm.Parameters.Add(TotalCountpara);

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = comm;

        DataSet ds = new DataSet();
        sda.Fill(ds);
        return ds;
    }

    #endregion


    #region  //读取该会员发布的信息

    protected string GetUserInfoDate(string infoID)
    {
        SqlConnection conn = GetSqlConnection();
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "GetUseOtherResource";
        comm.CommandType = CommandType.StoredProcedure;
        comm.Connection = conn;
        conn.Open();
        SqlParameter infoIDpara = new SqlParameter("@InfoID", SqlDbType.BigInt);
        infoIDpara.Value = Convert.ToInt32(infoID);
        comm.Parameters.Add(infoIDpara);

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = comm;

        DataSet ds = new DataSet();
        sda.Fill(ds);

        //return ds.Tables[0];
        //返回string结果
        string doMainUrl = "http://www.topfo.com";
        StringBuilder sOut = new StringBuilder();
        if (ds.Tables[0].Rows.Count > 0)
        {
            sOut.Append("<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"listtab\"><tr><td width=\"7%\" class=\"title\">&nbsp;</td><td width=\"15%\" class=\"title\" align=\"center\">资源类型</td><td width=\"50%\" class=\"title\" align=\"center\">标题</td><td width=\"28%\" align=\"center\" class=\"title\">发布时间</td></tr>");

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                sOut.Append("<tr><td class=\"font14\"><label><input type=\"checkbox\" name=\"checkbox\" value=\"" + ds.Tables[0].Rows[i]["InfoID"].ToString().Trim() + "\" /></label></td>");
                sOut.Append("<td align=\"center\">" + ds.Tables[0].Rows[i]["InfoTypeName"] + "</td>");
                sOut.Append("<td align=\"left\"><a href=\"" + doMainUrl + @"/" + ds.Tables[0].Rows[i]["HtmlFile"].ToString().Trim() + "\">" + ds.Tables[0].Rows[i]["title"].ToString().Trim() + "</a></td>");
                sOut.Append("<td align=\"center\">" + ds.Tables[0].Rows[i]["PublishT"].ToString().Trim() + "</td>");
                sOut.Append("</tr>");
            }
            sOut.Append("</table>");
        }
        else
        {
            sOut.Append("<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"listtab\"><tr><td align=\"center\" class=\"title\">该会员未发布其它资源</td></tr></table>");
        }
        return sOut.ToString().Trim();
    }

    #endregion
}
