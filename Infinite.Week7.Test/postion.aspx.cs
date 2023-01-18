using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace Infinite.Week7.Test
{
    public partial class postion : System.Web.UI.Page
    {
        private SqlConnection conobj = null;
        private SqlCommand cmdobj = null;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection("Server=ICS-LAP-3065\\SQLEXPRESS; Database =HrCon; Integrated Security=true;"))
            {
                using (cmdobj = new SqlCommand("Insert_Position_Detail", con))
                {
                    cmdobj.Parameters.AddWithValue("@PositionCode", TxtPositionCode.Text);
                    cmdobj.Parameters.AddWithValue("@Description", TxtDescription.Text);
                    cmdobj.Parameters.AddWithValue("@Year", DdlYear.SelectedValue);
                    cmdobj.Parameters.AddWithValue("@BudgetStrength", TxtBudgetedstrength.Text);
                    cmdobj.Parameters.AddWithValue("CurrentStrength", Txtcurrentstrength.Text);

                    if (conobj.State == ConnectionState.Closed)
                    {
                        conobj.Open();
                    }
                    int res = cmdobj.ExecuteNonQuery();
                    if (res > 0)
                    {
                        LblMessage.Text = "Position Added Successfully";
                    }
                    else
                    {
                        LblMessage.Text = "Error";
                    }

                    cmdobj.Dispose();
                    conobj.Close();

                }

                
            }
        }
        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            Txtcurrentstrength.Text = "";
            TxtBudgetedstrength.Text = "";
            DdlYear.SelectedValue = null;
        }
    }
}


        




  

        
  