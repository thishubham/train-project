﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st1 = txtUser.Text;
        string st2 = txtPass.Text;
       
        con.open_connection();
        string str = "select * from login where emailID='" + txtUser.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            if (dr["emailID"].ToString() == st1 && dr["password"].ToString() == st2 && dr["utype"].ToString().Equals("User"))
            {
                Session["emailID"] = st1;
               // Session["age"] = dr["age"].ToString();
                Response.Redirect("viewProfile.aspx");
            }
           
           
        }
        con.close_connection();

        if (st1.Equals("admin") && st2.Equals("admin"))
        {
            Response.Redirect("userlist.aspx");
        }
    }
}