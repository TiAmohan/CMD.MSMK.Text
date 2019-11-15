using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.DAL
{
    public class DalNotice
    {
        /// <summary>
        /// 根据用户名字、等级、级别进行查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Usergrade"></param>
        /// <param name="UsersState"></param>
        /// <returns></returns>
        //public static List<ModelNotice> NoticeList(string Username = "", int Usergrade = 0, int UsersState = -1)
        //{
            //SqlParameter[] sqlpar = new SqlParameter[]
            //    {
            //        new SqlParameter("@Username",Username),
            //         new SqlParameter("@Usergrade",Usergrade),
            //          new SqlParameter("@UsersState",UsersState),
            //    };
            //SqlDataReader sdr = DBhelp.slelectProc("UsersList", sqlpar);
            //List<ModelNotice> list = new List<ModelNotice>();
            //if (sdr.HasRows)
            //{
            //    while (sdr.Read())
            //    {
            //        ModelNotice model = new ModelNotice();
            //        model.Userid = Convert.ToInt32(sdr["Userid"]);
            //        list.Add(model);
            //    }
            //}
            //return list;
        //}
    }
}
