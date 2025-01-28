using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class AddMetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string id = txtID.Text;
            string name = txtName.Text;
            string location = txtLocation.Text;
            string capacity = txtCapacity.Text;

            String datametting = $"{id}, {name}, {location}, {capacity}";
            string path = @"C:\Users\Orange\Desktop\txt\metting.txt";
            using (StreamWriter writer = new StreamWriter(path, true))
            {
                writer.WriteLine($"{datametting}\n");

            }

            Response.Write("Metting Added");

        }









    }
}