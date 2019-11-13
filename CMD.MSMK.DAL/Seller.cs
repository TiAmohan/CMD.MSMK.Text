﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.DAL
{
   public class Seller
    {
        //查询全部
        public static List<SellerProductModel> select()
        {
            string sql = "select * from Seller,SellerProduct where Seller.Sellerid=SellerProduct.Sellerid";
            //方法调用
            SqlDataReader reader = DBhelp.slelect(sql);
            //创建list方便存储
            List<SellerProductModel> list = new List<SellerProductModel>();
            //判断SqlDataReader是否存有值
            if (reader.HasRows)
            {
                //遍历下一条
                while (reader.Read())
                {
                    //循环存储进入model
                    SellerProductModel model = new SellerProductModel();
                    model.Sellerid = Convert.ToInt32(reader["Sellerid"]);
                    model.Sellername = reader["Sellername"].ToString();
                    model.Sellerstate = Convert.ToInt32(reader["Sellerstate"]);
                    model.Sproductid = Convert.ToInt32(reader["Sproductid"]);
                    model.Sproductname = reader["Sproductname"].ToString();
                    model.Sproductcontent = reader["Sproductcontent"].ToString();
                    model.Sproductprice = reader["Sproductprice"].ToString();
                    model.Sproductimg = reader["Sproductimg"].ToString();
                    //将每一个model存到集合里
                    list.Add(model);
                }
            }
            //返回list集合
            return list;
        }

        //添加
        public static int insert(SellerProductModel model)
        {
            //定义添加sql
            string sql = "insert into SellerProduct values(@Sproductname,@Sproductcontent,@Sproductprice,@Sproductimg,@Sellerid)";
            //存储集合
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Sproductname",model.Sproductname),
                new SqlParameter("@Sproductcontent",model.Sproductcontent),
                new SqlParameter("@Sproductprice",model.Sproductprice),
                new SqlParameter("@Sproductimg",model.Sproductimg),
                new SqlParameter("@Sellerid",model.Sellerid)
            };
            return DBhelp.Notquery(sql,parameters);  
        }
    }
}
