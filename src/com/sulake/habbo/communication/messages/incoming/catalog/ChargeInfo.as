package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2734:int;
      
      private var var_2735:int;
      
      private var var_1327:int;
      
      private var var_1326:int;
      
      private var var_2072:int;
      
      private var var_2733:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2734 = param1.readInteger();
         this.var_2735 = param1.readInteger();
         this.var_1327 = param1.readInteger();
         this.var_1326 = param1.readInteger();
         this.var_2072 = param1.readInteger();
         this.var_2733 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2734;
      }
      
      public function get charges() : int
      {
         return this.var_2735;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1327;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1326;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2733;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2072;
      }
   }
}
