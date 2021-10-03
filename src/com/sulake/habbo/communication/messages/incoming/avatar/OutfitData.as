package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2199:int;
      
      private var var_2372:String;
      
      private var var_1138:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2199 = param1.readInteger();
         this.var_2372 = param1.readString();
         this.var_1138 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2199;
      }
      
      public function get figureString() : String
      {
         return this.var_2372;
      }
      
      public function get gender() : String
      {
         return this.var_1138;
      }
   }
}
