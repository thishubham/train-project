using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class RegisterTrain : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillid();
    }
    public void fillid()
    {
        con.open_connection();
        string str = "select * from train order by trainid";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        while (dr.Read())
        {
            int a = 0;
            a = Convert.ToInt32(dr["trainid"].ToString());
            ViewState["sid"] = a.ToString();
            i = i + 1;
        }
        if (i > 0)
        {
            int a = Convert.ToInt32(ViewState["sid"].ToString());
            a = a + 1;
            TextBox1.Text = a.ToString();
        }
        else
            TextBox1.Text = "12001";
        con.close_connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.open_connection();
        string st = "insert into train values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')";
        SqlCommand cmd = new SqlCommand(st,con.con_pass());
        cmd.ExecuteNonQuery();

        con.close_connection();
        Response.Write("<script>alert('Register Train Successfully') </script>");
        Response.Redirect("RegisterTrain.aspx");
    }
}