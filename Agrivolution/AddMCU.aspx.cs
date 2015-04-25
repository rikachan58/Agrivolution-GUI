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
            UserID.Value = User.Identity.Name;
        }

        protected void CreateMCU(object sender, EventArgs a)
        {
            string query = "INSERT INTO MCU ([MCUId], [Room], [Facility], [UserName], [GroupName], [FanStatus], [LightStatus], [PumpStatus], [CropType], [StartDate], [LightSchedule])" +
                " VALUES (@MCUId, @Room, @Facility, @UserName, @GroupName, @FanStatus, @LightStatus, @PumpStatus, @CropType, @StartDate, @LightSchedule)";
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@MCUId", ID_text.Text);
            cmd.Parameters.AddWithValue("@Room", roomList.Text);
            cmd.Parameters.AddWithValue("@Facility", facilityList.Text);
            cmd.Parameters.AddWithValue("@UserName", User.Identity.Name);
            cmd.Parameters.AddWithValue("@GroupName", groupList.Text);
            cmd.Parameters.AddWithValue("@FanStatus", "0");
            cmd.Parameters.AddWithValue("@LightStatus", "0");
            cmd.Parameters.AddWithValue("@PumpStatus", "0");
            cmd.Parameters.AddWithValue("@CropType", CropType.Text);
            cmd.Parameters.AddWithValue("@StartDate", DateTime.Today);
            cmd.Parameters.AddWithValue("@LightSchedule", lightHours.Text);

            //Taras To Do List:
            //check for correct values for MCUId and LightSchedule
            //add choice for new values for drop down lists
            //check for correct values for new values for drop down lists
            //add message saying everything was saved and clear fields
            //redirect to new mcu page?
            //uncomment try and catch

            //try 
           // {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
           // }
          //  catch(SqlException e)
          //  { Console.Write(e.ToString()); }
        }
    }
}