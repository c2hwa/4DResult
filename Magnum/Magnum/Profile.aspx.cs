using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtAgent = new DataTable();
                dtAgent.Columns.Add("Name");
                dtAgent.Columns.Add("ICNo");
                dtAgent.Columns.Add("MobileNo");
                dtAgent.Columns.Add("Point");

                BindGridViewAgent(dtAgent);

                ViewState["dtAgent"] = dtAgent;
            }
        }

        protected void btnAddAgent_Click(object sender, EventArgs e)
        {
            DataTable dtAgent = (DataTable)ViewState["dtAgent"];
            DataRow newRow = dtAgent.NewRow();
            newRow["Name"] = txtAddAgentName.Text.Trim();
            newRow["ICNo"] = txtICNo.Text.Trim();
            newRow["MobileNo"] = txtMobileNo.Text.Trim();
            newRow["Point"] = txtPoint.Text.Trim();
            dtAgent.Rows.Add(newRow);

            BindGridViewAgent(dtAgent);
        }

        private void BindGridViewAgent(DataTable dtSource)
        {
            gvAgent.DataSource = dtSource;
            gvAgent.DataBind();
        }

        protected void gvAgent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = 0;

            GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);

            

            if (e.CommandName == "topup")
            {
                index = Convert.ToInt32(e.CommandArgument);
                txtTopName.Text = ((Label)row.FindControl("lblName")).Text;
                txtTopUpICNo.Text = ((Label)row.FindControl("lblICNo")).Text;
                ModalPopupExtenderTopUp.Show();
            }
        }
    }
}