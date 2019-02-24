using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppDataBinding
{
    enum FruitName
    {
        Apple,
        Banana,
        Mango,
        orange
    }

    enum FruitCost
    {
        Apple = 20,
        Banana = 15,
        Mango = 80,
        Orange = 22
    }

    [Serializable]
    class FruitList
    {
        public FruitName MyFruitName { get; set; }
        public FruitCost MyFruitCost { get; set; }
        
        //Constructor
        public FruitList(FruitName theFruitName, FruitCost theFruitCost)
        {
            MyFruitName = theFruitName;
            MyFruitCost = theFruitCost;
        }

        public string Name
        {
            get
            {
                return MyFruitName.ToString();
            }
        }

        public int Cost
        {
            get
            {
                return (int)MyFruitCost;
            }
        }
    }
}