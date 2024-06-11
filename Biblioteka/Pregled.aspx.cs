using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Biblioteka
{
    public partial class Pregled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            string filePath = Server.MapPath("XML/biblioteka.xml");
            XDocument doc = XDocument.Load(filePath);

            var knjige = from knjiga in doc.Descendants("knjiga")
                         orderby (int)knjiga.Element("citano") descending
                         select new
                         {
                             ISBN = knjiga.Attribute("ISBN").Value,
                             naslov = knjiga.Element("naslov").Value,
                             stanje = knjiga.Element("stanje").Value,
                             citano = knjiga.Element("citano").Value
                         };

            GridView1.DataSource = knjige;
            GridView1.DataBind();
        }
    }
}