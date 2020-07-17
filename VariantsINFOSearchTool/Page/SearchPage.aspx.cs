using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Textsearch(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["testConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainconn);
        sqlconn.Open();
        SqlCommand sqlcomm = new SqlCommand();
        string sqlquery = "select * from [POS] where Subject like '%'+Subject+'%'";
        sqlcomm.CommandText = sqlquery;
        sqlcomm.Connection = sqlconn;
        sqlcomm.Parameters.AddWithValue("Subject", TextBox1.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }

   
}