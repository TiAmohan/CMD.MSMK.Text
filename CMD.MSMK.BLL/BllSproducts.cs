using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.BLL
{
  public  class BllSproducts
    { //查询整表
        public List<ModelSproduct> SproductList()
        {
            return DalSproduct.SproductList();
        }
        }
}
