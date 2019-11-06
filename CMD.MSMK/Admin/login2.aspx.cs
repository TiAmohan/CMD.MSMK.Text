using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMD.MSMK.Admin
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Object obj = BllUsers.Userslogin(username.Text, password.Text);
            MODELUsers model = BllUsers.UsersloginID(Convert.ToInt32(obj));
            if (model.Usergrade == 1)
            {
                Response.Redirect("~/user/home-page.aspx");
            }
            if (model.Usergrade == 2)
            {
                Response.Redirect("~/Admin/login.aspx");
            }

        }
    }
}