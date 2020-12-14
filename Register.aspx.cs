using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        panel1.Visible = false;
        panel2.Visible = true;
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        panel2.Visible = false;
        panel1.Visible = true;
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        String var1, var2;

        if (ddl_title.SelectedValue == "Mr.")
        {
            var1 = "Mr.";
        }
        else if (ddl_title.SelectedValue == "Ms.")
        {
            var1 = "Ms.";
        }
        else
        {
            var1 = "Mrs.";
        }
        if (RadioButtonList1.SelectedValue == "Male")
        {
            var2 = "Male";
        }
        else
        {
            var2 = "Female";
        }


        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("Insert into register values('" + var1 + "','" + txt_name.Text + "','" + txt_add.Text + "','" + txt_email.Text + "','" + var2 + "','" + txt_age.Text + "','" + ddl_security.SelectedValue + "','" + txt_ans.Text + "', '" + txt_username.Text + "','" + txt_pass.Text + "','" + txt_cpass.Text + "')", con);
        cm.ExecuteNonQuery();
        con.Close();
        lblout.Visible = true;
       this.lblout.Text="You have successfully Registered!!!";
        Response.Redirect("Login.aspx");

    }
}