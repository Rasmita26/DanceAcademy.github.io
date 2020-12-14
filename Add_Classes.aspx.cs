using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Classes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillddl();
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select max(classId) from add_classes", con);
        con.Open();
        object p = cmd1.ExecuteScalar();
        con.Close();
        if (p == DBNull.Value)
        {
            txt_cid.Text = "C0001";
        }
        else
        {
            txt_cid.Text = Generate(p);
        }
    }
    public void fillddl()
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select classId from add_classes", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_search.DataTextField = "classId";
            ddl_search.DataSource = dt;
            DataBind();
            con.Close();
        }
    }
    public void clear()
    {
        txt_cid.Text = "";
        txt_name.Text = "";
        txt_duration.Text = "";
        txt_fee.Text = "";
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
            s = (s + "C");
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

    protected void btn_cadd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile != null)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Save files to disk
            FileUpload1.SaveAs(Server.MapPath("img/" + FileName));
            string pic = "img/" + FileName;

            //Add Entry to DataBase
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            string str = "insert into add_classes(classId,classname,duration,fees,photo) values('" + txt_cid.Text + "','" + txt_name.Text + "','" + txt_duration.Text + "','" + txt_fee.Text + "','" + ("img/" + FileName) + "') ";
            SqlCommand cmd = new SqlCommand(str, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblout.Visible = true;
                this.lblout.Text="Class Added Successfully!!!!";
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
    protected void btn_cedit_Click(object sender, EventArgs e)
    {
        try
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "update add_classes set photo='" + ("img/" + FileName) + "',classname='" + txt_name.Text + "',duration='" + txt_duration.Text + "',fees='" + txt_fee.Text + "' where classId='" + ddl_search.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblout.Visible = true;
            this.lblout.Text="Record update Successfully";
            clear();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void btn_cdelete_Click(object sender, EventArgs e)
    {
        try
        {
            fillddl();
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            SqlCommand cm = new SqlCommand("delete from add_classes where classId='" + ddl_search.Text + "'", con);
            cm.ExecuteNonQuery();
            con.Close();
          lblout.Visible = true;
          this.lblout.Text = "Record Deleted Successfully";
            clear();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btn_cview_Click(object sender, EventArgs e)
    {
        Response.Redirect("Classes.aspx");
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "select * from add_classes where classId='" + ddl_search.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txt_cid.Text = rd["classId"].ToString();
                txt_name.Text = rd["classname"].ToString();
                txt_duration.Text = rd["duration"].ToString();
                txt_fee.Text = rd["fees"].ToString();
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}