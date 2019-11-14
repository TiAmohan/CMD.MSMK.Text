using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
using System.Data;
using System.Data.SqlClient;

namespace CMD.MSMK.Admin
{
    public partial class Sellerour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////绑定数据源
            //Repeater1.DataSource = BllSproducts.select();
            ////对数据进行绑定
            //Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

    }
}