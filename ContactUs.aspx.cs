using System;
using System.Configuration;
using System.Data;
using System.Text;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Foodora.com
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    SqlDataAdapter da = new SqlDataAdapter("Select * from tblRegistration where Email='" + Session["UserName"] + "'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    txtname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SendEmail();
                Response.Write("<script type=\"text/javascript\">alert('your query sent succsessfully');</script>");
                if (Session["UserName"] == null)
                {   
                    ClearInputs(Page.Controls);
                }
                else
                {
                    txtmessage.Text = string.Empty;
                }
            }
        }
        void ClearInputs(ControlCollection ctrls)
        {
            foreach (Control ctrl in ctrls)
            {
                if (ctrl is TextBox)
                    ((TextBox)ctrl).Text = string.Empty;
                ClearInputs(ctrl.Controls);
            }
        }
        public void SendEmail()
        {
            StringBuilder mailbody = new StringBuilder();
            MailMessage mail = new MailMessage(txtEmail.Text, "welcomeToFoodora@gmail.com");
            mail.Subject = "Contact Us";
            mailbody.Append("Name:-  " + txtname.Text);
            mailbody.Append(Environment.NewLine + Environment.NewLine);
            mailbody.Append("Email:-  " + txtEmail.Text);
            mailbody.Append(Environment.NewLine + Environment.NewLine);
            mailbody.Append("Enquiry:-  " + ddlEnquiry.SelectedItem);
            mailbody.Append(Environment.NewLine + Environment.NewLine);
            mailbody.Append("Message:-  " + txtmessage.Text);

            mail.Body = mailbody.ToString();

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Send(mail);

        }
    }
}