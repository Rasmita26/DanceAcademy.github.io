using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillddl();
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select max(eventId) from add_event", con);
        con.Open();
        object p = cmd1.ExecuteScalar();
        con.Close();
        if (p == DBNull.Value)
        {
            txt_id.Text = "E0001";
        }
        else
        {
            txt_id.Text = Generate(p);
        }
    }
    public void clear()
    {
        txt_id.Text = "";
        txt_event.Text = "";
        txt_performer.Text = "";
        txt_date.Text = "";
        txt_time1.Text = "";
        txt_time3.Text = "";
        txt_venue.Text = "";
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
            s = (s + "E");
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
    
    protected void btn_search_Click(object sender, EventArgs e)
    {
        
    }
    protected void btn_addevent_Click(object sender, EventArgs e)
    {
        fillddl();
        if (FileUpload1.PostedFile != null)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Save files to disk
            FileUpload1.SaveAs(Server.MapPath("img/" + FileName));
            string pic = "img/" + FileName;

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            String frm = txt_time1.Text + " " + ddl_time.SelectedValue;
            String too = txt_time3.Text + " " + ddl_time2.SelectedValue;
            SqlCommand cm = new SqlCommand("Insert into add_event values('" + txt_id.Text + "','" + txt_event.Text + "','" + txt_performer.Text + "','" + ("img/" + FileName) + "','" + Cal.SelectedDate.ToShortDateString() + "','" + frm + "','" + too + "','" + txt_venue.Text + "')", con);
            try
            {
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                lblout.Visible = true;
                this.lblout.Text = "Add Event Successfully";
                clear();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        fillddl();
        try
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            String frm = txt_time1.Text + " " + ddl_time.SelectedValue.ToString();
            String too = txt_time3.Text + " " + ddl_time2.SelectedValue.ToString();
            SqlCommand cm = new SqlCommand("update add_event set eventname='" + txt_event.Text + "',performer='" + txt_performer.Text + "',Image='" + ("img/" + FileName) + "',date='" + Cal.SelectedDate.ToShortTimeString() + "',frm='" + frm + "',too='" + too + "',venue='" + txt_venue.Text + "' where eventId='" + ddl_search.Text + "'", con);
            cm.ExecuteNonQuery();
            con.Close();
            lblout.Visible = true;
          this.lblout.Text ="Record update Successfully";
          clear();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        fillddl();
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
        con.Open();
        String frm = txt_time1.Text + " " + ddl_time.SelectedValue;
        String too = txt_time3.Text + " " + ddl_time2.SelectedValue;
        SqlCommand cm = new SqlCommand("delete from add_event where eventId='" + ddl_search.Text + "'", con);
        cm.ExecuteNonQuery();
        con.Close();
        lblout.Visible = true;
        this.lblout.Text = "Record deleted Successfully!!";
        clear();
    }
    public void fillddl()
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select eventId from add_event", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_search.DataTextField = "eventId";
            ddl_search.DataSource = dt;
            DataBind();
            con.Close();
        }
    }
    protected void btn_view_Click(object sender, EventArgs e)
    {
        Response.Redirect("Event.aspx");
    }
    protected void Cal_SelectionChanged(object sender, EventArgs e)
    {
        txt_date.Text = Cal.SelectedDate.ToShortDateString();
    }
    protected void ddl_search_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddl_search_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "select * from add_event where eventId='" + ddl_search.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                txt_id.Text = rd["eventId"].ToString();
                txt_event.Text = rd["eventname"].ToString();
                txt_performer.Text = rd["performer"].ToString();
                txt_date.Text = rd["date"].ToString();
                txt_time1.Text = rd["frm"].ToString();
                txt_time3.Text = rd["too"].ToString();
                txt_venue.Text = rd["venue"].ToString();
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
