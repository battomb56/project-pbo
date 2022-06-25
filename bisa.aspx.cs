using System;
using System.Data;
using Npgsql;

public partial class bisa: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsertion_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=pbo project;Password=evan1234"))
        {

            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Insert into nomer(nama_pemilik,hewan,no_hp,gejala) values(@ID,@Fname,@Lname,@Email)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@ID", pemilik.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Fname", txtEmpFname.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Lname", txtEmpLname.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Email", txtEmpEmail.Text));
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.Close();
            txtEmpEmail.Text = "";
            txtEmpFname.Text = "";
            pemilik.Text = "";
            txtEmpLname.Text = "";
            lblmsg.Text = "Data Has been Saved";
        }
    }

    protected void btnUpdation_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=pbo project;Password=evan1234"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "update nomer set nama_pemilik=@ID,hewan=@Fname,no_hp=@Lname,gejala=@Email where id_nomer=@id_nomer";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@ID", pemilik.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Fname", txtEmpFname.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Lname", txtEmpLname.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@Email", txtEmpEmail.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_nomer", Convert.ToInt32(TextID.Text)));
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.Close();
            txtEmpEmail.Text = "";
            txtEmpFname.Text = "";
            pemilik.Text = "";
            txtEmpLname.Text = "";
            TextID.Text = "";
            lblmsg.Text = "Data Has been Updated";

        }
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=pbo project;Password=evan1234"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Select * from nomer";
            cmd.CommandType = CommandType.Text;
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.Dispose();
            connection.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}