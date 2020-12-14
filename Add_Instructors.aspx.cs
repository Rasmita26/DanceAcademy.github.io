using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Instructors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlfill();
        SqlConnection con = new SqlConnection("Data Source=LENOVO-PC/MSSQLSERVER1;Initial Catalog=Dance_Web;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select max(id) from add_instructors", con);
        con.Open();
        object p = cmd1.ExecuteScalar();
        con.Close();
        if (p == DBNull.Value)
        {
            txt_id.Text = "F0001";
        }
        else
        {
            txt_id.Text = Generate(p);
        }
    }
    public void clear()
    {
        txt_id.Text = "";
        drp_title.Text = "";
        txt_fname.Text = "";
        txt_mname.Text = "";
        txt_lname.Text = "";
        txt_experience.Text = "";
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
            s = (s + "F");
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
    protected void drp_search_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
        if (FileUpload1.PostedFile != null)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Save files to disk
            FileUpload1.SaveAs(Server.MapPath("img/" + FileName));
            string pic = "img/" + FileName;

            //Add Entry to DataBase

            string str = "insert into add_instructors(id, photo,title,Fname,Mname,Lname,experience) values('" + txt_id.Text + "','" + ("img/" + FileName) + "','" + drp_title.SelectedValue + "','" + txt_fname.Text + "','" + txt_mname.Text + "','" + txt_lname.Text + "','" + txt_experience.Text + "') ";
            SqlCommand cmd = new SqlCommand(str, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
              lblout.Visible = true;
          this.lblout.Text = "Instructor Added Successfully!!!!";
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
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        try
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "update add_instructors set photo='" + ("img/" + FileName) + "',title='" + drp_title.SelectedValue + "',Fname='" + txt_fname.Text + "',Mname='" + txt_mname.Text + "',Lname='" + txt_lname.Text + "',experience='" + txt_experience.Text + "' where id='" + drp_search.SelectedValue.ToString() + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblout.Visible = true;
          this.lblout.Text = "Record update Successfully";
            clear();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "delete add_instructors where id='" + drp_search.SelectedValue.ToString() + "' ";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
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
    public void ddlfill()
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "select * from add_instructors";
            SqlCommand cmd = new SqlCommand(str, con);

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            drp_search.DataTextField = "id";
            drp_search.DataSource = dt;
            drp_search.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btn_view_Click(object sender, EventArgs e)
    {
        Response.Redirect("Instructors.aspx");
    }
    
    protected void drp_search_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Dance_Web;Integrated Security=True");
            con.Open();
            string str = "select * from add_instructors where id='" + drp_search.SelectedValue.ToString() + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txt_id.Text = rd["id"].ToString();
                drp_title.SelectedValue = rd["title"].ToString();
                txt_fname.Text = rd["Fname"].ToString();
                txt_mname.Text = rd["Mname"].ToString();
                txt_lname.Text = rd["Lname"].ToString();
                txt_experience.Text = rd["experience"].ToString();
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}