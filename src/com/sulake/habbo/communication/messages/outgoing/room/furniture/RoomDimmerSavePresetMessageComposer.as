package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2422:int;
      
      private var var_2420:int;
      
      private var var_2899:String;
      
      private var var_2901:int;
      
      private var var_2900:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2422 = param1;
         this.var_2420 = param2;
         this.var_2899 = param3;
         this.var_2901 = param4;
         this.var_2900 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2422,this.var_2420,this.var_2899,this.var_2901,int(this.var_2900)];
      }
      
      public function dispose() : void
      {
      }
   }
}
