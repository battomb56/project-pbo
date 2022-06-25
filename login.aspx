<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>FarmDoc.</title>
    <style>
        .btn-color{
  background-color: #0e1c36;
  color: #fff;
  
}

.profile-image-pic{
  height: 200px;
  width: 200px;
  object-fit: cover;
}



.cardbody-color{
  background-color: #ebf2fa;
}

a{
  text-decoration: none;
}
    </style>
</head>
<body>
    <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <h2 class="text-center text-dark mt-5">LOGIN ADMIN</h2>
        <div class="card my-5">

            <form id="form1" runat="server">

            <div class="text-center">
              <img src="IMAGE/login baru.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="profile">
            </div>
            <div class="tengah" style="text-align:center">
                 <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <div class="mb-3">
              &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <div class="mb-3">
              &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                
            </div>
            </div>
           
            <div class="text-center">

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <asp:Label ID="ceklbl" runat="server" Text=""/>
            </div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Not
              Registered? <a href="#" class="text-dark fw-bold"> Create an
                Account</a>
            </div>
            </form>
        </div>

      </div>
    </div>
  </div>
</body>
