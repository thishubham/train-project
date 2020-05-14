using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BookTrain : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        showTrain();
    }
    private void showTrain()
    {
        string q = "select * from train where tsource='" + txtSource.Text + "' and tdestination='"+txtDestination.Text+"'";
        DataTable dt = new DataTable();
        SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
        dp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}