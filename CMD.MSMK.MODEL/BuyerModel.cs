using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //买家个人信息
    public class BuyerModel
    {
        //买家id
        public int Buyerid { get; set; }

        //买家用户名
        public string Buyername { get; set; }

        //买家电话
        public string Buyerphone { get; set; }

        //买家邮箱
        public string Buyeremail { get; set; }

        //收货人姓名
        public string Shname { get; set; }

        //收货人地址
        public string Shaddress { get; set; }

        //收货人电话
        public string Shphone { get; set; }
    }
}
