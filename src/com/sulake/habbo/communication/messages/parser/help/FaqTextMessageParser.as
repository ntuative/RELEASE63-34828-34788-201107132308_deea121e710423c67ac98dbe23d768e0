package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2198:int;
      
      private var var_2197:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2198;
      }
      
      public function get answerText() : String
      {
         return this.var_2197;
      }
      
      public function flush() : Boolean
      {
         this.var_2198 = -1;
         this.var_2197 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2198 = param1.readInteger();
         this.var_2197 = param1.readString();
         return true;
      }
   }
}
