using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class order : System.Web.UI.Page
{
    connection conn = new connection();
    string name,pid,pcat,pname,p,pquan;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToString();
       // lbluname.Text = (string)(Session["uname"]);
        ShowTrain();
    }
    public void ShowTrain()
    {
         string str = Request.QueryString["Id"];
        conn.open_connection();
        string st = "select * from train where trainid='" + str + "'";
        SqlCommand cmd = new SqlCommand(st,conn.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtpid.Text = dr["trainid"].ToString();
            txtName.Text = dr["tname"].ToString();
            txtSource.Text = dr["tsource"].ToString();
            txtdest.Text = dr["tdestination"].ToString();
            txtfare.Text = dr["tfare"].ToString();
            txtquantity.Text = dr["tavail"].ToString();
            
        }


        conn.close_connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(txtquantity.Text);
        b = Convert.ToInt32(txtfare.Text);
        c = Convert.ToInt32(TextBox1.Text);

        if (c > a)
        {
            msg.Visible = true;
            msg.Text = "Product Not available ";
        }
        else
        {
            msg.Visible = false;
            txttotal.Text = Convert.ToString(b * c);
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            Random rnd = new Random();
            int pnr = rnd.Next(123456);
            conn.open_connection();
            string st = "insert into trainbooking values ('" + txtpid.Text + "','" + txtName.Text + "','" + txtSource.Text + "','" + txtdest.Text + "','" + txttotal.Text + "','" + txtquantity.Text + "','" + Session["emailID"].ToString() + "','" + txtjdate.Text + "','" + pnr.ToString() + "','" + txtdate.Text + "','"+TextBox1.Text+"')";
            SqlCommand cmd = new SqlCommand(st, conn.con_pass());
            cmd.ExecuteNonQuery();
            conn.close_connection();
            conn.open_connection();
            int av, bb, fb;
            av = Convert.ToInt32(txtquantity.Text);
            bb = Convert.ToInt32(TextBox1.Text);
            fb = av - bb;
            string str = "update train set tavail='"+fb+"' where trainid='"+txtpid.Text+"' ";
            SqlCommand cmdup = new SqlCommand(str,conn.con_pass());
            cmdup.ExecuteNonQuery();

            conn.close_connection();
            Response.Write("<script>alert('Your Ticket is Booked')</script>");
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }

            
      
     }

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        
       

    }
}