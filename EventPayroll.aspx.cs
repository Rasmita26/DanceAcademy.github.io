using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventPayroll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_eventid.Text = Request.Cookies["eid"].Value;
        txt_eventname.Text = Request.Cookies["ename"].Value;
        txt_performer.Text = Request.Cookies["eperformer"].Value;
        // txt_price.Text = Request.Cookies["eprice"].Value;
        txt_price.Text = "1000";
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select max(bookingId) from eventpayroll", con);
        con.Open();
        object p = cmd1.ExecuteScalar();
        con.Close();
        if (p == DBNull.Value)
        {
            txt_bookingid.Text = "B0001";
        }
        else
        {
            txt_bookingid.Text = Generate(p);
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
            s = (s + "B");
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
    protected void btn_next_Click(object sender, EventArgs e)
    {
        panel1.Visible = false;
        panel2.Visible = true;
        int value = Int32.Parse(txt_qty.Text) * Int32.Parse(txt_price.Text);
        txt_total.Text = Convert.ToString(value);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        panel2.Visible = false;
        panel1.Visible = true;
    }
    protected void Unnamed4_Click(object sender, EventArgs e)
    {
        panel2.Visible = false;
        panel3.Visible = true;
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        panel3.Visible = false;
        panel2.Visible = true;
    }
    protected void btn_finish_Click(object sender, EventArgs e)
    {
        try
        {
            String uname = Request.Cookies["username"].Value;
            String eid = Request.Cookies["eid"].Value;
            String add = Request.Cookies["add"].Value;

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            SqlCommand cm = new SqlCommand("Insert into eventpayroll values('" + txt_bookingid.Text + "','" + txt_eventid.Text + "','" + uname + "','" + add + "','" + txt_creditname.Text + "','" + ddl_cardtype.SelectedValue + "','" + txt_qty.Text + "','" + txt_total.Text + "')", con);
            cm.ExecuteNonQuery();
            con.Close();
            //    Response.Write(@"<script language='javascript'>alert('Your Payment was Sucessfull');</script>");
            lblex.Visible = true;
            lblex.Text = "Payment Completed Successfully";

        }
        catch (Exception ext) 
        {
            lblex.Visible = true;
            lblex.Text = "Seems That you are not logged in.Please Login to Continue";
        }
    }
    protected void txt_qty_TextChanged(object sender, EventArgs e)
    {

    }
}