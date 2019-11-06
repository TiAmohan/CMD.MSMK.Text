using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.DAL
{
    public class LoginDal
    {
        /// <summary>
        /// 根据账号密码进行查询
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static object selectone(string name, string pwd)
        {
            //创建连接字符串
            string sql = "select * from cc where name=@name and pow=@pwd";
            //创建sqlpar
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                    new SqlParameter("@name",name),
                    new SqlParameter("@pwd",pwd)
            };
            //方法调用
            object num = DBhelp.select(sql, sqlpar);
            return num;
        }
        /// <summary>
        /// 根据ID进行查询
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static loginModel selectID(int id)
        {
            //创建连接字符串
            string sql = "select * from cc where id=@id";
            //创建sqlpar
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                    new SqlParameter("@id",id)
            };
            //方法调用
            SqlDataReader sdr = DBhelp.slelect(sql, sqlpar);
            //新建MODEL 存储值
            loginModel model = new loginModel();
            //判断sqldatareader是否存在数据
            if (sdr.HasRows)
            {
                ///遍历下一条
                while (sdr.Read())
                {
                    //循环存储进入model
                    model.id = Convert.ToInt32(sdr["id"]);
                    model.name = sdr["name"].ToString();
                    model.pwd = sdr["pow"].ToString();
                }
            }
            //返回一个model类型的值
            return model;
        }
        /// <summary>
        /// 查询所有数据
        /// </summary>
        /// <returns></returns>
        public static List<loginModel> select(string name,string id)
        {
            //创建连接字符串
            string sql = "select * from cc,leixing where cc.id=leixing.ccid and zt=0 ";
            List<SqlParameter> sqlpar = new List<SqlParameter>() { };
            if (string.IsNullOrEmpty(name))
            {
                sql += " and cc.name=@name";
                sqlpar.Add(new SqlParameter("@name",name));
            }
            if (string.IsNullOrEmpty(name))
            {
                sql += " and leixing.name=@id";
                sqlpar.Add(new SqlParameter("@id", id));
            }
            //方法调用
            SqlDataReader sdr = DBhelp.slelect(sql,sqlpar.ToArray());
            //创建list方便存储数据
            List<loginModel> list = new List<loginModel>();
            //判断sqldatareader是否存在数据
            if (sdr.HasRows)
            {
                ///遍历下一条
                while (sdr.Read())
                {
                    loginModel model = new loginModel();
                    //循环存储进入model
                    model.id = Convert.ToInt32(sdr["id"]);
                    model.name = sdr["name"].ToString();
                    model.pwd = sdr["pow"].ToString();
                    //将每一个model添加到集合里
                    list.Add(model);
                }
            }
            //返回list集合
            return list;
        }
        /// <summary>
        /// 查询类型
        /// </summary>
        /// <returns></returns>
        public static List<leixingModel> selectleixing()
        {
            //创建连接字符串
            string sql = "select * from leixing";
            //方法调用
            SqlDataReader sdr = DBhelp.slelect(sql);
            //创建list方便存储数据
            List<leixingModel> list = new List<leixingModel>();
            //判断sqldatareader是否存在数据
            if (sdr.HasRows)
            {
                ///遍历下一条
                while (sdr.Read())
                {
                    leixingModel model = new leixingModel();
                    //循环存储进入model
                    model.id = Convert.ToInt32(sdr["id"]);
                    model.name = sdr["name"].ToString();
                    model.ccid = Convert.ToInt32(sdr["ccid"]);
                    //将每一个model添加到集合里
                    list.Add(model);
                }
            }
            //返回list集合
            return list;
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int insert(loginModel model)
        {
            //定义添加sql
            string sql = "insert cc values(@name,@pwd,default)";
            //集合存储值
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@name",model.name),
                new SqlParameter("@pwd",model.pwd),
            };
            //定义查询sql
            string sql2 = "select * from cc where name=@name";
            //查询所需的参数
            SqlParameter[] sqlpar2 = new SqlParameter[]
             {
                 new SqlParameter("@name",model.name),
             };

            int num = 0;
            //执行查询判断是否存在相同值
            object cx = DBhelp.select(sql2, sqlpar2);
            if (cx!=null)
            {
                //返回一个数字(任意数字即可，前台判断所用)
                return num = 66;
            }
            //执行添加语句
            num = DBhelp.Notquery(sql, sqlpar);
            return num;
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int Update(loginModel model)
        {
            //定义sql
            string sql = "update cc set name=@name,pow=@pwd where id=@id";
            //存储参数
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                 new SqlParameter("@id",model.id),
                new SqlParameter("@name",model.name),
                new SqlParameter("@pwd",model.pwd),
            };
            //执行
            int num = DBhelp.Notquery(sql, sqlpar);
            return num;
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int delete(loginModel model)
        {
            //定义sql
            string sql = "update cc set zt=1 where id=@id";
            //修改所需的参数
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                 new SqlParameter("@id",model.id),
            };
            //执行
            int num = DBhelp.Notquery(sql, sqlpar);
            return num;
        }
    }
}
