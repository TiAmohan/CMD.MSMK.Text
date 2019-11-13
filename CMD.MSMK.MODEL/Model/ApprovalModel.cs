using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //级别审批
    public class ApprovalModel
    {
        //审批id
        public int Approvalid { get; set; }

        //审批级别
        public int Approvalgrade { get; set; }

        //审批内容
        public string Approvalcontent { get; set; }

        //审批时间
        public string Approvaltime { get; set; }

        //对应用户表（用户id）（外键）
        public int Userid { get; set; }
    }
}
