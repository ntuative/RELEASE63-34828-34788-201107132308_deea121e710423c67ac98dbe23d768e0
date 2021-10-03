package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1179:int;
      
      private var var_2759:Boolean;
      
      private var var_2757:Boolean;
      
      private var var_2758:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1179 = param1.readInteger();
         this.var_2759 = param1.readBoolean();
         this.var_2758 = param1.readInteger();
         this.var_2757 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1179;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2759;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2757;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2758;
      }
   }
}
