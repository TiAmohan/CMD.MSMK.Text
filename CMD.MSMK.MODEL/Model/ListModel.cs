using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //订单表
    public class ListModel
    {
        //订单id
        public int Listid { get; set; }

        //对应卖家商品表的商品id（外键）
        public int Sproductid { get; set; }

        //(默认值为0，0是待发货，1是已发货，2是已完成，3是退换)订单状态
        public int Liststate { get; set; }

        //对应用户表的用户id（外键）
        public int Userid { get; set; }
    }
}
