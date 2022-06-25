<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>FarmDoc.</title>
    <style>
        .navbar{
            background-color: rgb(0, 0, 0);
        }
        .navbar a{
            color: aliceblue;
        }
        
        
        table{
            margin: auto;
            width : 50%;
            color:rgb(0, 0, 0);
        }
        body{
            background-color: rgb(252, 245, 220);
        }

        .auto-style1 {
            height: 30px;
        }

        .auto-style2 {
            width: 77%;
        }
        .auto-style3 {
            width: 343px;
        }

        </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="IMAGE/logo farm.png" alt="" width="100" height="auto">
              </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="#">Home</a>
              <a class="nav-link" href="#">Take Number</a>
              <a class="nav-link" href="#">About Us</a>
            </div>
          </div>
        </div>
      </nav>
    <form runat="server">
    <div>
          <table class="auto-style2" style="padding-top">  
    <tr>  
        <td colspan="2">  
            <h1 class="auto-style3">Tambah Data Client</h1>  
        </td>  
    </tr>  
    <tr>  
        <td>Nama_Pemilik</td>  
        <td>:</td>  
        <td>  
            <asp:TextBox ID="pemilik" runat="server" Width="341px"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>Hewan</td>  
        <td>:</td>  
        <td>  
            <asp:TextBox ID="txtEmpFname" runat="server" Width="342px"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td class="auto-style1">No_hp</td>  
        <td class="auto-style1">:</td>  
        <td class="auto-style1">  
            <asp:TextBox ID="txtEmpLname" runat="server" Width="343px"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>Gejala</td>  
        <td>:</td>  
        <td>  
            <asp:TextBox ID="txtEmpEmail" runat="server" Width="343px"></asp:TextBox>  
        </td>  
    </tr>
         <tr>  
        <td>ID</td>  
        <td>:</td>  
        <td>  
            <asp:TextBox ID="TextID" runat="server" Width="341px"></asp:TextBox>  
            &nbsp;</td>  
    </tr>  
    <tr>  
        <td colspan="2">  
            <asp:Button ID="btnInsertion" runat="server" Text="Simpan" OnClick="btnInsertion_Click" Width="78px" />
            <asp:Button ID="btnUpdation" runat="server" Text="Perbarui" OnClick="btnUpdation_Click" />
            <asp:Button ID="btnDeletion" runat="server" Text="Delete" OnClick="btnDeletion_Click" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>  
        </td>  
    </tr>  
    </table>  
    </div>
    <table>  
    <tr>  
        <td>  
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Data Client</h1>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Button ID="btnSelect" runat="server" Text="Select All Data" OnClick="btnSelect_Click" />  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="727px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>  
        </td>  
    </tr>  
</table>  
    </form>
      <footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4 pb-0">
    <!-- Section: Social media -->
    <section class="mb-4 navbar-fixed-bottom">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2022 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">pboasikbanget</a>
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>
