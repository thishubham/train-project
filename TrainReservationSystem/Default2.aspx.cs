using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[3] { new DataColumn("EmployeeId", typeof(int)),
        new DataColumn("Name", typeof(string)),
        new DataColumn("Salary", typeof(int)) });
        dt.Rows.Add(1, "John Hammond", 45000);
        dt.Rows.Add(2, "Mudassar Khan", 32000);
        dt.Rows.Add(3, "Robert Schidner", 19000);
        dt.Rows.Add(3, "Suzanne Mathews", 18500);
        int sum = Convert.ToInt32(dt.Compute("avg(Salary)", string.Empty));
        Response.Write("<script>alert('Sum='+'"+sum+"') </script>");
    }
}