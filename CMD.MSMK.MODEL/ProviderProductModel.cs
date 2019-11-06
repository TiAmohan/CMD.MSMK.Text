using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //供应商商品表
    public class ProviderProductModel
    {
        //供应商商品id
        public int Productid { get; set; }

        //供应商商品名称
        public string Productname { get; set; }

        //供应商商品简介
        public string Productcontent { get; set; }

        //供应商商品价格
        public string Productprice { get; set; }

        //供应商商品图片
        public string Productimg { get; set; }

        //对应供应商表的供应商id（外键）
        public int Providerid { get; set; }
    }
}
