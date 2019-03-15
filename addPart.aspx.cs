using System;
using System.Data;
using System.Data.SqlClient;

public partial class addPart : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    SqlDataAdapter objSqlDa1;
    DataTable objDT1;
    protected void Page_Load(object sender, EventArgs e)
    {
         lblCid.Text= Session["Cid"].ToString();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        string query = "insert into Party(Pname,Paddress,PPhone,PEmailId,Ptype,Ptin, PinitalBal,CompanyId)values('" +txtName.Text+ "','" + txtAddress.Text + "'," + txtPhone.Text + ",'" + txtEmail.Text + "','" + ddltype.SelectedItem + "'," + txtTin.Text + ","+txtinital.Text+","+lblCid.Text+")";
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);


        string query1 = "select PId From Party where Pname='" + txtName.Text + "';";
        objSqlDa1 = new SqlDataAdapter(query1, objSqlcon);
        objDT1 = new DataTable();
        objSqlDa1.Fill(objDT1);
        if (objDT1.Rows.Count > 0)
        {
            lblIdgen.Text= objDT1.Rows[0][0].ToString();
        }
        else
        {
            lblIdgen.Text= "your registration is not completed please try again later after some time";
        }
    }
}