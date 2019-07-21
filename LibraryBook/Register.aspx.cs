using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryBook
{
    public partial class Register : System.Web.UI.Page
    {
        LibraryClass LibraryObject = new LibraryClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Registerbutton_Click(object sender, EventArgs e)
        {
            
            String AdminName = NameRegister .Text;
            String AdminUsername = LoginRegister .Text;
            String AdminPassword = PassRegister .Text;
            LibraryObject.Userinsert(AdminPassword, AdminUsername);
            LibraryObject.Nameinsert(AdminName, Convert.ToInt32(Ageregister.Text));
            Response.Redirect("Login.aspx");
        }
    }
}