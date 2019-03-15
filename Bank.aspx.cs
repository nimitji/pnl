using System;
using System.Data;
using System.Data.SqlClient;

public partial class Bank : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    SqlDataAdapter objSqlDa1;
    DataTable objDT1;
    protected void Page_Load(object sender, EventArgs e)
    {
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "select AccountNo from bank;";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
        DropDownList1.DataSource = objDT;
        DropDownList1.DataBind();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DDLBank.SelectedIndex == 1)
        {
            Response.Redirect("http://www.bankofindia.co.in/Html/popup_retail.html");
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string query = "select AccountNo from bank where AcccountNo="+DropDownList1.SelectedItem+";";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
       DetailsView1.DataSource = objDT;
       DetailsView1.DataBind();
    }
} 