package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1682:Boolean;
      
      private var var_1983:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1682;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1983;
      }
      
      public function flush() : Boolean
      {
         this.var_1682 = false;
         this.var_1983 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1682 = param1.readInteger() > 0;
         this.var_1983 = param1.readInteger();
         return true;
      }
   }
}
