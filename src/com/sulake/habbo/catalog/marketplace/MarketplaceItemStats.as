package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2790:int;
      
      private var var_2792:int;
      
      private var var_2793:int;
      
      private var _dayOffsets:Array;
      
      private var var_2043:Array;
      
      private var var_2042:Array;
      
      private var var_2794:int;
      
      private var var_2791:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2790;
      }
      
      public function get offerCount() : int
      {
         return this.var_2792;
      }
      
      public function get historyLength() : int
      {
         return this.var_2793;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2043;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2042;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2794;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2791;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2790 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2792 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2793 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2043 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2042 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2791 = param1;
      }
   }
}
