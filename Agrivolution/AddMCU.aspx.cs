using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Agrivolution
{
    public partial class AddMCU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateMCU(object sender, EventArgs a)
        {
            try
            {
            string query = "INSERT INTO MCU ([MCUId], [Room], [Facility], [UserName], [GroupName], [Status], [Type])" +
                " VALUES (@MCUId, @Room, @Facility, @UserName, @GroupName, @Status, @Type)";
            SqlConnection con = new SqlConnection("Data Source=(LocalDb)\v11.0;Initial Catalog=aspnet-Agrivolution-20150404115207;Integrated Security=True");
            
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@MCUId", ID_text.Text);
            cmd.Parameters.AddWithValue("@Room", roomList.Text);
            cmd.Parameters.AddWithValue("@Facility", facilityList.Text);
            cmd.Parameters.AddWithValue("@UserName", User.Identity.Name);
            cmd.Parameters.AddWithValue("@GroupName", groupList.Text);
            cmd.Parameters.AddWithValue("@Status", "0");
            cmd.Parameters.AddWithValue("@Type", typeList.Text);


            con.Close();
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(SqlException e)
            { Console.Write(e.ToString()); }
        }
    }
}