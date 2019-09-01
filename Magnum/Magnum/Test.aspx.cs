using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MagnumEntities db = new MagnumEntities();
            User u = new User();
            u.Name = TextBox1.Text;

            db.Users.Add(u);
            db.SaveChanges();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = 1;
            MagnumEntities db = new MagnumEntities();
            User u = db.Users.Find(id);

            if (u == null)
            {
            }
            else
            {
                u.Name = "KK";
                db.SaveChanges();
            }
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            MagnumEntities db = new MagnumEntities();
   
            DataTable dt = new DataTable();
            var list = db.Users.Where(x => x.Name == "CH");
            var pro = from u in db.Users where u.Name == "CH" select u;

            if (pro != null)
            {
                GridView1.DataSource = list.ToList();
                GridView1.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = 1;
            MagnumEntities db = new MagnumEntities();
            User u = db.Users.FirstOrDefault(x => x.ID == id);
            db.Users.Remove(u);
            
            db.SaveChanges();
        }


    }
}