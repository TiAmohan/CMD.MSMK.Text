using CMD.MSMK.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMD.MSMK.Admin.Pluponform
{
    public partial class Analyze : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //人数统计
           lab_buyer.Text= Convert.ToString( BllAnalyze.selectUsergrade(lab_buyer.Text));
            lab_seller.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_seller.Text));
            lab_supplier.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_supplier.Text));
            lab_headcount.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_headcount.Text));

            //订单统计
            lab_notdispatched.Text= Convert.ToString(BllAnalyze.selectList(lab_notdispatched.Text));
            //lab_hump.Text = Convert.ToString(BllAnalyze.selectList(lab_hump.Text));
            lab_dispatched.Text = Convert.ToString(BllAnalyze.selectList(lab_dispatched.Text));
            lab_Completed.Text = Convert.ToString(BllAnalyze.selectList(lab_Completed.Text));
            lab_alteration.Text = Convert.ToString(BllAnalyze.selectList(lab_alteration.Text));
            lab_countorder.Text = Convert.ToString(BllAnalyze.selectList(lab_countorder.Text));
        }
    }
}