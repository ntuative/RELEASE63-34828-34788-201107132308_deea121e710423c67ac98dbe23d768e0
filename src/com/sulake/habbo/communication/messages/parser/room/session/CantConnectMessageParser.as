package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1976:int = 1;
      
      public static const const_2313:int = 2;
      
      public static const const_1998:int = 3;
      
      public static const const_2030:int = 4;
       
      
      private var var_1526:int = 0;
      
      private var var_1527:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1526 = 0;
         this.var_1527 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1526 = param1.readInteger();
         if(this.var_1526 == 3)
         {
            this.var_1527 = param1.readString();
         }
         else
         {
            this.var_1527 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1526;
      }
      
      public function get parameter() : String
      {
         return this.var_1527;
      }
   }
}
