﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace YogeshIndustry.App_Code
{
    public class CartItem
    {
        private int productID;
        private string productName;
        private int quantity;
        private double price;
        private double subTotal;

        public CartItem()
        {
        }

        public CartItem(int ProductID, string ProductName, int Quantity, double Price)
        {
            productID = ProductID;
            productName = ProductName;
            quantity = Quantity;
            price = Price;
            subTotal = Quantity * Price;
        }

        public int ProductID
        {
            get
            {
                return productID;
            }
            set
            {
                productID = value;
            }
        }

        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        public double Price
        {
            get { return price; }
            set { price = value; }
        }

        public double SubTotal
        {
            get { return quantity * price; }
            set { price = value; }
        }
    }
}