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
    public partial class ClassSearch : System.Web.UI.Page
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

        protected void loadTerm(SqlConnection cAW)
        {
            string strSQL = "SELECT DISTINCT TERM FROM SCHEDULE ORDER BY TERM;";
            SqlCommand command = new SqlCommand(strSQL, cAW);
            SqlDataReader SQLdr = command.ExecuteReader();

            if (SQLdr.HasRows)
            {
                while (SQLdr.Read())
                {
                    dlTerm.Items.Insert(dlTerm.Items.Count, new ListItem(SQLdr["TERM"].ToString(), SQLdr["Term"].ToString()));
                }
                dlTerm.SelectedIndex = dlTerm.Items.Count - 1;
            }
            SQLdr.Close();
            SQLdr.Dispose();
            command.Dispose();
        }

        protected void loadProg(SqlConnection cAW)
        {
            dlProg.Items.Clear();
            string strSQL = "SELECT DISTINCT PROG FROM SCHEDULE WHERE TERM = '" + dlTerm.SelectedItem.Value + "' ORDER BY PROG; ";
            SqlCommand command = new SqlCommand(strSQL, cAW);
            SqlDataReader SQLdr = command.ExecuteReader();

            if (SQLdr.HasRows)
            {
                while (SQLdr.Read())
                {
                    dlProg.Items.Insert(dlProg.Items.Count, new ListItem(SQLdr["PROG"].ToString(), SQLdr["PROG"].ToString()));
                }
                if (dlProg.Items.Count > 0)
                    dlProg.SelectedIndex = 0;
            }
            SQLdr.Close();
            SQLdr.Dispose();
            command.Dispose();
        }
        protected void loadDetail(SqlConnection cAW)
        {
            if (dlProg.SelectedItem.Value != "")
            {
                //A Program has been selected
                string strSQL = "SELECT SCHOOL, CRN, PROG, COURSENUM, COURSESECTION, COURSE, ENROLLED "
                    + "FROM SCHEDULE WHERE TERM = '" + dlTerm.SelectedItem.Value + "' "
                    + "AND PROG = '" + dlProg.SelectedItem.Value + "' "
                    + "ORDER BY SCHOOL, PROG, COURSENUM, COURSESECTION;";
                SqlCommand command = new SqlCommand(strSQL, cAW);
                SqlDataReader SQLdr = command.ExecuteReader();

                if (SQLdr.HasRows)
                {
                    string SchoolHold = "";
                    while (SQLdr.Read())
                    {
                        TableRow rowSch = new TableRow();
                        tblSchedule.Rows.Add(rowSch);

                        for (int ColNum = 0; ColNum < 5; ColNum++)
                        {
                            TableCell colSch = new TableCell();
                            rowSch.Cells.Add(colSch);
                            colSch.Font.Bold = false;
                            colSch.ColumnSpan = 1;
                            if (ColNum == 0)
                            {
                                //Force a new row after a change in school
                                if (SchoolHold.ToString() != SQLdr["SCHOOL"].ToString()) //New school, need new row
                                {
                                    colSch.Font.Bold = true;
                                    colSch.ColumnSpan = 5;
                                    SchoolHold = SQLdr["SCHOOL"].ToString();
                                    colSch.Text = SchoolHold;

                                    rowSch = new TableRow();
                                    tblSchedule.Rows.Add(rowSch);

                                    colSch = new TableCell();
                                    rowSch.Cells.Add(colSch);
                                    colSch.Font.Bold = false;
                                    colSch.ColumnSpan = 1;
                                }
                            }

                            switch (ColNum)
                            {
                                case 0: //Column 1 CRN
                                    colSch.Text = SQLdr["CRN"].ToString();
                                    break;
                                case 1: //Column 2 Prog
                                    colSch.Text = SQLdr["PROG"].ToString();
                                    break;
                                case 2: //Column 3 Course
                                    colSch.Text = SQLdr["COURSENUM"].ToString()
                                          + "-" + SQLdr["COURSESECTION"].ToString();
                                    break;
                                case 3: //Column 4 Course Name
                                    colSch.Text = SQLdr["COURSE"].ToString();
                                    break;
                                case 4: //Column 5 Enrolled
                                    colSch.Text = SQLdr["ENROLLED"].ToString();
                                    break;
                            }
                        }
                    }
                }
                SQLdr.Close();
                SQLdr.Dispose();
                command.Dispose();
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Open a connection to the database
            string conStr = ConfigurationManager.ConnectionStrings["conAW"].ConnectionString;
            SqlConnection conAW = new SqlConnection(conStr);
            conAW.Open();

            if (!IsPostBack)
            {
                //We are loading the page for the first time
                loadTerm(conAW);
                loadProg(conAW);
                loadDetail(conAW);
            }
            else
            {
                //We need to find out what control caused the postback
                string ctl = getPostBackControlName();
                switch (ctl)
                {
                    case "dlTerm":
                        loadProg(conAW);
                        loadDetail(conAW);
                        break;
                    case "dlProg":
                        loadDetail(conAW);
                        break;
                }
            }

            //Close the connection to the DB
            conAW.Close();
            conAW.Dispose();

        }
    }
}