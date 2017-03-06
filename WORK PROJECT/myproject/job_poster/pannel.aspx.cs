using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace myproject.job_poster
{
    public partial class pannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["fk_login_id"] = 2010;
        
        
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Returnclass re = new Returnclass();
            //string q = "select login_id  from job_poster_id where login_email='" + Session["user_post_job"] + "' and login_password='" + Session["password_post_job"] + "' ";
            //Session["fk_login_id"] = re.scalarReturn(q);
            
            bool a, b, c;
            postjobs_insertclass ob = new postjobs_insertclass();
           a= ob.insert_companyname(txt_companyname.Text, txt_description.Text, Session["fk_login_id"].ToString());
           b = ob.insert_location(DropDownList2.SelectedItem.ToString(), DropDownList1.SelectedItem.ToString(), ddlcitywork.SelectedItem.ToString(), Session["fk_login_id"].ToString());
           c = ob.insert_job(txtjob_title.Text, txt_job_desc.Text, ddlfunctionalarea.SelectedItem.ToString(), ddljobsort.SelectedItem.ToString(), Session["fk_login_id"].ToString());

           string s = " ";
           
            if (a==false)
           {
               s = s + "errot at company name";

           }

           if (b == false)
           {
               s = s + "errot at location name";

           }
           if (a == false)
           {
               s = s + "errot at job name";

           }

           Response.Write(s);

        }
    }
}