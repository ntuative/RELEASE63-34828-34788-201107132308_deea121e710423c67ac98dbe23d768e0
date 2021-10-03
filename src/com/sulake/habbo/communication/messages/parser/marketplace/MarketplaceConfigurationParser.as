package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1702:Boolean;
      
      private var var_2446:int;
      
      private var var_1811:int;
      
      private var var_1810:int;
      
      private var var_2451:int;
      
      private var var_2448:int;
      
      private var var_2447:int;
      
      private var var_2450:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1702;
      }
      
      public function get commission() : int
      {
         return this.var_2446;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1811;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1810;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2448;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2451;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2447;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2450;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1702 = param1.readBoolean();
         this.var_2446 = param1.readInteger();
         this.var_1811 = param1.readInteger();
         this.var_1810 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this.var_2451 = param1.readInteger();
         this.var_2447 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         return true;
      }
   }
}
