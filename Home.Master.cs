using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookies = Request.Cookies["LoginNames"];

            if (Session["UserName"] != null)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlDataAdapter da = new SqlDataAdapter("Select * from tblRegistration where Email='" + Session["UserName"] + "'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    ddlLogin.Items.Clear();
                    ddlLogin.Items.Add(ds.Tables[0].Rows[0]["Name"].ToString());
                    ddlLogin.Items.Add(new ListItem() { Value = "Log", Text = "Log out" });
                }
            }
            else
            {
                if (Session["UserName"] == null)
                {
                    Button1.Visible = false;
                }
                else
                {
                    Button1.Visible = true;
                }
            }
        }
        protected void ddlLogin_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlLogin.SelectedValue == "-1")
            {

            }
            else if (ddlLogin.SelectedValue == "1")
            {
                Response.Redirect("https://localhost/Foodora.com/Registration/Signup.aspx");
            }
            else if (ddlLogin.SelectedValue == "2")
            {
                Response.Redirect("https://localhost/Foodora.com/Registration/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Response.Redirect("https://localhost/Foodora.com/Home.aspx");
        }
    }
}
