using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Magnum
{
    public partial class DrawResult : System.Web.UI.Page
    {
        private static Random random;
        private static object syncObj = new object();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtResult = new DataTable();
                dtResult.Columns.Add("Number");
                dtResult.Columns.Add("ResultType");

                ViewState["Result"] = dtResult;
            }
        }

        private void GetTotalIncome()
        {
            int round = 231;
            MagnumEntities db = new MagnumEntities();
            var totalIncome = db.Orders.Where(o => o.Round == round).Sum(o => o.Total);
            lblTotalIncome.Text = totalIncome.ToString();
        }

        protected void btnDrawResult_Click(object sender, EventArgs e)
        {
            GetTotalIncome();
            decimal maxLoseThreshold = decimal.Parse(lblTotalIncome.Text) * decimal.Parse(txtLoseThreshold.Text.Trim()) / 100;
            ViewState["MaxLoseThreshold"] = maxLoseThreshold;
            ViewState["TotalPayoutAmt"] = 0;
            CreateViewStatePayout();
            lblMaxLoseThreshold.Text = maxLoseThreshold.ToString("0,0.00");
            DrawConsolationResult();
            DrawSpecialResult();
            Draw3rdResult();
            Draw2ndResult();
            Draw1stResult();
            ShowSummaryResult();
        }

        private void CreateViewStatePayout()
        {
            DataTable dtPayout = new DataTable();
            dtPayout.Columns.Add("ID");
            dtPayout.Columns.Add("OrderID");
            dtPayout.Columns.Add("Number");
            dtPayout.Columns.Add("Code");
            dtPayout.Columns.Add("Amount");
            dtPayout.Columns.Add("Rate");
            dtPayout.Columns.Add("PayoutAmt");

            ViewState["Payout"] = dtPayout;
        }

        private void DrawConsolationResult()
        {
            int thresholdPerc = 30;
            decimal threshold = decimal.Parse(lblTotalIncome.Text) * thresholdPerc / 100;

            int stop = 10;
            int count = 1;

            while (count <= stop)
            {
                string number = GenerateRandomNo().ToString("0000");

                string pickNumber = PickNumber(number, threshold, "CP");

                if (pickNumber != "no")
                {
                    
                    Label lbl = this.Master.FindControl("MainContent").FindControl("lblConsolation" + count) as Label;

                    if (lbl != null)
                    {
                        lbl.Text = number;

                        if (pickNumber == "hit")
                        {
                            lbl.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    
                    count++;
                }
            }
        }

        private void DrawSpecialResult()
        {
            int thresholdPerc = 20;
            decimal threshold = decimal.Parse(lblTotalIncome.Text) * thresholdPerc / 100;

            int stop = 10;
            int count = 1;

            while (count <= stop)
            {
                string number = GenerateRandomNo().ToString("0000");

                string pickNumber = PickNumber(number, threshold, "SPP");

                if (pickNumber != "no")
                {
                    Label lbl = this.Master.FindControl("MainContent").FindControl("lblSpecial" + count) as Label;

                    if (lbl != null)
                    {
                        lbl.Text = number;

                        if (pickNumber == "hit")
                        {
                            lbl.ForeColor = System.Drawing.Color.Red;
                        }
                    }

                    count++;
                }
            }
        }

        private void Draw3rdResult()
        {
            int thresholdPerc = 10;
            decimal threshold = decimal.Parse(lblTotalIncome.Text) * thresholdPerc / 100;

            int stop = 1;
            int count = 0;

            while (count < stop)
            {
                string number = GenerateRandomNo().ToString("0000");

                string pickNumber = PickNumber(number, threshold, "TP");

                if (pickNumber != "no")
                {
                    lbl3rdPrize.Text = number;

                    if (pickNumber == "hit")
                    {
                        lbl3rdPrize.ForeColor = System.Drawing.Color.Red;
                    }

                    count++;
                }
            }
        }

        private void Draw2ndResult()
        {
            int thresholdPerc = 10;
            decimal threshold = decimal.Parse(lblTotalIncome.Text) * thresholdPerc / 100;

            int stop = 1;
            int count = 0;

            while (count < stop)
            {
                string number = GenerateRandomNo().ToString("0000");

                string pickNumber = PickNumber(number, threshold, "SP");

                if (pickNumber != "no")
                {
                    lbl2ndPrize.Text = number;

                    if (pickNumber == "hit")
                    {
                        lbl2ndPrize.ForeColor = System.Drawing.Color.Red;
                    }

                    count++;
                }
            }
        }

        private void Draw1stResult()
        {
            int thresholdPerc = 10;
            decimal threshold = decimal.Parse(lblTotalIncome.Text) * thresholdPerc / 100;

            int stop = 1;
            int count = 0;

            while (count < stop)
            {
                string number = GenerateRandomNo().ToString("0000");

                string pickNumber = PickNumber(number, threshold, "FP");

                if (pickNumber != "no")
                {
                    lbl1stPrize.Text = number;

                    if (pickNumber == "hit")
                    {
                        lbl1stPrize.ForeColor = System.Drawing.Color.Red;
                    }

                    count++;
                }
            }
        }

        private void ShowSummaryResult()
        {
            decimal totalIncome = Convert.ToDecimal(lblTotalIncome.Text);
            decimal totalPayout = Convert.ToDecimal(ViewState["TotalPayoutAmt"]);
            decimal totalGP = totalIncome - totalPayout;

            lblTotalPayout.Text = totalPayout.ToString("0,0.00");
            lblGP.Text = totalGP.ToString("0,0.00");

            gvSummary.DataSource = (DataTable)ViewState["Payout"];
            gvSummary.DataBind();
        }

        private string PickNumber(string number, decimal threshold, string resultType)
        {
            decimal totalPayoutAmt = 0;
            string result = "no";
            MagnumEntities db = new MagnumEntities();
            var list = db.OrderItemSplits.Where(x => x.Number == number).ToList();

            if (list.Count > 0)
            {
                // this random number match the number purchased by customer
                foreach (var data in list)
                {
                    // get the sum of total payout of this number
                    totalPayoutAmt += GetPayoutAmount(data.ID, data.OrderID, data.Number, data.CategoryCode, Convert.ToDecimal(data.Amount), resultType);
                }

                if (totalPayoutAmt > threshold)
                {
                    // NOT ALLOW TO PUBLISH -> the payout of this number is more then threshold.
                    result = "no";
                }
                else
                {
                    // ALLOW TO PUBLISH
                    if (totalPayoutAmt == 0)
                    {
                        // number hit but payout amout is 0
                        result = "not_match";
                    }
                    else
                    {
                        // number hit ->  the payout of this number is less then threshold.
                        result = "hit";
                    }
                }
            }
            else
            {
                // ALLOW PUBLISH, no customer hit this number
                result = "miss";
            }

            if (result != "no")
            {
                DataTable dtResult = (DataTable)ViewState["Result"];
                DataRow newRow = dtResult.NewRow();
                newRow["Number"] = number;
                newRow["ResultType"] = resultType;
                dtResult.Rows.Add(newRow);
            }

            return result;
        }
        
        private decimal GetPayoutAmount(int id, int? orderID, string number, string code, decimal amount, string resultType)
        {
            bool proceed = false;
            decimal payoutAmount = 0;
            MagnumEntities db = new MagnumEntities();

            switch (code)
            {
                case "N":
                    code = resultType;
                    proceed = true;
                    break;

                case "SA1":
                    if (resultType == "FP") // Only 1st Prize
                    {
                        proceed = true;
                    }
                    break;

                case "SA2":
                    if (resultType == "SP") // Only 2nd Prize
                    {
                        proceed = true;
                    }
                    break;

                case "SA3":
                    if (resultType == "TP") // Only 3rd Prize
                    {
                        proceed = true;
                    }
                    break;

                case "SA4":
                    if (resultType == "SPP") // Only Special Prize
                    {
                        proceed = true;
                    }
                    break;

                case "SA5":
                    if (resultType == "CP") // Only Consolation Prize
                    {
                        proceed = true;
                    }
                    break;

                case "SA6":
                    if (resultType == "FP" || resultType == "SP" || resultType == "TP") // Only 1st, 2nd, 3rd Prize (half normal prize)
                    {
                        proceed = true;
                    }
                    break;
            }

            if (proceed)
            {
                var rate = db.setting_CategoryRate.Where(x => x.Code == code).Select(x => x.Rate).FirstOrDefault();

                if (rate != null)
                {
                    payoutAmount = amount * Convert.ToDecimal(rate);
                    MinusMaxLoseThreshold(id, orderID, number, code, amount, rate, payoutAmount);
                }
            }
            else
            {
                payoutAmount = 0;
            }

            return payoutAmount;
        }

        private void MinusMaxLoseThreshold(int id, int? orderID, string number, string code, decimal amount, double? rate, decimal payoutAmt)
        {
            decimal maxLoseThreshold = Convert.ToDecimal(ViewState["MaxLoseThreshold"]);
            maxLoseThreshold = maxLoseThreshold - payoutAmt;
            ViewState["MaxLoseThreshold"] = maxLoseThreshold;

            decimal totalPayoutAmt = Convert.ToDecimal(ViewState["TotalPayoutAmt"]);
            totalPayoutAmt += payoutAmt;
            ViewState["TotalPayoutAmt"] = totalPayoutAmt;

            DataTable dtPayout = (DataTable)ViewState["Payout"];
            DataRow newRow = dtPayout.NewRow();
            newRow["ID"] = id;
            newRow["OrderID"] = orderID;
            newRow["Number"] = number;
            newRow["Code"] = code;
            newRow["Amount"] = amount;
            newRow["Rate"] = rate;
            newRow["PayoutAmt"] = payoutAmt;
            dtPayout.Rows.Add(newRow);
            ViewState["Payout"] = dtPayout;
        }

        private static void InitRandomNumber(int seed)
        {
            random = new Random(seed);
        }
        private static int GenerateRandomNo()
        {
            lock (syncObj)
            {
                if (random == null)
                    random = new Random(); 
                return random.Next(0000, 9999);
            }
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            string newNumber = txtEditNewNumber.Text.Trim();
            string labelID = hfEditNumberID.Value.Replace("MainContent_", "");
            Label lbl = this.Master.FindControl("MainContent").FindControl(labelID) as Label;
            lbl.Text = newNumber;

            DataTable dtResult = (DataTable)ViewState["Result"];
            DataRow[] result = dtResult.Select("Number = '" + hfEditNumber.Value + "'");

            if (result.Length > 0)
            {
                result[0]["Number"] = newNumber;
            }
        }

        protected void btnPublish_Click(object sender, EventArgs e)
        {
            DataTable dtResult = (DataTable)ViewState["Result"];
        }

        //public int GenerateRandomNo()
        //{
        //    int min = 0000;
        //    int max = 9999;

        //    rdm = new Random();
        //    return rdm.Next(min, max);
        //}
    }
}