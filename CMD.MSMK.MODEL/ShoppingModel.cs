using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
  public  class ShoppingModel
    {
        //购物车id
        public int Shoppingid { get; set; }

        //购物车商品名（对应）（卖家商品名称）
        public string Sproductname { get; set; }

        //购物车商品简介（对应）（卖家商品简介）
        public string Sproductcontent { get; set; }

        //购物车商品价格（对应）（卖家商品价格）
        public string Sproductprice { get; set; }

        //购物车商品图片（对应）（卖家商品图片）
        public string Sproductimg { get; set; }

        //买家购物车对应买家个人信息（买家id）（外键）
        public int Buyerid { get; set; }
    }
}
