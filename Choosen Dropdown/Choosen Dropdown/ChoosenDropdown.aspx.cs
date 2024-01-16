using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Choosen_Dropdown_ChoosenDropdown : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["Ginie"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_Role_ProjectMaster();
        }
    }

    public void Bind_Role_ProjectMaster()
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            con.Open();
            string sql = "select * from EmpExcel";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();

            ddselect.DataSource = dt;
            ddselect.DataTextField = "EmpName";
            ddselect.DataValueField = "EmpName";
            ddselect.DataBind();
            ddselect.Items.Insert(0, new ListItem("------Select Employee ------", "0"));
        }
    }

    protected void ddselect_SelectedIndexChanged(object sender, EventArgs e)
    {
        string empName = ddselect.SelectedValue;

        if (ddselect.SelectedValue != "0")
        {
            string message = "Selected Employee Name: " + empName;
            string script = $"alert('{message}');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "messageScript", script, true);
        }
        else
        {

        }
    }
}