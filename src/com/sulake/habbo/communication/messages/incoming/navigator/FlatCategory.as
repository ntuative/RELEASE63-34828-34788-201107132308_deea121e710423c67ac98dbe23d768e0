package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_2058:int;
      
      private var var_2380:String;
      
      private var var_345:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_2058 = param1.readInteger();
         this.var_2380 = param1.readString();
         this.var_345 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_2058;
      }
      
      public function get nodeName() : String
      {
         return this.var_2380;
      }
      
      public function get visible() : Boolean
      {
         return this.var_345;
      }
   }
}
