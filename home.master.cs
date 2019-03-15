using System;


public partial class home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void lnlSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
}
