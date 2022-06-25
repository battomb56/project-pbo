using System;
using System.Data;
using Npgsql;

public partial class login : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=pbo project;Password=evan1234"))
        {
            NpgsqlCommand cmd = new NpgsqlCommand("select * from akun where username=@username and password=@password", conn);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            NpgsqlDataAdapter sda = new NpgsqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                ceklbl.Text = "Your username and word is incorrect";
                ceklbl.ForeColor = System.Drawing.Color.Red;

            }

        }
    }
}
