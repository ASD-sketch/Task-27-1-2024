using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected bool IsUserValid(string email, string password)
        {
            string path = @"C:\Users\Orange\Desktop\TaskWeb\txt\a.txt";
           
            if (File.Exists(path))
            {
                var lines = File.ReadAllLines(path);
                foreach (var line in lines)
                {
                    var parts = line.Split(',');  
                    if (parts.Length > 2 && parts[1] == email && parts[2] == password)
                        return true;
                }
            }
            return false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            if(email== "Admin123@gmail.com" && password== "admin")
            {
                Response.Redirect("homeAdmin.aspx");
            }

            else if (IsUserValid(email, password))
            {
                Response.Write("Login successful!");
                Response.Redirect("homeUser.aspx");
            }
            else
            {
                Response.Write("Invalid username or password.");
            }
        }


       









    }
}