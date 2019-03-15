using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class stockReport : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            gridbind();
        }
    }



    private void gridbind()
    {
        String cid = Session["Cid"].ToString();

        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "select * from Stock where CompanyId=" + cid + "";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
        GVSupplier.DataSource = objDT;
        GVSupplier.DataBind();
    }
    protected void GVCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GVSupplier_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GVSupplier.EditIndex = e.NewEditIndex;
        TextBox name = (TextBox)GVSupplier.Rows[e.NewEditIndex].FindControl("TextBox1");
        gridbind();
    }
    protected void GVSupplier_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GVSupplier.EditIndex = -1;
        gridbind();

    }

    protected void GVSupplier_RowCreated(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GVSupplier_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}