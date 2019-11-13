using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //卖家商品表
    public class SellerProductModel
    {
        //卖家商品id
        public int Sproductid { get; set; }

        //卖家商品名称
        public string Sproductname { get; set; }

        //卖家商品简介
        public string Sproductcontent { get; set; }

        //卖家商品价格
        public string Sproductprice { get; set; }

        //卖家商品图片
        public string Sproductimg { get; set; }

        //对应卖家表的卖家id（外键）
        public int Sellerid { get; set; }


        //卖家名字
        public string Sellername { get; set; }

        //卖家状态默认是0，0是正常，1是冻结
        public int Sellerstate { get; set; }
    }
}
