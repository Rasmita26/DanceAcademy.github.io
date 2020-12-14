using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("Select * from contact", con);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
}