using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace myproject
{
    public partial class viewjobsbyallusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["job_id"] =Request.QueryString["view"].ToString();

            Returnclass re = new Returnclass();

            Session["fk_login_id"] = re.scalarReturn("select job_fk_jobitle from job_title_tbl where job_id=" + ViewState["job_id"]);

            Session["fk_comp_id"] = re.scalarReturn("select company_id from company_name_tbl where company_login_id_fk=" + Session["fk_login_id"]);
            string s = re.scalarReturn("select max(id) from tblImages_job_posterlogin_info where inimage_login_id_fk=" + Session["fk_comp_id"].ToString());
            if (s != "")
            {

                Image1.Visible = false;
                Image2.Visible = true;


                Returnclass ob = new Returnclass();

                ViewState["imageid"] = ob.scalarReturn("select max(id) from tblImages_job_posterlogin_info where inimage_login_id_fk=" + Session["fk_comp_id"]);

                string cs = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("sp_posterGetImageById", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramId = new SqlParameter()
                    {
                        ParameterName = "@Id",
                        Value = ViewState["imageid"].ToString()
                    };
                    cmd.Parameters.Add(paramId);

                    SqlParameter paramif_fk = new SqlParameter()
                    {
                        ParameterName = "@inimage_login_id_fk",
                        Value = Session["fk_comp_id"].ToString()
                    };
                    cmd.Parameters.Add(paramif_fk);


                    con.Open();

                    byte[] bytes = (byte[])cmd.ExecuteScalar();
                    string strBase64 = Convert.ToBase64String(bytes);
                    Image2.ImageUrl = "data:Image/png;base64," + strBase64;

                }

            }

            //if end here ...........................

            else
            {

                Image2.Visible = false;
                Image1.Visible = true;


            } //else end......................














        }



        public void showfields()
        {
            Returnclass rc = new Returnclass();
            Label1.Text = rc.scalarReturn("select job_title from job_title_tbl where job_id=" + ViewState["job_id"].ToString());
            Label2.Text = rc.scalarReturn("select job_desc from job_title_tbl where job_id=" + ViewState["job_id"].ToString());



        }













    }
}