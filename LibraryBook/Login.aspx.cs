using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryBook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            String User = LoginTextbox.Text;
            String Pass = PassTextBox .Text;
            BookLibraryEntities1 db = new BookLibraryEntities1();
            string query = (from c in db.Usertables
                            where c.Username == User && c.Password == Pass
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("BookPage.aspx");
            }
            else
                Response.Write("Check You username or password");

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}