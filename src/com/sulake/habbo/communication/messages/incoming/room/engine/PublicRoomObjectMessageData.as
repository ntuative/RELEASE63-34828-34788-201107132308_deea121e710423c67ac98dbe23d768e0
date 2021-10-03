package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_490:int = 0;
      
      private var var_543:int = 0;
      
      private var var_643:int = 0;
      
      private var var_194:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_194 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_194)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_194)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_194)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_172 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_171 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_490;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_194)
         {
            this.var_490 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_543;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_194)
         {
            this.var_543 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_643;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_194)
         {
            this.var_643 = param1;
         }
      }
   }
}
