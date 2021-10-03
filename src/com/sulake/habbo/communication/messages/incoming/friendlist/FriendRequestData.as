package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1351:int;
      
      private var var_2466:String;
      
      private var var_2465:int;
      
      private var var_2372:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1351 = param1.readInteger();
         this.var_2466 = param1.readString();
         this.var_2372 = param1.readString();
         this.var_2465 = this.var_1351;
      }
      
      public function get requestId() : int
      {
         return this.var_1351;
      }
      
      public function get requesterName() : String
      {
         return this.var_2466;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2465;
      }
      
      public function get figureString() : String
      {
         return this.var_2372;
      }
   }
}
