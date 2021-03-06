package com.sulake.habbo.communication.messages.parser.room.camera
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CameraSnapshotMessageParser implements IMessageParser
   {
       
      
      private var var_1503:String = "";
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function CameraSnapshotMessageParser()
      {
         super();
      }
      
      public function get roomType() : String
      {
         return this.var_1503;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function flush() : Boolean
      {
         this.var_1503 = "";
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1503 = param1.readString();
         this._roomId = param1.readInteger();
         if(this.var_1503.indexOf("model_") < 0)
         {
            this._roomCategory = 1;
         }
         return true;
      }
   }
}
