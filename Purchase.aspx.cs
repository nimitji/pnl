using System;
using System.Data;
using System.Data.SqlClient;


public partial class Purchase : System.Web.UI.Page
{
    String cid;
    string query;
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    protected void Page_Load(object sender, EventArgs e)
    {
       cid = Session["Cid"].ToString();


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        query = "insert into stock (Sid,Sname,Make,Qty,CPrice,SPrice,supplierID,CompanyId,DateofPurchase)values(" + txtSid.Text + ",'" + txtname.Text + "','" + txtbrand.Text + "'," + txtQty.Text + "," + txtCp.Text + "," + txtSp.Text + "," + txtSup.Text + "," + cid + ",getdate());";
    
        connection();

    }
    private void connection()
    {
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        query = "SELECT * FROM STOCK WHERE Sid="+txtsFid.Text+"";

        connection();
        gvstock.DataSource = objDT;
        gvstock.DataBind();
    }
}