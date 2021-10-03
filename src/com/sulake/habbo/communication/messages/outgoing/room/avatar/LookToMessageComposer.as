package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2978:int;
      
      private var var_2977:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         this.var_2978 = param1;
         this.var_2977 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2978,this.var_2977];
      }
      
      public function dispose() : void
      {
      }
   }
}
