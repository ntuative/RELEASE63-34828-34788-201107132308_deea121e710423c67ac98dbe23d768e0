package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_741:int = 1;
      
      public static const const_896:int = 2;
      
      public static const const_987:int = 3;
      
      public static const const_1330:int = 4;
      
      public static const const_796:int = 5;
      
      public static const const_1243:int = 6;
       
      
      private var _type:int;
      
      private var var_1333:int;
      
      private var var_2279:String;
      
      private var var_2691:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1333 = param2;
         this.var_2279 = param3;
         this.var_2691 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2279;
      }
      
      public function get time() : String
      {
         return this.var_2691;
      }
      
      public function get senderId() : int
      {
         return this.var_1333;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
