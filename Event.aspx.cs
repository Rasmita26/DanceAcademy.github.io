using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        SqlCommand cm = new SqlCommand("Select * from add_event", con);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //GridView1.DataSourceId = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String eventid = "", eventname = "", performer = "", price = "";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (GridView1.SelectedIndex == i)
            {

                eventid = GridView1.Rows[i].Cells[0].Text;
                eventname = GridView1.Rows[i].Cells[2].Text;
                performer = GridView1.Rows[i].Cells[3].Text;
                price = GridView1.Rows[i].Cells[4].Text;
            }
        }
        HttpCookie eid = new HttpCookie("eid");
        HttpCookie ename = new HttpCookie("ename");
        HttpCookie eperformer = new HttpCookie("eperformer");
        // HttpCookie eprice = new HttpCookie("eprice");
        eid.Value = eventid;
        ename.Value = eventname;
        eperformer.Value = performer;
        //eprice.Value = price;
        Response.Cookies.Add(eid);
        Response.Cookies.Add(ename);
        Response.Cookies.Add(eperformer);
        // Response.Cookies.Add(eprice);
        Response.Redirect("EventPayroll.aspx");
    }
}