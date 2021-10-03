package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_380:int;
      
      private var var_790:Boolean;
      
      private var var_1010:String;
      
      private var _ownerName:String;
      
      private var var_2554:int;
      
      private var var_2330:int;
      
      private var var_2802:int;
      
      private var var_1733:String;
      
      private var var_2803:int;
      
      private var var_2804:Boolean;
      
      private var var_887:int;
      
      private var var_1671:int;
      
      private var var_2801:String;
      
      private var var_941:Array;
      
      private var var_2799:RoomThumbnailData;
      
      private var var_2559:Boolean;
      
      private var var_2800:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_941 = new Array();
         super();
         this.var_380 = param1.readInteger();
         this.var_790 = param1.readBoolean();
         this.var_1010 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2554 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         this.var_2802 = param1.readInteger();
         this.var_1733 = param1.readString();
         this.var_2803 = param1.readInteger();
         this.var_2804 = param1.readBoolean();
         this.var_887 = param1.readInteger();
         this.var_1671 = param1.readInteger();
         this.var_2801 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_941.push(_loc4_);
            _loc3_++;
         }
         this.var_2799 = new RoomThumbnailData(param1);
         this.var_2559 = param1.readBoolean();
         this.var_2800 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_941 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_380;
      }
      
      public function get event() : Boolean
      {
         return this.var_790;
      }
      
      public function get roomName() : String
      {
         return this.var_1010;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2554;
      }
      
      public function get userCount() : int
      {
         return this.var_2330;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2802;
      }
      
      public function get description() : String
      {
         return this.var_1733;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2803;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2804;
      }
      
      public function get score() : int
      {
         return this.var_887;
      }
      
      public function get categoryId() : int
      {
         return this.var_1671;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2801;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2799;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2559;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2800;
      }
   }
}
