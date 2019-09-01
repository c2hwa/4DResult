using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtOrder = new DataTable();
                dtOrder.Columns.Add("Number");
                dtOrder.Columns.Add("Normal");
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

                BindGridViewOrder(dtOrder);

                ViewState["dtOrder"] = dtOrder;
            }
        }

        private void BindGridViewOrder(DataTable dtOrder)
        {
            gvOrder.DataSource = dtOrder;
            gvOrder.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            decimal total = 0;
            total = (decimal.Parse(txtNormal.Text) + decimal.Parse(txtBox.Text) + decimal.Parse(txtIBox.Text) 
                  + decimal.Parse(txtBaoHead.Text) + decimal.Parse(txtBaoTail.Text) 
                  + decimal.Parse(txtSuperA1.Text) + decimal.Parse(txtSuperA2.Text) + decimal.Parse(txtSuperA3.Text) 
                  + decimal.Parse(txtSuperA4.Text) + decimal.Parse(txtSuperA5.Text) + decimal.Parse(txtSuperA6.Text)) * decimal.Parse(txtRepeat.Text);
            DataTable dtOrder = (DataTable)ViewState["dtOrder"];
            DataRow newRow = dtOrder.NewRow();
            newRow["Number"] = txtNumber.Text.Trim();
            newRow["Normal"] = txtNormal.Text.Trim();
            newRow["Box"] = txtBox.Text.Trim();
            newRow["IBox"] = txtIBox.Text.Trim();
            newRow["BaoHead"] = txtBaoHead.Text.Trim();
            newRow["BaoTail"] = txtBaoTail.Text.Trim();
            newRow["SuperA1"] = txtSuperA1.Text.Trim();
            newRow["SuperA2"] = txtSuperA2.Text.Trim();
            newRow["SuperA3"] = txtSuperA3.Text.Trim();
            newRow["SuperA4"] = txtSuperA4.Text.Trim();
            newRow["SuperA5"] = txtSuperA5.Text.Trim();
            newRow["SuperA6"] = txtSuperA6.Text.Trim();
            newRow["Repeat"] = txtRepeat.Text.Trim();
            newRow["Total"] = total;
            dtOrder.Rows.Add(newRow);

            ViewState["dtOrder"] = dtOrder;
            BindGridViewOrder(dtOrder);

            //total = 0;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            decimal total = 0;

            DataTable dtOrder = (DataTable)ViewState["dtOrder"];
            string html = "<div>";

            foreach(DataRow row in dtOrder.Rows)
            {
                html += "<div class='receipt_number'>" + row["Number"].ToString() + "</div>";
                
                for (int col = 1; col <= 11; col++)
                {
                    if (Convert.ToDecimal(row[col]) != 0)
                    {
                        html += "<div style='padding-left:20px;'><table padding='5' width='100%'><tr><td width='50%'>" + GetTypeName(col) + "</td><td style='width:20%; text-aligh:right;'>RM"+ Convert.ToDecimal(row[col]).ToString("0.00") + "</td><td style='width:10%; text-aligh:right;'>x" + row["Repeat"].ToString() + "</td><td style='width:20%; text-align:right;'>RM" + (Convert.ToDecimal(row[col]) * Convert.ToDecimal(row["Repeat"])).ToString("0.00") + "</td></tr></table></div>";
                    }
                }

                total += Convert.ToDecimal(row["Total"]);
            }

            html += "</div>";

            Literal1.Text = html;

            lblReceiptTotal.Text = "RM" + total.ToString("0.00");
            lblReceiptCustName.Text = txtCustName.Text;
            lblReceiptMobile.Text = txtCustMobileNo.Text;

            ShowReceipt();
        }

        private string GetTypeName(int colIndex)
        {
            string typeName = "";

            switch (colIndex)
            {
                case 1:
                    typeName = "Normal";
                    break;

                case 2:
                    typeName = "Box";
                    break;

                case 3:
                    typeName = "IBox";
                    break;

                case 4:
                    typeName = "Bao Head";
                    break;

                case 5:
                    typeName = "Bao Tail";
                    break;

                case 6:
                    typeName = "Super A1";
                    break;

                case 7:
                    typeName = "Super A2";
                    break;

                case 8:
                    typeName = "Super A3";
                    break;

                case 9:
                    typeName = "Super A4";
                    break;

                case 10:
                    typeName = "Super A5";
                    break;

                case 11:
                    typeName = "Super A6";
                    break;
            }

            return typeName;
        }

        protected void btnShowReceipt_Click(object sender, EventArgs e)
        {
            ShowReceipt();
        }

        private void ShowReceipt()
        {
            ModalPopupShowReceipt.Show();
        }
    }
}