package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1962:int;
      
      private var var_2674:String;
      
      private var var_1174:int;
      
      private var var_1207:int;
      
      private var var_1757:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1962 = param1.readInteger();
         this.var_2674 = param1.readString();
         this.var_1174 = param1.readInteger();
         this.var_1207 = param1.readInteger();
         this.var_1757 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1962;
      }
      
      public function get petName() : String
      {
         return this.var_2674;
      }
      
      public function get level() : int
      {
         return this.var_1174;
      }
      
      public function get petType() : int
      {
         return this.var_1207;
      }
      
      public function get breed() : int
      {
         return this.var_1757;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
