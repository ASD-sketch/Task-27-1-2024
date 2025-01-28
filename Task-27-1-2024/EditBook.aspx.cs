using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class EditBook : System.Web.UI.Page
    {
        private string filePath;
        protected void Page_Load(object sender, EventArgs e)
        {
            filePath = @"C:\Users\Orange\Desktop\TaskWeb\txt\book.txt";
            

            if (!IsPostBack)
            {
                LoadBooks();
            }
        }

        private void LoadBooks()
        {
            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);
                ddlBooks.Items.Clear();
                ddlBooks.Items.Add(new ListItem("Select a Book", ""));

                foreach (string line in lines)
                {
                    string[] fields = line.Split(',');
                    if (fields.Length == 4)
                    {
                        ddlBooks.Items.Add(new ListItem(fields[1], fields[0]));
                    }
                }
            }
        }

        protected void ddlBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlBooks.SelectedValue != "")
            {
                string selectedBookId = ddlBooks.SelectedValue;
                string[] lines = File.ReadAllLines(filePath);

                foreach (string line in lines)
                {
                    string[] fields = line.Split(',');
                    if (fields.Length == 4 && fields[0] == selectedBookId)
                    {
                        txtBookName.Text = fields[1];
                        txtBookType.Text = fields[2];
                        txtBookLevel.Text = fields[3];
                        break;
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ddlBooks.SelectedValue != "")
            {
                string selectedBookId = ddlBooks.SelectedValue;
                List<string> lines = File.ReadAllLines(filePath).ToList();

                for (int i = 0; i < lines.Count; i++)
                {
                    string[] fields = lines[i].Split(',');
                    if (fields.Length == 4 && fields[0] == selectedBookId)
                    {
                        lines[i] = $"{fields[0]},{txtBookName.Text},{txtBookType.Text},{txtBookLevel.Text}";
                        break;
                    }
                }

                File.WriteAllLines(filePath, lines);
                LoadBooks();
            }
        }
    }
}