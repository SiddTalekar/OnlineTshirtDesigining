using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTshirtDesign
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {

            }
            List<Table> orderedProductList = new List<Table>();
            int productCatCount = 5;

            for (int i = 0; i < 2; i++)
            {
                Table table = new Table();
                table.ID = "TableUserOrder" + i.ToString();
                table.CssClass = "table";

                TableHeaderRow tr = new TableHeaderRow();

                for (int thead = 0; thead < productCatCount; thead++)
                {
                    /*<thead> <tr><th></th> </tr></thead>*/

                    tr.TableSection = TableRowSection.TableHeader;
                    TableHeaderCell th = new TableHeaderCell();
                    th.Text = "Product (" + thead.ToString() + ")";
                    tr.Cells.Add(th);
                    table.Rows.Add(tr);
                }

                tr = new TableHeaderRow();

                Panel pannelUserOrderedProductInfo0 = new Panel(); // which will create panel in td
                pannelUserOrderedProductInfo0.ID = "PannelUserOrderedProductInfo";
                pannelUserOrderedProductInfo0.CssClass = "item-img display-cell align-top";

                Panel pannelUserOrderedProductInfo1 = new Panel(); // which will create panel in td

                Panel pannelUserOrderedProductInfo2 = new Panel(); // which will create panel in td

                Panel pannelUserOrderedProductChoices = new Panel(); // which will create panel in td


                Image productImage = new Image();
                productImage.ImageUrl = "../Images/Home/10.jpg";
                productImage.CssClass = "img-responsive";

                Label labelUserOrderedProductName = new Label();
                labelUserOrderedProductName.Text = "Linen Full sleeve shirt";
                labelUserOrderedProductName.Text += "Product Code";
                
                Button userProductChoiceCancel = new Button();
                userProductChoiceCancel.ID = "ButtonUserProductChoiceCancel";
                userProductChoiceCancel.CssClass = "btn order-action--btn text-uppercase";
                userProductChoiceCancel.Text = "Cancel purchase";


                Button userProductChoiceOrderdtl = new Button();
                userProductChoiceOrderdtl.ID = "ButtonUserProductChoiceOrderDtl";
                userProductChoiceOrderdtl.CssClass = "btn order-action--btn text-uppercase";
                userProductChoiceOrderdtl.Text = "order detail";

                Button userProductChoiceOrderdInvoice = new Button();
                userProductChoiceOrderdInvoice.ID = "ButtonUserProductChoiceOrderInvoi";
                userProductChoiceOrderdInvoice.CssClass = "btn order-action--btn text-uppercase";
                userProductChoiceOrderdInvoice.Text = "Download invoice";

                
                // add image to 1st pannel 
                pannelUserOrderedProductInfo0.Controls.Add(productImage);

                //add label to another pannel
                pannelUserOrderedProductInfo1.Controls.Add(labelUserOrderedProductName);

                //add buttons in third panel
                pannelUserOrderedProductInfo2.Controls.Add(userProductChoiceCancel);
                pannelUserOrderedProductInfo2.Controls.Add(userProductChoiceOrderdtl);
                pannelUserOrderedProductInfo2.Controls.Add(userProductChoiceOrderdInvoice);


                for (int tbody = 0; tbody < 3; tbody++)
                {
                    /*<tbody><tr><td></tr>*/

                    tr.TableSection = TableRowSection.TableBody;
                    TableCell td = new TableCell();

                    // 1st add image in td
                 
                  td.Text = "Microsoft (" + tbody.ToString() + ")";
                    tr.Cells[0].Controls.Add(td);
                    //tr.Cells[1].Controls.Add(pannelUserOrderedProductInfo1);
                    //tr.Cells[2].Controls.Add(pannelUserOrderedProductInfo2);

                    table.Rows.Add(tr);
                }
                orderedProductList.Add(table);
            }

            foreach (Table item in orderedProductList)
            {
                PanelUserOrderTable.Controls.Add(item);
            }
        }
    }
}