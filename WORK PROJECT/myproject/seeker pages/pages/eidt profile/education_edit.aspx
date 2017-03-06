﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="education_edit.aspx.cs" Inherits="myproject.pages.eidt_profile.education_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link rel="stylesheet" href="css/bootstrap.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
#wrapper{
    margin:0 auto;
    background-color:white;
    width:80%;
    height:auto
        }

body
{
background-color:white;font:"normal 25px 'LucidaGrande';"

}

.menu {
	float:left;
	padding:20px 0 0 0;
	margin:0 0 20px 0;
    background-color:#808080;
    width:100%;
}
.menu ul {
	padding:0px 0 0 0;
}
.menu li {
	list-style:none;
	display:inline;
	padding: 0 15px;
} 
.menu li a {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	padding:10px;
}
.menu li a:hover {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	background:#ffa800;
	padding:10px;
}
.menu #active a {
	text-decoration:none;
	color:#ffffff;
	font-size:14px;
	background:#ffa800;
	padding:10px;
}

p {
font:"normal 25px 'LucidaGrande'";
 }

.list-group li span {
  
font:normal 10px 'LucidaGrande';
}

 #changepro li
{
margin-top:25px; 
}

table {

margin:0 auto; 

 }


td 
{
padding:20px;
font:normal 12px 'LucidaGrande';
}


    </style>



</head>
<body onload="alertapply()">
    <form id="form1" runat="server">
    
        <div  id="wrapper">
    
           <div id="nav" >  <!--Start of navigation bar -->
 
<nav class="navbar navbar-inverse" style="background-color:#808080" >
  
    <div class="container-fluid">
        <div class="navbar-header">
            <p class="navbar-brand">Rozgar.com </p>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Jobs</a></li>

        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>


  


</div> <!--End of navigation bar -->

<div class="col-lg-12" style="height:500px;">
    <img  src="../../../img/cover.jpg" width="100%" height="500px" class="img-responsive"/>
</div>

<div class=" container" style="width:100%">

<div class="col-lg-3" style="height:1000px;background-color:#dfe0e2">


    <div class="container" style="width:100%;" id="changepro">
  <h3>Change Your Profile</h3>
  <p>Select Tab To cahnge your Profile Information</p>
  <ul class="nav nav-pills nav-stacked" >
    <li ><a href="Experience.aspx">Experience</a></li>
    <li class="active"><a href="education_edit.aspx">Education</a></li>
    <li><a href="contact_edit.aspx">Contact Information</a></li>
    <li><a href="personal_edit.aspx">Personal Information</a></li>
  </ul>
</div>



 



</div> <!--1st div of profile -->

<div class="col-lg-9" style="background-color:#dfe0e2;height:1000px;">




    <div style="background-color:white;height:1000px; width:100%;border:1px solid  #808080">

        <img src="../../../img/exper.jpg" style="height:100px;width:100%;" class="img-responsive"/>
 <span>
          
            <input id="Button3" value="Update"  class="btn btn-xs btn-success" type="button" />
  
             </span>
        <span>
               
        <input id="Button4" value="insert"  class="btn btn-xs btn-success" type="button" />
  
                
        </span>      
        
           <table>


    <tr class="es"> <td>Degree Level:</td> <td> <asp:DropDownList ID="DropDownList6" runat="server" Class="form-control" >
        <asp:ListItem Value="1">SSC</asp:ListItem>
        <asp:ListItem Value="2">HSC</asp:ListItem>
        <asp:ListItem Value="3">GRADUATION</asp:ListItem>
        <asp:ListItem Value="4">MASTERS</asp:ListItem>
        <asp:ListItem Value="5">PHD</asp:ListItem>
        </asp:DropDownList>  </td>  </tr>
    <tr class="cs" style="display:none"> <td>Degree Level:</td> <td> <asp:DropDownList ID="DropDownList5" runat="server" Class="form-control" > </asp:DropDownList>  
        </td>  </t>




    <tr> <td>Duration</td> <td>
        <span><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></span>   
        <span><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></span> 
       <b style="font-size:15px"> To </b> 
        <span> <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></span>   
        <span> <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList></span> 
        
                                  </td><td>
                                      <asp:CheckBox ID="CheckBox1" runat="server"  Text="Currently working here" /></td>   </tr>

    <tr> <td>Institution:</td> <td> <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></td> <td>
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="#66FF66"></asp:Label> </td> </tr>

    <tr > <td  >Percentage:</td> <td> <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></td>  </tr>

    
    <tr class="es" > <td></td> <td><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="form-control btn-info" OnClick="Button1_Click" /> </td>  </tr>
            

              
    <tr class="cs" style="display:none"> <td></td> <td><asp:Button ID="Button2" runat="server" Text="Update" CssClass="form-control btn-info" OnClick="Button2_Click"  />

                                                   </td>  </tr>
                    




        </table>
    </div>




</div><!--2nd div of profile -->























    
</div><!--container div  -->



















































   





            </div> <!--container div  -->
















       

       
         <!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p> Theme Made By <a href="theideassolution@gmail.com">Salman Masood</a></p> 
</footer>



    </div> <!--End of wrapper -->


    </form>






       <script>
       $(document).ready(function () {

           $("#Button3").click(function () {
               $(".cs").show();
               $(".es").hide();

           });
       });



       $(document).ready(function () {

           $("#Button4").click(function () {
               $(".es").show();
               $(".cs").hide();

           });
       });



       $(document).ready(function () {

           $("#CheckBox1").click(function () {
               $("#DropDownList3").toggle();
               $("#DropDownList4").toggle();

           });
       });




       function alertapply()
       {
           var val = document.getElementById("Label1").innerText;
           if (val!="")

           {
               alert("Successfully updated profile!");
           }

       }

</script>

</body>
</html>
