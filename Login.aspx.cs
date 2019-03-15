using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
   

    
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "select password,Mobile,CompanyId,Name from company where CompanyId="+txtUserId.Text+"";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);


        if (objDT.Rows[0][0].ToString() == txtPassword.Text && objDT.Rows[0][1].ToString() ==txtMobile.Text)
        {
            lblmessage.Text = "Login Sucessful";
            Session["Companyname"] = objDT.Rows[0]["Name"].ToString();
            Session["Cid"] = objDT.Rows[0]["CompanyId"].ToString();
            Response.Redirect("afterlogin.aspx");
           
        }
        else
        {
            lblmessage.Text = "Invalid Credentials ";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
{

}
    protected void lnlForgotPass_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgetpass.aspx");
    }
}
