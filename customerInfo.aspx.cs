using System;
using System.Data;
using System.Data.SqlClient;

public partial class customerInfo : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    
    protected void Page_Load(object sender, EventArgs e)
    {


      lblCid.Text ="1000";
        
            objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
            string query = "select * from Party where Ptype='customer'and CompanyId="+lblCid.Text+"";
            objSqlDa = new SqlDataAdapter(query, objSqlcon);
            objDT = new DataTable();
            objSqlDa.Fill(objDT);
            GVSupplier.DataSource = objDT;
            GVSupplier.DataBind();
        

       
    
    }

   
}