using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace Foodora.com
{
    public class Logger
    {
        public static void Log(Exception e)
        {
            StringBuilder sb = new StringBuilder();
            do
            {
                sb.Append("Exception Type" + Environment.NewLine);
                sb.Append(e.GetType().Name);
                sb.Append(Environment.NewLine + Environment.NewLine);
                sb.Append("Message" + Environment.NewLine);
                sb.Append(e.Message + Environment.NewLine);
                sb.Append(Environment.NewLine + Environment.NewLine);
                sb.Append("Stack Trace" + Environment.NewLine);
                sb.Append(e.StackTrace + Environment.NewLine);

                e = e.InnerException;
            } while (e != null);
            LogToDB(e.ToString());
        }
        public static void LogToDB(string log)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spInsertLog", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                SqlParameter param = new SqlParameter("@ExceptionMessage", log);
                cmd.Parameters.Add(param);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}