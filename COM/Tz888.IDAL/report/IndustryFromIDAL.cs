using System;
using System.Collections.Generic;
using System.Text;
using Tz888.Model.report;
using System.Data;
namespace Tz888.IDAL.report
{
    public interface IndustryFromIDAL
    {
        #region  成员方法
        /// <summary>
        /// 增加一条数据
        /// </summary>
        int Add(IndustryFrom model);
        /// <summary>
        /// 更新一条数据
        /// </summary>
        bool Update(IndustryFrom model);
        /// <summary>
        /// 删除一条数据
        /// </summary>
        bool Delete(int industryId);
        bool DeleteList(string industryIdlist);
        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        IndustryFrom GetModel(int industryId);
        /// <summary>
        /// 获得数据列表
        /// </summary>
        DataSet GetList(string strWhere);
        /// <summary>
        /// 获得前几行数据
        /// </summary>
        DataSet GetList(int Top, string strWhere, string filedOrder);
        /// <summary>
        /// 根据分页获得数据列表
        /// </summary>
        //DataSet GetList(int PageSize,int PageIndex,string strWhere);
        #endregion  成员方法
    }
}
