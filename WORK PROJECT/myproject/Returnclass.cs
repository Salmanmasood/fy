using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace myproject
{
    public class Returnclass
    {

        private string connstring = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;

        public string scalarReturn(string q)
        {
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            SqlCommand cmd = new SqlCommand(q, conn);
            string s = cmd.ExecuteScalar().ToString();
            return s;

        }// method end..................

       

    }
}