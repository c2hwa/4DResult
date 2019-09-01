using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class OrderList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtOrderList = new DataTable();
                dtOrderList.Columns.Add("OrderNo");
                dtOrderList.Columns.Add("CustName");
                dtOrderList.Columns.Add("OrderDate");
                dtOrderList.Columns.Add("OrderedBy");

                for (int i = 1; i <= 15; i++)
                {
                    DataRow newRow = dtOrderList.NewRow();
                    newRow["OrderNo"] = "000001";
                    newRow["CustName"] = "Michael Jordan";
                    newRow["OrderDate"] = "01/Sep/2019";
                    newRow["OrderedBy"] = "Ah Cow";
                    dtOrderList.Rows.Add(newRow);
                }

                BindGridViewOrder(dtOrderList);

                //ViewState["dtOrderList"] = dtOrderList;
            }
        }

        private void BindGridViewOrder(DataTable dtOrderList)
        {
            gvOrderList.DataSource = dtOrderList;
            gvOrderList.DataBind();
        }
    }
}