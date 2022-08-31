using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Navbar
{
    public partial class CITFaculty : System.Web.UI.Page
    {
        protected string getPostBackControlName()
        {
            // Function returns the control ID of the one that caused the postback. Needed for the modal popup dialog box.
            Control control = null;
            //first we will check the "__EVENTTARGET" because if post back made by the controls
            //which used "_doPostBack" function also available in Request.Form collection.
            string ctrlname = Page.Request.Params["__EVENTTARGET"];
            if (ctrlname != null && ctrlname != String.Empty)
            {
                control = Page.FindControl(ctrlname);
            }
            // if __EVENTTARGET is null, the control is a button type and we need to
            // iterate over the form collection to find it
            else
            {
                string ctrlStr = String.Empty;
                Control c = null;
                foreach (string ctl in Page.Request.Form)
                {
                    //handle ImageButton they have an additional "quasi-property" in their Id which identifies
                    //mouse x and y coordinates
                    if (ctl.EndsWith(".x") || ctl.EndsWith(".y"))
                    {
                        ctrlStr = ctl.Substring(0, ctl.Length - 2);
                        c = Page.FindControl(ctrlStr);
                    }
                    else
                    {
                        c = Page.FindControl(ctl);
                    }
                    if (c is System.Web.UI.WebControls.Button ||
                             c is System.Web.UI.WebControls.ImageButton)
                    {
                        control = c;
                        break;
                    }
                }
            }
            if (control != null)
                return control.ID.ToString();
            else
                return "";
        }

        protected void loadDetail(SqlConnection cAW)
        {
            string strSQL = "SELECT FacultyID, FullName, Title, OfficePhone, Office, AdvisingArea, Email "
                          + "FROM Faculty "
                          + "ORDER BY Title;";
            SqlCommand command = new SqlCommand(strSQL, cAW);
            SqlDataReader SQLdr = command.ExecuteReader();

            if (SQLdr.HasRows)
            {
                while (SQLdr.Read())
                {
                    TableRow rowSch = new TableRow();
                    tblFaculty.Rows.Add(rowSch);

                    for (int ColNum = 0; ColNum < 5; ColNum++)
                    {
                        TableCell colSch = new TableCell();
                        rowSch.Cells.Add(colSch);
                        colSch.Font.Bold = false;
                        colSch.ColumnSpan = 1;

                        switch (ColNum)
                        {
                            case 0: //Column 1 Professor
                                LinkButton lnkHold1 = new LinkButton();
                                lnkHold1.Text = SQLdr["FullName"].ToString(); 
                                lnkHold1.ID = "lnkEmail_" + SQLdr["FacultyID"].ToString();
                                lnkHold1.OnClientClick = "window.open('" + SQLdr["Email"].ToString() + "','email');";
                                colSch.Controls.Add(lnkHold1);
                                break;
                            case 1://Column 2 title
                                colSch.Text = SQLdr["Title"].ToString();
                                break;
                            case 2: //Column 2 Phone
                                colSch.Text = SQLdr["OfficePhone"].ToString();
                                break;
                            case 3: //Column 3 Office
                                colSch.Text = SQLdr["Office"].ToString();
                                break;
                            case 4: //Column 4 Advising Area
                                colSch.Text = SQLdr["AdvisingArea"].ToString();
                                break;
                        }
                    }
                }
            }
            SQLdr.Close();
            SQLdr.Dispose();
            command.Dispose();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            //Open a connection to the database
            string conStr = ConfigurationManager.ConnectionStrings["conAW2"].ConnectionString;
            SqlConnection conAW2 = new SqlConnection(conStr);
            conAW2.Open();

            if (!IsPostBack)
            {
                //We are loading the page for the first time
                loadDetail(conAW2);
            }
            else
            {
                //We need to find out what control caused the postback
                string ctl = getPostBackControlName();
                switch (ctl)
                {
                    default:
                        loadDetail(conAW2);
                        break;
                }
            }

            //Close the connection to the DB
            conAW2.Close();
            conAW2.Dispose();

        }
    }
}