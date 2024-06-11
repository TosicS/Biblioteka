using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteka
{
    public partial class Pocetna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonPrijava_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;

            string message; 

            if (username == "Test" && password == "test123")
            {
                message = "alert('Добродошли на страницу!');";
            }
            else if (username == "Test2" && password == "test2123")
            {
                message = "alert('Добродошли на страницу!');";
            }
            else
            {
                message = "alert('Погрешно корисничко име или лозинка!');";
            }
            ClientScript.RegisterStartupScript(this.GetType(), "alert", message, true);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pregled.aspx");
        }
    }
}