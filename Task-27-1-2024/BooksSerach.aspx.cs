using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_27_1_2024
{
    public partial class BooksSerach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
            }
        }

        private List<string[]> GetBooksFromFile()
        {
            string filePath =@"C:\Users\Orange\Desktop\txt\book.txt";
            if (!File.Exists(filePath))
                return new List<string[]>();

            return File.ReadAllLines(filePath)
                       .Select(line => line.Split(','))
                       .ToList();
        }

        private void LoadBooks()
        {
            var books = GetBooksFromFile();
            gvBooks.DataSource = books.Select(b => b.Length >= 4 ? new { Id = b[0], Name = b[1], BookType = b[2], BookLevel = b[3] }
                           : new
                           {
                               Id = b.ElementAtOrDefault(0),
                               Name = b.ElementAtOrDefault(1),
                               BookType = b.ElementAtOrDefault(2),
                               BookLevel = b.ElementAtOrDefault(3)
                           }).ToList();
            gvBooks.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchQuery = txtSearch.Text.Trim().ToLower();
            var books = GetBooksFromFile();

            var filteredBooks = books
                .Where(b => b.Length > 0 && b[0].ToLower().Contains(searchQuery))
                .Select(b => new { Id = b[0], Name = b[1], BookType = b[2], BookLevel = b[3] })
                .ToList();

            if (filteredBooks.Any())
            {
                gvBooks.DataSource = filteredBooks;
                gvBooks.DataBind();
                lblResult.Text = ""; 
            }
            else
            {
                gvBooks.DataSource = null;
                gvBooks.DataBind();
                lblResult.Text = "Not found";
            }
        }
    }
}