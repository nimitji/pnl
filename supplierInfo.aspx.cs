using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class supplierInfo : System.Web.UI.Page
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

    protected void GVCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GVSupplier_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
     
        GVSupplier.EditIndex = e.NewEditIndex;
        TextBox name = (TextBox)GVSupplier.Rows[e.NewEditIndex].FindControl("TextBox1");
        gridbind();

    }
    private void gridbind()
    {
        String cid = Session["Cid"].ToString();
        
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "select * from Party where Ptype='Supplier' and CompanyId="+cid+"";
            objSqlDa = new SqlDataAdapter(query, objSqlcon);
            objDT = new DataTable();
            objSqlDa.Fill(objDT);
            GVSupplier.DataSource = objDT;
            GVSupplier.DataBind();
    }

    protected void GVSupplier_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        GVSupplier.EditIndex = -1;
        gridbind();

    }
}