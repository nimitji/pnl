using System;


public partial class AfterLogin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCname.Text = Session["Companyname"].ToString();
       lblCid.Text = Session["Cid"].ToString();
    }
    
  
    protected void lnkBank_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bank.aspx");
    }
    protected void lnkCustomerInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerInfo.aspx");
    }
    protected void lnkPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    protected void lnkPurchase_Click(object sender, EventArgs e)
    {
        Response.Redirect("Purchase.aspx");
    }
    protected void lnkReciepts_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reciept.aspx");
    }
    protected void lnkSales_Click(object sender, EventArgs e)
    {
        Response.Redirect("sales.aspx");
    }
    protected void lnkSalesReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("salesreports.aspx");
    }
    protected void lnkStockreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("stockReport.aspx");
    }
    protected void lnkSupplierInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("SupplierInfo.aspx");
    }
    
    protected void lnkHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("AfterLogin.aspx");
    }
   
    protected void lnklogout_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Logout.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addpart.aspx");
    }
    protected void lnkVoucher_Click(object sender, EventArgs e)
    {
        Response.Redirect("Voucher.aspx");

    }
}
