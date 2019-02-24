using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppDataBinding
{
    public partial class DataBinding : System.Web.UI.Page
    {
        public int Transaction;
        FruitList myFruits;
        FruitCollection myCollection;
        Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                Transaction = 10;
                myCollection = new FruitCollection();
                int randomNum = random.Next(5);
               
                myCollection.AddFruit(new FruitList(FruitName.Banana, (int)FruitCost.Banana));
                myCollection.AddFruit(new FruitList(FruitName.Mango, FruitCost.Mango));
                myCollection.AddFruit(new FruitList(FruitName.orange, FruitCost.Orange));

                DropDownList1.DataSource = myCollection.GetFruitName();
                this.DataBind();
            }

            //Retrieve the fruit list object
         //   fruits = (FruitList)ViewState["fruitItems"];
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //Persit Object
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //foreach (string item in fruits.GetListItem())
            //{
            //    Label1.Text = "key is ";
            //    Label1.Text += item. + "<br/>";
            //    Label1.Text += "Value is ";
            //    Label1.Text += item.Value;

            //}
        }
    }
}