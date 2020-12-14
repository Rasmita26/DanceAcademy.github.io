using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClassesPayroll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_id.Text = Request.Cookies["cid"].Value;
        txt_name.Text = Request.Cookies["cname"].Value;
        txt_description.Text = Request.Cookies["cdesc"].Value;
        txt_price.Text = Request.Cookies["cprice"].Value;

        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select max(EnrollId) from ClassesPayroll", con);
        con.Open();
        object p = cmd1.ExecuteScalar();
        con.Close();
        if (p == DBNull.Value)
        {
            txt_orderid.Text = "D0001";
        }
        else
        {
            txt_orderid.Text = Generate(p);
        }
    }
    public string Generate(object p)
    {
        int temp;
        string strno, Generate1;
        int intno;
        string s;
        strno = ((string)(p));
        s = strno.Substring(0, 1);
        if ((strno.Length > 5))
        {
            s = (s + "D");
        }
        intno = int.Parse(strno.Substring((strno.Length - 4)));
        intno = (intno + 1);
        temp = int.Parse(strno.Substring((strno.Length - 4)));
        if ((temp >= 999))
        {
            Generate1 = (s + intno.ToString());
        }
        else if ((temp >= 99))
        {
            Generate1 = (s + ("0" + intno.ToString()));
        }
        else if ((temp >= 9))
        {
            Generate1 = (s + ("00" + intno.ToString()));
        }
        else
        {
            Generate1 = (s + ("000" + intno.ToString()));
        }
        return Generate1;
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        panel1.Visible = false;
        panel2.Visible = true;
    }
    protected void btn_finish_Click(object sender, EventArgs e)
    {
        try
        {
            String uname = Request.Cookies["username"].Value;
            String cid = Request.Cookies["cid"].Value;
            String add = Request.Cookies["add"].Value;
            SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            SqlCommand cm = new SqlCommand("Insert into ClassesPayroll values('" + txt_orderid.Text + "','" + cid + "','" + uname + "','" + add + "','" + txt_creditname.Text + "','" + ddl_cardtype.SelectedValue + "','" + txt_price.Text + "')", con);
            cm.ExecuteNonQuery();
            con.Close();
            lblex.Visible = true;
            lblex.Text = "Payment Completed Successfully";
        }
        catch (Exception ext)
        {
            lblex.Visible = true;
            lblex.Text = "Seems That you are not logged in.Please Login to Continue";
        }
    }
}