package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_108:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_168:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_747:int = 2;
      
      public static const const_960:int = 3;
      
      public static const const_1790:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1760:String = "";
      
      private var var_2355:int;
      
      private var var_2358:int = 0;
      
      private var var_2362:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_264:Array;
      
      private var var_1618:int = 0;
      
      private var var_2294:String = "";
      
      private var var_2295:int = 0;
      
      private var var_2296:int = 0;
      
      private var var_1836:Boolean = false;
      
      private var var_1761:String = "";
      
      private var var_2270:Boolean = false;
      
      private var var_2353:Boolean = false;
      
      private var var_2364:Boolean = true;
      
      private var var_1409:int = 0;
      
      private var var_2363:Boolean = false;
      
      private var var_2360:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      private var var_2357:Boolean = false;
      
      private var var_2356:Boolean = false;
      
      private var var_2359:Boolean = false;
      
      private var var_2361:int = 0;
      
      private var var_1835:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_264 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1760 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1760;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2355;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2358;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2362 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2362;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_264 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_264;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1618 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1618;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2294 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2294;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2353 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2353;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1409 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1409;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2363;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2360 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2360;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2354;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2357 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2357;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2356 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2356;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2359 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2359;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2361;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2364;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1835 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1835;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2295;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2296;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1836 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1836;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1761 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1761;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2270 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2270;
      }
   }
}
