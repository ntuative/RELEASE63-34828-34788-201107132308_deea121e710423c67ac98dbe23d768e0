package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1733:String;
      
      private var var_2554:int;
      
      private var _password:String;
      
      private var var_1671:int;
      
      private var var_2552:int;
      
      private var var_941:Array;
      
      private var var_2557:Array;
      
      private var var_2559:Boolean;
      
      private var var_2553:Boolean;
      
      private var var_2558:Boolean;
      
      private var var_2555:Boolean;
      
      private var var_2550:int;
      
      private var var_2551:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2559;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2559 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2553;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2558;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2558 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2555;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2555 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2550;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2550 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2551;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2551 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1733;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1733 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2554;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2554 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1671;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1671 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2552;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2552 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_941 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2557;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2557 = param1;
      }
   }
}
