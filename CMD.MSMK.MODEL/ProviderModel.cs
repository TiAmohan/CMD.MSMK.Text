using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    //供应商表
    public class ProviderModel
    {
        //供应商id
        public int Providerid { get; set; }

        //供应商名称
        public string Providername { get; set; }

        //供应商状态
        public int Providerstate { get; set; }
    }
}
