using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryBook
{
    public partial class BookPage : System.Web.UI.Page
    {
        BookLibraryEntities1 tablebookview = new BookLibraryEntities1();
        LibraryClass  libraryOBJ = new LibraryClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1 .DataSource = tablebookview.BookTables .ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void Rent_Click(object sender, EventArgs e)
        {
            
           
            libraryOBJ.CustRent(TextCust.Text, Convert.ToInt32(Booknotext.Text ),TextEmail .Text );
            GridView1.DataSource = tablebookview.BookTables.ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void Return_Click(object sender, EventArgs e)
        {
            
            libraryOBJ.CustReturn(Convert.ToInt32(Custidtext.Text));
            GridView1.DataSource = tablebookview.BookTables.ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void AddBook_Click(object sender, EventArgs e)
        {
            libraryOBJ.BookInser(BNametext.Text, BauthorText.Text, Convert.ToInt32(CopiesText.Text));
            GridView1.DataSource = tablebookview.BookTables.ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void deletebook_Click(object sender, EventArgs e)
        {
            libraryOBJ.BookRemove(Convert.ToInt32(Booknotext.Text));
            GridView1.DataSource = tablebookview.BookTables.ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void Updatebook_Click(object sender, EventArgs e)
        {
            libraryOBJ.BookUpdate(Convert.ToInt32(Booknotext.Text ), BNametext.Text, BauthorText.Text, Convert.ToInt32(CopiesText.Text));
            GridView1.DataSource = tablebookview.BookTables.ToList();
            GridView1.DataBind();
            GridView2.DataSource = tablebookview.Custs.ToList();
            GridView2.DataBind();
        }

        protected void GridViewcust_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewbook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Booknotext.Text = GridView1.SelectedRow.Cells[1].Text;
            BNametext.Text = GridView1.SelectedRow.Cells[3].Text;

            BauthorText.Text = GridView1.SelectedRow.Cells[2].Text;
            CopiesText.Text = GridView1.SelectedRow.Cells[4].Text;


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Custidtext.Text = GridView2.SelectedRow.Cells[1].Text;
            TextCust.Text = GridView2.SelectedRow.Cells[2].Text;
            TextEmail.Text = GridView2.SelectedRow.Cells[4].Text;

        }
    }
}