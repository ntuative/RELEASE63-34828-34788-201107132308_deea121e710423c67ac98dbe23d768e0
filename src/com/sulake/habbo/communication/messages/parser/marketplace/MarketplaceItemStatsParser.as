package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2790:int;
      
      private var var_2792:int;
      
      private var var_2793:int;
      
      private var _dayOffsets:Array;
      
      private var var_2043:Array;
      
      private var var_2042:Array;
      
      private var var_2794:int;
      
      private var var_2791:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2790 = param1.readInteger();
         this.var_2792 = param1.readInteger();
         this.var_2793 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2043 = [];
         this.var_2042 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2043.push(param1.readInteger());
            this.var_2042.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2791 = param1.readInteger();
         this.var_2794 = param1.readInteger();
         return true;
      }
   }
}
