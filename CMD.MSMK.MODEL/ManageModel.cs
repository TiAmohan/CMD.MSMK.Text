using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //平台管理（公告表）
    public class ManageModel
    {
        //公告id
        public int Manageid { get; set; }

        //公告标题
        public string Managetitle { get; set; }

        //公告内容
        public string Managecontent { get; set; }

        //公告时间
        public string Managetime { get; set; }

        //公告对应级别(对哪个级别发布)(买家，卖家，供应商，全部)
        public int Managegrade { get; set; }
    }
}
