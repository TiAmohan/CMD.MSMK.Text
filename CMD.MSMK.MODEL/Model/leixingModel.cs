using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    public class leixingModel
    {
        private int ID;
        /// <summary>
        /// 类型ID
        /// </summary>
        public int id
        {
            get { return ID; }
            set { ID = value; }
        }
        private string Name;
        /// <summary>
        /// 类型名字
        /// </summary>
        public string name
        {
            get { return Name; }
            set { Name = value; }
        }
        private int CCid;
        /// <summary>
        /// 外键对应ID
        /// </summary>
        public int ccid
        {
            get { return CCid; }
            set { CCid = value; }
        }

    }
}
