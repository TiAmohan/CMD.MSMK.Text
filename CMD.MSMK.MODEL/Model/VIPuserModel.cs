using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //会员表
    public class VIPuserModel
    {

        //会员id
        public int Vipid { get; set; }

        //会员名称
        public string Vipname { get; set; }

        //会员级别(0=白银会员，1=黄金会员，2=至尊会员)
        public int VIPList { get; set; }

        //会员特权
        public string Viper { get; set; }

        //对应买家个人信息（买家id）（外键）
        public int Buyerid { get; set; }
    }
}
