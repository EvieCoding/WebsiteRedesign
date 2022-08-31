using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navbar
{
    public partial class Sections : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //To stop the user from entering this page if they are not logged in.
            string strValidLogin = "";
            if (Session["VALIDLOGIN"] != null) 
            {
                strValidLogin = Session["VALIDLOGIN"].ToString();
                if (strValidLogin == "false")
                    Response.Redirect("Default.aspx");
            }
            else
                Response.Redirect("Default.aspx");


        }
    }
}