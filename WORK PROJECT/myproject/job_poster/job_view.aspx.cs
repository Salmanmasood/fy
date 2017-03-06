﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace myproject.job_poster
{
    public partial class job_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            Session["fk_login_id"] = 2010; //dummy value
            
            Returnclass re = new Returnclass();
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

         Label1.Text=re.scalarReturn("select job_title from job_title_tbl where job_fk_jobitle=" + Session["fk_login_id"]);
         jobdesc.Text = re.scalarReturn("select job_desc from job_title_tbl where job_fk_jobitle=" + Session["fk_login_id"]);
      lblcompanyname.Text=re.scalarReturn("select company_name from company_name_tbl where company_login_id_fk=" + Session["fk_login_id"]);
      Label2.Text = re.scalarReturn("select comapany_details from company_name_tbl where company_login_id_fk=" + Session["fk_login_id"]);
      lblfunctionalarea.Text = re.scalarReturn("select job_functional_area from job_title_tbl where job_fk_jobitle=" + Session["fk_login_id"]);
      lblsortjob.Text = re.scalarReturn("select job_sort from job_title_tbl where job_fk_jobitle=" + Session["fk_login_id"]);
      lblcity.Text = re.scalarReturn("select  location_city from company_location_tbl where location_login_id_fk="+Session["fk_login_id"]);
      lblcountry.Text = re.scalarReturn("select  location_country from company_location_tbl where location_login_id_fk=" + Session["fk_login_id"]);







 


            






















        }//load event end...........

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {


                HttpPostedFile postedFile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int fileSize = postedFile.ContentLength;

                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
                {
                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                    string cs = ConfigurationManager.ConnectionStrings["jobportaldb"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("spUploadImage_job_poster", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter paramName = new SqlParameter()
                        {
                            ParameterName = @"Name",
                            Value = filename
                        };
                        cmd.Parameters.Add(paramName);

                        SqlParameter paramSize = new SqlParameter()
                        {
                            ParameterName = "@Size",
                            Value = fileSize
                        };
                        cmd.Parameters.Add(paramSize);

                        SqlParameter paramImageData = new SqlParameter()
                        {
                            ParameterName = "@ImageData",
                            Value = bytes
                        };
                        cmd.Parameters.Add(paramImageData);




                        cmd.Parameters.Add("@inimage_login_id_fk", SqlDbType.Int).Value = Session["fk_comp_id"].ToString();



                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        Response.Redirect("~/job_poster/job_view.aspx");

                    }
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";

                }
            }
            //img insertion.......................................................
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Returnclass rc = new Returnclass();
            string id = rc.scalarReturn("select job_id from job_title_tbl where job_title='"+Label1.Text+"'");
            DELETECLASS dc = new DELETECLASS();
          id=  dc.DELETEMETHOD(id, Label1.Text, "deletejob", "@job_id", "@job_title");
          Response.Write(id);



        }//load


    }
}