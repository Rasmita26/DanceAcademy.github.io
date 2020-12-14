using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (txt_username.Text == "Admin" && txt_password.Text == "Admin")
        {
            Response.Redirect("View_Contact.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "select * from register where username='" + txt_username.Text + "' AND password='" + txt_password.Text + "'  ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                HttpCookie username = new HttpCookie("username");
                HttpCookie pass = new HttpCookie("pass");
                username.Value = rd["username"].ToString();
                Response.Cookies.Add(username);
                pass.Value = rd["password"].ToString();
                Response.Cookies.Add(pass);
                HttpCookie add = new HttpCookie("add");
                add.Value = rd["address"].ToString();
                Response.Cookies.Add(add);
                Response.Redirect("Home1.aspx");
            }
        }
    }
}