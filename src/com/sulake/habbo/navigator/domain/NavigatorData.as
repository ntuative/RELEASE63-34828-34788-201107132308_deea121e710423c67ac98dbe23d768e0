package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2078:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_221:MsgWithRequestId;
      
      private var var_673:RoomEventData;
      
      private var var_2629:Boolean;
      
      private var var_2626:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2335:int;
      
      private var var_285:GuestRoomData;
      
      private var var_1033:PublicRoomShortData;
      
      private var var_2628:int;
      
      private var var_2622:Boolean;
      
      private var var_2630:int;
      
      private var var_2623:Boolean;
      
      private var var_1930:int;
      
      private var var_2624:Boolean;
      
      private var var_1548:Array;
      
      private var var_1547:Array;
      
      private var var_2625:int;
      
      private var var_1546:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1264:Boolean;
      
      private var var_2631:int;
      
      private var var_2632:Boolean;
      
      private var var_2627:int = 0;
      
      private var var_1929:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1548 = new Array();
         this.var_1547 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_285 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_285 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1033 = null;
         this.var_285 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1033 = param1.publicSpace;
            this.var_673 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_673 != null)
         {
            this.var_673.dispose();
            this.var_673 = null;
         }
         if(this.var_1033 != null)
         {
            this.var_1033.dispose();
            this.var_1033 = null;
         }
         if(this.var_285 != null)
         {
            this.var_285.dispose();
            this.var_285 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_285 != null)
         {
            this.var_285.dispose();
         }
         this.var_285 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_673 != null)
         {
            this.var_673.dispose();
         }
         this.var_673 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_221 != null && this.var_221 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_221 != null && this.var_221 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_221 != null && this.var_221 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_221 = param1;
         this.var_1929 = param1.ad;
         this.var_1264 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_221 = param1;
         this.var_1264 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_221 = param1;
         this.var_1264 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_221 == null)
         {
            return;
         }
         this.var_221.dispose();
         this.var_221 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_1929 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_1929;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_221 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_221 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_221 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_673;
      }
      
      public function get avatarId() : int
      {
         return this.var_2335;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2629;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2626;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_285;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1033;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2622;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2630;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1930;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2623;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2631;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2628;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2624;
      }
      
      public function get adIndex() : int
      {
         return this.var_2627;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2632;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2335 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2630 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2622 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2629 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2626 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2623 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1930 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2631 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2628 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2624 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2627 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2632 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1548 = param1;
         this.var_1547 = new Array();
         for each(_loc2_ in this.var_1548)
         {
            if(_loc2_.visible)
            {
               this.var_1547.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1548;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1547;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2625 = param1.limit;
         this.var_1546 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1546 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_285.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_285 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_285.flatId;
         return this.var_1930 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1546 >= this.var_2625;
      }
      
      public function startLoading() : void
      {
         this.var_1264 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1264;
      }
   }
}
