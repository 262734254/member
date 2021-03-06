using System;
using System.Collections.Generic;
using System.Text;
using Tz888.Model.Brand;
using Tz888.SQLServerDAL.Brand;
using System.Data;

namespace Tz888.BLL.Brand
{
    /// <summary>
    /// 品牌
    /// </summary>
    public class BrandBLL
    {
        private readonly BrandDAL dal = new BrandDAL();

        public bool AddBrand(Tz888.Model.Brand.BrandModel Brand)
        {
            return dal.AddBrand(Brand);
        }

        /// <summary>
        /// 修改品牌
        /// </summary>
        /// <param name="brand">BrandModel</param>
        /// <returns></returns>
        public bool ModfiyBrand(Tz888.Model.Brand.BrandModel Brand)
        {
            return dal.ModfiyBrand(Brand);
        }

        /// <summary>
        /// 删除品牌
        /// </summary>
        /// <param name="BrnadId">BrnadId</param>
        /// <returns></returns>
        public bool DeleteBrand(string BrnadId)
        {
            return dal.DeleteBrand(BrnadId);
        }

        /// <summary>
        /// 根据BrandId获取品牌详情
        /// </summary>
        /// <param name="BrandId">BrandId</param>
        /// <returns></returns>
        public DataTable GetBrandByBrandId(string BrandId)
        {
            return dal.GetBrandByBrandId(BrandId);
        }

        /// <summary>
        /// 品牌列表
        /// </summary>
        /// <param name="ObjectName">表/视图</param>
        /// <param name="Key">主键</param>
        /// <param name="ShowFiled">显示字段</param>
        /// <param name="Where">条件</param>
        /// <param name="OrderFiled">排序字段</param>
        /// <param name="PageCurrent">当前页</param>
        /// <param name="PageSize">页码大小</param>
        /// <param name="TotalCount">总条数</param>
        /// <returns></returns>
        public System.Data.DataTable GetBrandList(string ObjectName, string Key, string ShowFiled, string Where, string OrderFiled, ref int PageCurrent, int PageSize, ref int TotalCount)
        {
            return dal.GetBrandList(ObjectName, Key, ShowFiled, Where, OrderFiled, ref PageCurrent, PageSize, ref TotalCount);
        }
    }
}
