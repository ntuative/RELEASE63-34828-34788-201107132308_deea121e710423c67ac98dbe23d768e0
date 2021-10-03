package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_2598:Number = 0;
      
      private var var_2596:Number = 0;
      
      private var var_2595:Number = 0;
      
      private var var_2597:Number = 0;
      
      private var var_490:int = 0;
      
      private var var_2594:int = 0;
      
      private var var_363:Array;
      
      private var var_2593:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_363 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_172 = param3;
         this.var_171 = param4;
         this.var_2598 = param5;
         this.var_490 = param6;
         this.var_2594 = param7;
         this.var_2596 = param8;
         this.var_2595 = param9;
         this.var_2597 = param10;
         this.var_2593 = param11;
         this.var_363 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function get localZ() : Number
      {
         return this.var_2598;
      }
      
      public function get targetX() : Number
      {
         return this.var_2596;
      }
      
      public function get targetY() : Number
      {
         return this.var_2595;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2597;
      }
      
      public function get dir() : int
      {
         return this.var_490;
      }
      
      public function get dirHead() : int
      {
         return this.var_2594;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2593;
      }
      
      public function get actions() : Array
      {
         return this.var_363.slice();
      }
   }
}
