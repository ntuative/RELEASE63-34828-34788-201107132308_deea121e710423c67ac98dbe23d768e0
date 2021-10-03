package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1702:Boolean = false;
      
      private var var_2099:int;
      
      private var var_1774:Array;
      
      private var var_775:Array;
      
      private var var_776:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1702 = _loc2_.isWrappingEnabled;
         this.var_2099 = _loc2_.wrappingPrice;
         this.var_1774 = _loc2_.stuffTypes;
         this.var_775 = _loc2_.boxTypes;
         this.var_776 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1702;
      }
      
      public function get price() : int
      {
         return this.var_2099;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1774;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_775;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_776;
      }
   }
}
