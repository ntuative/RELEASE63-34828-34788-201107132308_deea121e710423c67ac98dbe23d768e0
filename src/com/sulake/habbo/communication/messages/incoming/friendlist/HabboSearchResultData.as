package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2335:int;
      
      private var var_2064:String;
      
      private var var_2432:String;
      
      private var var_2434:Boolean;
      
      private var var_2431:Boolean;
      
      private var var_2429:int;
      
      private var var_2430:String;
      
      private var var_2433:String;
      
      private var var_1761:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2335 = param1.readInteger();
         this.var_2064 = param1.readString();
         this.var_2432 = param1.readString();
         this.var_2434 = param1.readBoolean();
         this.var_2431 = param1.readBoolean();
         param1.readString();
         this.var_2429 = param1.readInteger();
         this.var_2430 = param1.readString();
         this.var_2433 = param1.readString();
         this.var_1761 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2335;
      }
      
      public function get avatarName() : String
      {
         return this.var_2064;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2432;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2434;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2431;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2429;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2430;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2433;
      }
      
      public function get realName() : String
      {
         return this.var_1761;
      }
   }
}
