package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_322:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1733:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_2815:Boolean = false;
      
      private var var_2814:Boolean = false;
      
      private var var_1835:Boolean = false;
      
      private var var_1833:Boolean = false;
      
      private var var_2813:Boolean = false;
      
      private var var_2061:int = -1;
      
      private var var_2683:int = -1;
      
      private var var_1179:int = -1;
      
      private var var_1077:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1733 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1733;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2815 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2815;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2814 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2814;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1835 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1835;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1833 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1833;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2813 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2813;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_2061 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_2061;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2683 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2683;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1179 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1179;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1077 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1077;
      }
   }
}
