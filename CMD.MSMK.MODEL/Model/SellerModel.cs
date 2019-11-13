using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //卖家表
    public class SellerModel
    {
        //卖家id
        public int Sellerid { get; set; }

        //卖家名字
        public string Sellername { get; set; }

        //卖家状态默认是0，0是正常，1是冻结
        public int Sellerstate { get; set; }
    }
}
