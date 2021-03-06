using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Tz888.Model.Common;

namespace Tz888.IDAL.Common
{
    /// <summary>
    /// 行业类别数据库访问逻辑接口定义
    /// </summary>
    public interface IIndustry
    {
        /// <summary>
        /// 取得行业分类的所有列表
        /// </summary>
        /// <returns>行业分类列表</returns>
        List<IndustryModel> GetAllList();


        /// <summary>
        /// 根据行业代码获取行业名称
        /// </summary>
        /// <param name="IndustryID">行业代码</param>
        /// <returns></returns>
        string GetNameByID(string IndustryID);

        /// <summary>
        /// 修改时根据行业代码获取行业名称
        /// </summary>
        /// <param name="IndustryID">list</param>
        /// <returns></returns>
        List<IndustryModel> GetIndustryList(string IndustryList);

          /// <summary>
        /// 根据ID获取资讯名称
        /// </summary>
        /// <param name="IndustryID">ID</param>
        /// <returns></returns>
        string GetSetNewsTypeByID(string NewsId);
        /// <summary>
        /// 获取所有新闻类型信息
        /// </summary>
        /// <returns></returns>
        DataView SetNewsType();
        /// <summary>
        /// 获取所有行业信息
        /// </summary>
        /// <returns></returns>
        DataView dvGetAllIndustry();
        /// <summary>
        /// 大区域类型表
        /// </summary>
        /// <returns></returns>
        DataView SetAreaTab();
        /// <summary>
        /// 信息等级表
        /// </summary>
        /// <returns></returns>
        //信息等级表
        DataView SetGradeTab();
        /// <summary>
        /// 信息价值
        /// </summary>
        /// <returns></returns>
        //信息价值
        DataView SetFixWorthPointTab();
        /// <summary>
        /// 新闻行页类型表
        /// </summary>
        /// <returns></returns>
        DataView SetNewsIndustry();
    }
}
