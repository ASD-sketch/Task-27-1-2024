using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class ViewMetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooksFromFile();
            }
        }

        private void LoadBooksFromFile()
        {
            string path = @"C:\Users\Orange\Desktop\txt\metting.txt";

            if (File.Exists(path))
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("MettingId");
                dt.Columns.Add("MettingName");
                dt.Columns.Add("MettingLocation");
                dt.Columns.Add("MettingCapacity");

                string[] lines = File.ReadAllLines(path);
                foreach (string line in lines)
                {
                    string[] fields = line.Split(',');
                    if (fields.Length == 4)
                    {
                        dt.Rows.Add(fields[0], fields[1], fields[2], fields[3]);
                    }
                }

                gvBooks.DataSource = dt;
                gvBooks.DataBind();
            }
            else
            {
                Response.Write("File not found: " + path);
            }
        }
    }
}