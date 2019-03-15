using System;
using System.Data;
using System.Data.SqlClient;

public partial class ForgetPass : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    string Query;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    private void connection()
    {
     objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
    objSqlDa = new SqlDataAdapter(Query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
    
    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        Query = "select password,Mobile,CompanyId,Name from company where CompanyId=" + txtUserId.Text + "";
        connection();

        if (objDT.Rows[0][1].ToString() == txtMobile.Text && objDT.Rows[0][2].ToString() == txtUserId .Text)
        {
            lblmessage.Text = "Change Your Password";
            txtNewPass.Visible = true;
            txtRePass.Visible = true;
            lblNewPass.Visible = true;
            lblRePass.Visible = true;
            txtUserId.Enabled = false;
            txtPassword.Enabled = false;
            txtMobile.Enabled = false;

           


        } 
           else
            {
                lblmessage.Text = "Invalid Credentials ";
            }



        }

    

   

    protected void btnchange_Click(object sender, EventArgs e)
    {
        if (txtNewPass.Text == txtRePass.Text)
        {

            Query = "update company set password ='" + txtNewPass.Text + "' where CompanyId=" + txtUserId.Text + "";
            connection();
            txtUserId.Text = "";
            txtRePass.Text="";
            txtPassword.Text="";
            txtMobile.Text = "";
            txtNewPass.Text = "";

           

                lblmessage.Text = "Password Changed successfully";
               Response.Redirect("Login.aspx");

            
        }
    
    }
}