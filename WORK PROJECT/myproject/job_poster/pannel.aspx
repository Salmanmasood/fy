<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pannel.aspx.cs" Inherits="myproject.job_poster.pannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>

    <style>

 body{
     margin:0 auto;
     padding:0px;
     background-color:#808080;
 }
 #wrapper{
        
     margin:0 auto;
     padding:0px;
    
     width:80%;
     height:auto;
 
 }      
  header
  {
     background-color:#ffd800;
     width:100%;
     height:100px;
     background-image:url('../img/registration_banner_img.png');
     background-size:100% 100px ;
 
      }
  #contentofbody {
  
   
     width:100%;
     height:auto;
       
  
  }
 


        
   </style>
      <link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
    <form id="form1" runat="server">
    <div id="wrapper">
    
        <header></header>
        <div id="contentofbody">

            <div class="col-lg-3" style="height:100%;border:1px solid black">


            </div>

            <div class="col-lg-9" style="height:100%;border:1px solid black">




                  <div class="form-group"  style="padding-top:40px;">
      <label>Comapny Name</label>

                <div class="col-lg-12">

                    <div class="col-lg-8"><asp:TextBox ID="txt_companyname" runat="server" Class="form-control" required="required" placeholder="Company Name"></asp:TextBox></div>
                    
                    


                </div>



            </div>



                <div class="form-group" style="padding-top:40px;">
      <label>Company Description</label>

                <div class="col-lg-12" >

                    <div class="col-lg-8"><asp:TextBox ID="txt_description" runat="server" Class="form-control" required="required" placeholder="Company Description" TextMode="MultiLine"></asp:TextBox></div>


                </div>



            </div>

                <br />
                <br />


<div class="form-group" style="padding-top:40px;">
      <label for="pwd">Upload Picture:</label>
              
          </div>


                   <div class="form-group"  style="padding-top:40px;">
      <label>Job Title</label>

                <div class="col-lg-12">

                    <div class="col-lg-8"><asp:TextBox ID="txtjob_title" runat="server" Class="form-control" required="required" placeholder="Company Name"></asp:TextBox></div>
                    
                    


                </div>



            </div>

                
                <div class="form-group" style="padding-top:40px;">
      <label>Job Description</label>

                <div class="col-lg-12" >

                    <div class="col-lg-8"><asp:TextBox ID="txt_job_desc" runat="server" Class="form-control" required="required" placeholder="Company Description" TextMode="MultiLine"></asp:TextBox></div>


                </div>



            </div>



                
                   <div class="form-group"  style="padding-top:40px;">
      <label>Job Title</label>

                <div class="col-lg-12">

                    <div class="col-lg-8"><asp:TextBox ID="TextBox1" runat="server" Class="form-control" required="required" placeholder="Company Name"></asp:TextBox></div>
                    
                    


                </div>



            </div>



                  <div class="form-group">
      <label for="usr">Functional Area</label>
               <asp:DropDownList ID="ddlfunctionalarea" runat="server" Class="form-control">
                   <asp:ListItem>Software</asp:ListItem>
                   <asp:ListItem>Hardware</asp:ListItem>
                   <asp:ListItem>Networking</asp:ListItem>
               </asp:DropDownList>
   
                       </div>

                 <div class="form-group">
      <label for="pwd">What Sort of Job U want :</label>
               <asp:DropDownList ID="ddljobsort" runat="server" Class="form-control">
                   <asp:ListItem>Programming</asp:ListItem>
                   <asp:ListItem>non Programming</asp:ListItem>
                 </asp:DropDownList>
              
          </div>




                       <div class="form-group">
      <label for="pwd">Which Area You want to work In :</label>
               <asp:DropDownList ID="ddlcitywork" runat="server" Class="form-control">
                   <asp:ListItem>NoRTH kARACHI</asp:ListItem>
                   <asp:ListItem>Shah rA E FAISAL</asp:ListItem>
                   <asp:ListItem>Nazimabad</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


                   <div class="form-group">
      <label for="pwd">Country :</label>
               <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control">
                   <asp:ListItem>Pakistan</asp:ListItem>
                   <asp:ListItem>India</asp:ListItem>
                   <asp:ListItem>U.k</asp:ListItem>
                 </asp:DropDownList>
              
          </div>


              <div class="form-group">
      <label for="pwd">City :</label>
               <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control">
                   <asp:ListItem>Karachi</asp:ListItem>
                   <asp:ListItem>Lahore</asp:ListItem>
                   <asp:ListItem>Islamabad</asp:ListItem>
                 </asp:DropDownList>
              
          </div>












                  <div class="form-group" style="padding-top:40px;">
      
         <div class="col-lg-4"> <asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Button" OnClick="Button4_Click" />
            </div>
              <div class="col-lg-4">
                  <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

                  </div>
          </div>











































            </div>




        </div>
       


    </div>
    </form>
</body>
</html>
