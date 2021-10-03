package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1003:String;
      
      private var var_2966:String;
      
      private var var_1761:String;
      
      private var var_2965:int;
      
      private var var_2963:String;
      
      private var var_2967:int;
      
      private var var_2968:int;
      
      private var var_2534:int;
      
      private var var_1409:int;
      
      private var var_926:int;
      
      private var var_2964:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1003 = param1.readString();
         this.var_2966 = param1.readString();
         this.var_1761 = param1.readString();
         this.var_2965 = param1.readInteger();
         this.var_2963 = param1.readString();
         this.var_2967 = param1.readInteger();
         this.var_2968 = param1.readInteger();
         this.var_2534 = param1.readInteger();
         this.var_1409 = param1.readInteger();
         this.var_926 = param1.readInteger();
         this.var_2964 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1003;
      }
      
      public function get customData() : String
      {
         return this.var_2966;
      }
      
      public function get realName() : String
      {
         return this.var_1761;
      }
      
      public function get tickets() : int
      {
         return this.var_2965;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2963;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2967;
      }
      
      public function get directMail() : int
      {
         return this.var_2968;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2534;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1409;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_926;
      }
      
      public function get identityId() : int
      {
         return this.var_2964;
      }
   }
}
