using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class ResultList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtResultList = new DataTable();
                dtResultList.Columns.Add("ID");

                for (int i = 1; i <= 3; i++)
                {
                    DataRow newRow = dtResultList.NewRow();
                    newRow["ID"] = i;
                    dtResultList.Rows.Add(newRow);
                }

                BindGridViewResultList(dtResultList);
            }
        }

        private void BindGridViewResultList(DataTable dtResultList)
        {
            gvResultList.DataSource = dtResultList;
            gvResultList.DataBind();
        }
    }
}