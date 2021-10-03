package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2902:String;
      
      private var var_2281:int;
      
      private var var_2707:int;
      
      private var var_2280:String;
      
      private var var_2955:int;
      
      private var var_2058:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2902 = param1.readString();
         this.var_2281 = param1.readInteger();
         this.var_2707 = param1.readInteger();
         this.var_2280 = param1.readString();
         this.var_2955 = param1.readInteger();
         this.var_2058 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2902;
      }
      
      public function get unitPort() : int
      {
         return this.var_2281;
      }
      
      public function get worldId() : int
      {
         return this.var_2707;
      }
      
      public function get castLibs() : String
      {
         return this.var_2280;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2955;
      }
      
      public function get nodeId() : int
      {
         return this.var_2058;
      }
   }
}
