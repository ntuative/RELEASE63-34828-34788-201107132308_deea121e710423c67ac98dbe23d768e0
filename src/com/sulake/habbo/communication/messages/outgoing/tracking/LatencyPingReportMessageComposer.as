package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2677:int;
      
      private var var_2675:int;
      
      private var var_2676:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2677 = param1;
         this.var_2675 = param2;
         this.var_2676 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2677,this.var_2675,this.var_2676];
      }
      
      public function dispose() : void
      {
      }
   }
}
