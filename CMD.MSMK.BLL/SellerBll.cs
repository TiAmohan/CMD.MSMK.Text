using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.BLL
{
  public  class SellerBll
    {
        //查询全部
        public static List<SellerProductModel> select()
        {
            return Seller.select();
        }
        }
}
