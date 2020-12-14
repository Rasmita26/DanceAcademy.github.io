using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("Insert into contact values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_comment.Text + "')", con);
        cm.ExecuteNonQuery();
        con.Close();
        Response.Write("you have submitted succssfully");
    }
}