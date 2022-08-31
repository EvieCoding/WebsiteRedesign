using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Navbar.Classes;

namespace Navbar
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void NavbarSetup(bool showAdminLinks)
        {
            
            if (showAdminLinks)
            {
                //Add a class to hide the dropdown login. Applied to the <a
                navLogin.Attributes["class"] = "invisible";
                //Remove the class attribute invisible from the logout asp linkbutton
                lnkLogout.CssClass = "nav-link";
                mnuSections.Attributes["class"] = "nav-link";
                mlblUser.Text = "Welcome " + Session["EMPNAME"].ToString();
            }
            else
            {
                navLogin.Attributes["class"] = "dropdown-toggle";
                lnkLogout.CssClass = "invisible";
                mnuSections.Attributes["class"] = "invisible";
                mlblUser.Text = "";
            }
            
            
        }
        protected void LoginSetup()
        {
            //Need a test to see if we have a valid username and password
            //Typically this is stored in a DB
            bool bValidLogin = false;
            if (txtUserID.Text.ToString().Trim().ToUpper() == "ADMIN"
                && txtPassword.Text.ToString().Trim() == "ITRocks")
                bValidLogin = true;

            if (bValidLogin)
            {
                Session["USERTYPE"] = "Admin"; //Used if you have differt types
                Session["VALIDLOGIN"] = "true";
                mlblUser.Text = "Welcome " + txtUserID.Text.ToString();
                Session["EMPNAME"] = txtUserID.Text.ToString();

                NavbarSetup(true);
            }
            else
            {
                Session["USERTYPE"] = "";
                Session["VALIDLOGIN"] = "false";
                mlblUser.Text = "";
                Session["EMPNAME"] = "";
                NavbarSetup(false);
                //To make sure we move to the main web page on a logout
                Response.Redirect("Default.aspx");
            }
            //Cleanup the login textboxes
            txtUserID.Text = "";
            txtPassword.Text = "";
        }

        protected void LogoutSetup()
        {
            Session["USERTYPE"] = "";
            Session["VALIDLOGIN"] = "false";
            mlblUser.Text = "";
            Session["EMPNAME"] = "";
            NavbarSetup(false);

            //To make sure we move to the main web page on a logout
            Response.Redirect("Default.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //IsPostback will not work if you are opening a new child page
            //To stop the user from clicking the back button after they leave the page
            //This is not a great solution but it gets the job done
            if (!IsPostBack)
            {
                //kills cache on the back button
                Response.Cache.SetNoStore();
                Response.Cache.AppendCacheExtension("no-cache");
                Response.Expires = 0;
            }

            string strValidLogin = "";

            //Will need to test to see if a session variable VALIDLOGIN to know if you are posting back
            if (Session["VALIDLOGIN"] != null) //A user has already possibly loged in
                strValidLogin = Session["VALIDLOGIN"].ToString();
            if (strValidLogin == "true")
                NavbarSetup(true);
            else
                NavbarSetup(false);

            getPostBackControl FindCtrl = new getPostBackControl();
            string CtrlName = FindCtrl.getPostBackControlName(Page);

            switch (CtrlName)
            {
                case "btnLogin":
                    LoginSetup();
                    break;
                case "lnkLogout":
                    LogoutSetup();
                    break;
            }
        }
    }
}