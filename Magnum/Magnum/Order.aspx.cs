using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtOrder = new DataTable();
                dtOrder.Columns.Add("Number");
                dtOrder.Columns.Add("Box");
                dtOrder.Columns.Add("IBox");
                dtOrder.Columns.Add("BaoHead");
                dtOrder.Columns.Add("BaoTail");
                dtOrder.Columns.Add("SuperA1");
                dtOrder.Columns.Add("SuperA2");
                dtOrder.Columns.Add("SuperA3");
                dtOrder.Columns.Add("SuperA4");
                dtOrder.Columns.Add("SuperA5");
                dtOrder.Columns.Add("SuperA6");
                dtOrder.Columns.Add("Repeat");
                dtOrder.Columns.Add("Total");

                DataRow newRow = dtOrder.NewRow();
                newRow["Number"] = 1234;
                newRow["Box"] = 10;
                newRow["IBox"] = 20;
                newRow["BaoHead"] = 0;
                newRow["BaoTail"] = 0;
                newRow["SuperA1"] = 0;
                newRow["SuperA2"] = 0;
                newRow["SuperA3"] = 0;
                newRow["SuperA4"] = 0;
                newRow["SuperA5"] = 0;
                newRow["SuperA6"] = 0;
                newRow["Repeat"] = 2;
                newRow["Total"] = 60;
                dtOrder.Rows.Add(newRow);

                BindGridViewOrder(dtOrder);
                BindGridViewOrder(dtOrder);

                ViewState["dtOrder"] = dtOrder;
            }
        }

        private void BindGridViewOrder(DataTable dtOrder)
        {
            gvOrder.DataSource = dtOrder;
            gvOrder.DataBind();
        }
    }
}