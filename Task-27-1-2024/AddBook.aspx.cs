using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string id = txtID.Text;
            string name = txtName.Text;
            string kind = txtKind.Text;
            string level = txtLevel.Text;

            String dataBook = $"{id}, {name}, {kind}, {level}";
            string path = @"C:\Users\Orange\Desktop\txt\book.txt";
            using (StreamWriter writer = new StreamWriter(path, true))
            {
                writer.WriteLine($"{dataBook}\n");

            }

            Response.Write("Book Added");

        }









    }
}