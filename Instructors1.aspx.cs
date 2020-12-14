using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructors1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        try
        {
            con.Open();
            string str = "select photo, title +' '+ Fname+ ' ' + Mname + ' '+ Lname as name,experience from add_instructors";
            //string str = "select photo, title +' '+ Fname as name , nickName,Designation,experience from add_faculty";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            //cmd.ExecuteNonQuery();
            grid1.DataSource = dt;
            grid1.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}