using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppDataBinding
{
    [Serializable]
    class FruitCollection
    {
        private List<FruitList> fruit;

        public void AddFruit(FruitList list)
        {
            fruit = new List<FruitList>();
            fruit.Add(list);
        }
        
        public IEnumerable<string> GetFruitName()
        {
            string[] fruitNameArray = new string[fruit.Count];

            for (int i = 0; i < fruit.Count; i++)
            {
                fruitNameArray[i] = fruit[i].Name;
            }
            return fruitNameArray;
        }

        public IEnumerable<int> GetFruitCost()
        {
            int[] fruitCostArray = new int [fruit.Count];

            for (int i = 0; i < fruit.Count; i++)
            {
               fruitCostArray[i] = fruit[i].Cost;
            }
            return fruitCostArray;
        }
    }
}