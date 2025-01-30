using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Xml.Linq;

namespace Task_27_1_2024
{
    public partial class profile : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadUserProfile();
            }

        }
             private void LoadUserProfile()
        {
            //string filePath = @"C:\Users\Orange\Desktop\txt\a.txt";
            String filePath = Server.MapPath("a.txt");
            string userEmail = Session["UserEmail"] as string;

            if (string.IsNullOrEmpty(userEmail))
            {
                Response.Write("No user is logged in.");
                return;
            }

            if (!File.Exists(filePath))
            {
                Response.Write("File not found.");
                return;
            }

            string[] lines = File.ReadAllLines(filePath);
            bool userFound = false;

            foreach (var line in lines)
            {
                if (string.IsNullOrWhiteSpace(line)) continue;

                string[] userData = line.Split(',');
                if (userData.Length >= 3)
                {
                    string storedName = userData[0];
                    string storedEmail = userData[1];
                    string storedPassword = userData[2];

                    if (storedEmail.Equals(userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        txtFullName.Text = storedName;
                        txtEmail.Text = storedEmail;
                        txtMembershipID.Text = "123456"; 
                        txtStatus.Text = "Active"; 
                        userFound = true;
                        break;
                    }
                }
            }

            if (!userFound)
            {
                Response.Write("User not found in the file.");
            }
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            //string filePath = @"C:\Users\Orange\Desktop\txt\a.txt";
            String filePath = Server.MapPath("a.txt");

            string userEmail = Session["UserEmail"] as string;

            if (string.IsNullOrEmpty(userEmail))
            {
                Response.Write("No user is logged in.");
                return;
            }

            if (!File.Exists(filePath))
            {
                Response.Write("File not found.");
                return;
            }

            string[] lines = File.ReadAllLines(filePath);
            string updatedContent = "";
            bool userFound = false;

            foreach (var line in lines)
            {
                if (string.IsNullOrWhiteSpace(line)) continue; 

                string[] userData = line.Split(',');
                if (userData.Length >= 3)
                {
                    string storedEmail = userData[1];

                    if (storedEmail.Equals(userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        
                        userData[0] =  txtFullName.Text;
                        userData[1] =  txtEmail.Text;
                        userData[2] =  userData[2];

                        updatedContent += string.Join(",", userData) + Environment.NewLine;
                        userFound = true;
                    }
                    else
                    {
                        updatedContent += line + Environment.NewLine;
                    }
                }
            }

            if (userFound)
            {
                File.WriteAllText(filePath, updatedContent);
                Response.Redirect("profile.aspx"); 
            }
            else
            {
                Response.Write("User not found.");
            }
        }

        protected void btnGoToProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeUser.aspx");
        }



    }
}


