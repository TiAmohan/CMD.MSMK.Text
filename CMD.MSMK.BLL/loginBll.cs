using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.MODEL;
using CMD.MSMK.DAL;

namespace CMD.MSMK.BLL
{
    public class loginBll
    {
        /// <summary>
        /// 根据账号密码进行查询
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static object selectone(string name, string pwd)
        {
            return LoginDal.selectone(name, pwd);
        }
        /// <summary>
        /// 根据ID进行查询
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static loginModel selectID(int id)
        {
            return LoginDal.selectID(id);
        }
        /// <summary>
        /// 查询所有数据
        /// </summary>
        /// <returns></returns>
        public static List<loginModel> select(string name, string id)
        {
            return LoginDal.select(name,id);
        }
        /// <summary>
        /// 查询类型
        /// </summary>
        /// <returns></returns>
        public static List<leixingModel> selectleixing()
        {
            return LoginDal.selectleixing();
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int insert(loginModel model)
        {
            return LoginDal.insert(model);
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int Update(loginModel model)
        {
            return LoginDal.Update(model);
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int delete(loginModel model)
        {
            return LoginDal.delete(model);
        }
    }
}
