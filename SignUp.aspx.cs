using System;
using System.Data;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    SqlDataAdapter objSqlDa1;
    DataTable objDT1;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "insert into Company(Name, MailingAddress,Country,State,Pin,Phone,Mobile,fax,EmailId,Website,CurrencySymbol,YearStartFrom,Password)values('" + txtname.Text + "','" + txtaddress.Text + "','" + ddlcountry.SelectedItem + "','" + ddlstate.SelectedItem + "','" + ddlpin.Text + "'," + txtphone.Text + "," + txtmobile.Text + "," + txtfax.Text + ",'" + txtemail.Text + "','" + txtweb.Text + "','" + txtcurrecy.SelectedItem + "','" + txtyear.Text + "','" + txtpass.Text + "');";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
        
        
        string query1 = "select CompanyId From company where name='" + txtname.Text + "';";
        objSqlDa1 = new SqlDataAdapter(query1, objSqlcon);
        objDT1 = new DataTable();
        objSqlDa1.Fill(objDT1);
        if (objDT1.Rows.Count > 0)
        {
            lblmessage.Text = "your comapany is registerd with ID" + objDT1.Rows[0][0].ToString();
        }
        else
        {
            lblmessage.Text = "your registration is not completed please try again later after some time";
        }
    }
}