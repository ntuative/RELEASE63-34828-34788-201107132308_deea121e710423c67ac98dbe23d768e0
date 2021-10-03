package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1724:Boolean;
      
      private var var_2284:int;
      
      private var var_2286:String;
      
      private var var_380:int;
      
      private var var_2283:int;
      
      private var var_2025:String;
      
      private var var_2285:String;
      
      private var var_2282:String;
      
      private var var_941:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_941 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1724 = false;
            return;
         }
         this.var_1724 = true;
         this.var_2284 = int(_loc2_);
         this.var_2286 = param1.readString();
         this.var_380 = int(param1.readString());
         this.var_2283 = param1.readInteger();
         this.var_2025 = param1.readString();
         this.var_2285 = param1.readString();
         this.var_2282 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_941.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2284;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2286;
      }
      
      public function get flatId() : int
      {
         return this.var_380;
      }
      
      public function get eventType() : int
      {
         return this.var_2283;
      }
      
      public function get eventName() : String
      {
         return this.var_2025;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2285;
      }
      
      public function get creationTime() : String
      {
         return this.var_2282;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1724;
      }
   }
}
