using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Classes1 : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("Select * from add_classes", con);
        SqlDataAdapter da = new SqlDataAdapter(cm);

        da.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        con.Close();
    }
    protected void grid1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Details")
        {
            if (Request.Cookies["username"] != null)
            {
                Label1.Text = dt.Rows.ToString();
            }
            else
            {
                Response.Write("Please login to Buy Event Ticket!!");
            }
        }
        else
        {
            Response.Write("Sorry!!! Something went wrong");
        }
    }
    protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String id = "", classname = "", desc = "", price = "";
        for (int i = 0; i < grid1.Rows.Count; i++)
        {
            if (grid1.SelectedIndex == i)
            {

                id = grid1.Rows[i].Cells[0].Text;
                classname = grid1.Rows[i].Cells[2].Text;
                desc = grid1.Rows[i].Cells[3].Text;
                price = grid1.Rows[i].Cells[4].Text;
            }
        }
        HttpCookie cid = new HttpCookie("cid");
        HttpCookie cname = new HttpCookie("cname");
        HttpCookie cdesc = new HttpCookie("cdesc");
        HttpCookie cprice = new HttpCookie("cprice");
        cid.Value = id;
        cname.Value = classname;
        cdesc.Value = desc;
        cprice.Value = price;
        Response.Cookies.Add(cid);
        Response.Cookies.Add(cname);
        Response.Cookies.Add(cdesc);
        Response.Cookies.Add(cprice);
        Response.Redirect("ClassesPayroll1.aspx");

    }
}