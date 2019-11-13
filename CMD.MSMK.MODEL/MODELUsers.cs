using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL.MODEL
{
    public class ModelUsers
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public int Userid { get; set; }
        /// <summary>
        /// 用户名
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// 用户密码
        /// </summary>
        public string Userpassword { get; set; }
        /// <summary>
        /// 用户余额
        /// </summary>
        public Double Userbalance { get; set; }
        /// <summary>
        /// 用户等级
        /// </summary>
        public int Usergrade { get; set; }
        /// <summary>
        /// 用户状态
        /// </summary>
        public int UsersState { get; set; }

    }
}
