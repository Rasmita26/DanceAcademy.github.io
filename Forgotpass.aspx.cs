using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Forgotpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        string ques = "", ans = "", pass = "";
        //SqlCommand cmd = new SqlCommand("select * from register");
        SqlCommand cmdchk = new SqlCommand("select * from register where email='" + txt_email.Text + "'", con);
        SqlDataReader pdchk = cmdchk.ExecuteReader();
        while (pdchk.Read())
        {
            ques = (pdchk["security"].ToString());
            ans = (pdchk["ans"].ToString());
            pass = (pdchk["password"].ToString());
        }
        if (ques == ddl_security.SelectedValue && ans == txt_ans.Text)
        {
            labelpass.Text = pass;

        }
    }

}