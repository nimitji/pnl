using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


public partial class sales : System.Web.UI.Page
{
    SqlConnection objSqlcon;
    SqlDataAdapter objSqlDa;
    DataTable objDT;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCid.Text = Session["Cid"].ToString();

    }
    protected void btnFindParty_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            txtPid.Text = "0000";
        
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            txtPid.Focus();

        }
        query = "select * from Party where Pid=" + txtPid.Text + " and CompanyId=" + lblCid.Text + "";
        connection();
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
               
        
        if (objDT.Rows.Count > 0)
        {
            grdParty.DataSource = objDT;
            grdParty.DataBind();

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        float totalCPrice;
        float profit;
       query = "select * from stock where Sid=" + txtSid.Text + "and CompanyId=" + lblCid.Text + "";
        connection();
        if (objDT.Rows.Count > 0)
        {
            totalCPrice = Int32.Parse(objDT.Rows[0]["Cprice"].ToString()) * Int32.Parse(txtQty.Text);
                       
            profit = float.Parse(txtTotal.Text) - totalCPrice;
               
            query = "update cash set cashInhand=cashInhand+" + txtTotal.Text + ",profit=profit+" + profit + "where CompanyId=" + lblCid.Text + "";
            connection();
            
            query = "select * from stock where Sid=" + txtSid.Text + "and CompanyId=" + lblCid.Text + "";
        connection();
        if (objDT.Rows.Count > 0)
        {
            if (Int32.Parse( objDT.Rows[0]["qty"].ToString() )>=Int32.Parse( txtQty.Text))
            {
                query = "update stock set Qty=Qty-" + txtQty.Text + "where Sid=" + objDT.Rows[0]["sid"] + "and CompanyId=" + lblCid.Text + "";
                connection();
            }
        }

            query = "select * from stock where Sid=" + txtSid.Text + "and CompanyId=" + lblCid.Text + "";
            connection();
            if (objDT.Rows.Count > 0)
            {
                if (RadioButtonList1.SelectedIndex == 0)
                {

                    query = "insert into sales(stockid,stockName,Make,qty,custName,custAdd,totalAmount,dateOftrans,paymentmode,CompanyId) values (" + objDT.Rows[0]["Sid"] + ",'" + objDT.Rows[0]["Sname"] + "','" + objDT.Rows[0]["Make"] + "'," + txtQty.Text + ",'"+RadioButtonList1.SelectedItem.Text+"','NA'," + txtTotal.Text + ",getdate(),'cash','" + lblCid.Text + "');";
                }
                else if (RadioButtonList1.SelectedIndex == 1)
                {
                    Label pname = (Label)grdParty.FindControl("Labelpn");
                    Label padd = (Label)grdParty.FindControl("Labeladd");
                    query = "insert into sales(stockid,stockName,Make,qty,custName,custAdd,totalAmount,dateOftrans,paymentmode,CompanyId) values (" + objDT.Rows[0]["Sid"] + ",'" + objDT.Rows[0]["Sname"] + "','" + objDT.Rows[0]["Make"] + "'," + txtQty.Text + ",'" +pname.Text + "','"+padd.Text+"'," + txtTotal.Text + ",getdate(),'cash','" + lblCid.Text + "');";
                }

                connection();
            }
        }
    }
    protected void btnFindStock_Click(object sender, EventArgs e)
    {
        lblCid.Text = Session["Cid"].ToString();
        query = " select* from stock where Sid=" + txtSid.Text + " and CompanyId=" + lblCid.Text + "";
        connection();
       grdStock.DataSource = objDT;
       grdStock.DataBind();
    }
    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
       
    }

    private void connection()
    {
    objSqlcon = new SqlConnection("Data Source=LG-PC\\SQLEXPRESS;Initial Catalog=pnl;Integrated Security=True");
        objSqlDa = new SqlDataAdapter(query, objSqlcon);
        objDT = new DataTable();
        objSqlDa.Fill(objDT);
    }


    protected void txtPrice_TextChanged(object sender, EventArgs e)
    {
        int b;
        float a;
        lblCid.Text = Session["Cid"].ToString();
        query = " select* from stock where Sid=" + txtSid.Text + " and CompanyId=" + lblCid.Text + "";
        connection();
        if (objDT.Rows.Count > 0)
        {
            if (Int32.Parse(objDT.Rows[0]["Qty"].ToString()) >= Int32.Parse(txtQty.Text))
            {
                b = Int32.Parse(txtQty.Text);
                a = Int32.Parse(txtPrice.Text);

                txtTotal.Text = (a * b).ToString();
            }
        }
        
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }
}