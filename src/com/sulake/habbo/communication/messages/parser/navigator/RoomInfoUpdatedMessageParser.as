package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomInfoUpdatedMessageParser implements IMessageParser
   {
       
      
      private var var_380:int;
      
      public function RoomInfoUpdatedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_380 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_380;
      }
   }
}
