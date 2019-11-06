using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //卖家与买家的交流
    public class TalkModel
    {
        //交流id
        public int MyProperty { get; set; }

        //对应卖家表（卖家id）（外键）
        public int Sellerid { get; set; }

        //对应买家表（买家id）（外键）
        public int Buyerid { get; set; }

        //交流内容
        public string Talkcontent { get; set; }

        //交流时间
        public string Talktime { get; set; }
    }
}
