package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2389:Boolean;
      
      private var var_2390:int;
      
      private var var_1774:Array;
      
      private var var_775:Array;
      
      private var var_776:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2389;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2390;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1774 = [];
         this.var_775 = [];
         this.var_776 = [];
         this.var_2389 = param1.readBoolean();
         this.var_2390 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1774.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_775.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_776.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
