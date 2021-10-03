package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2120:int;
      
      private var var_2921:int;
      
      private var var_1537:int;
      
      private var var_2835:int;
      
      private var var_136:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2120 = param1.readInteger();
         this.var_2921 = param1.readInteger();
         this.var_1537 = param1.readInteger();
         this.var_2835 = param1.readInteger();
         this.var_136 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2120);
      }
      
      public function get callId() : int
      {
         return this.var_2120;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2921;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1537;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2835;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_136;
      }
   }
}
