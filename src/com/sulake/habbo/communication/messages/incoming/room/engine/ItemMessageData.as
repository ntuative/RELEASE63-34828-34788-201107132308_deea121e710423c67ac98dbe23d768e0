package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2509:Boolean = false;
      
      private var var_2510:int = 0;
      
      private var var_2507:int = 0;
      
      private var var_2512:int = 0;
      
      private var var_2511:int = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_490:String = "";
      
      private var _type:int = 0;
      
      private var var_3116:String = "";
      
      private var var_1647:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_194:Boolean = false;
      
      private var var_2508:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2509 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_194 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2509;
      }
      
      public function get wallX() : Number
      {
         return this.var_2510;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_2510 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2507;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_2507 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2512;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_2512 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2511;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_194)
         {
            this.var_2511 = param1;
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
      
      public function get dir() : String
      {
         return this.var_490;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_194)
         {
            this.var_490 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_194)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_194)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_194)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2508;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_194)
         {
            this.var_2508 = param1;
         }
      }
   }
}
