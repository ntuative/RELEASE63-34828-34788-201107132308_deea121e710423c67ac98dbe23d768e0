package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1237:int = 1;
      
      public static const const_986:int = 2;
      
      public static const const_849:int = 3;
      
      public static const const_1743:int = 4;
       
      
      private var _index:int;
      
      private var var_2473:String;
      
      private var var_2474:String;
      
      private var var_2475:Boolean;
      
      private var var_2471:String;
      
      private var var_1019:String;
      
      private var var_2472:int;
      
      private var var_2330:int;
      
      private var _type:int;
      
      private var var_2327:String;
      
      private var var_989:GuestRoomData;
      
      private var var_988:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2473 = param1.readString();
         this.var_2474 = param1.readString();
         this.var_2475 = param1.readInteger() == 1;
         this.var_2471 = param1.readString();
         this.var_1019 = param1.readString();
         this.var_2472 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1237)
         {
            this.var_2327 = param1.readString();
         }
         else if(this._type == const_849)
         {
            this.var_988 = new PublicRoomData(param1);
         }
         else if(this._type == const_986)
         {
            this.var_989 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_989 != null)
         {
            this.var_989.dispose();
            this.var_989 = null;
         }
         if(this.var_988 != null)
         {
            this.var_988.dispose();
            this.var_988 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2473;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2474;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2475;
      }
      
      public function get picText() : String
      {
         return this.var_2471;
      }
      
      public function get picRef() : String
      {
         return this.var_1019;
      }
      
      public function get folderId() : int
      {
         return this.var_2472;
      }
      
      public function get tag() : String
      {
         return this.var_2327;
      }
      
      public function get userCount() : int
      {
         return this.var_2330;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_989;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_988;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1237)
         {
            return 0;
         }
         if(this.type == const_986)
         {
            return this.var_989.maxUserCount;
         }
         if(this.type == const_849)
         {
            return this.var_988.maxUsers;
         }
         return 0;
      }
   }
}
