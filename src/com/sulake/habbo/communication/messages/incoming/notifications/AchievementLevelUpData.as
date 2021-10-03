package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1174:int;
      
      private var var_2176:int;
      
      private var var_2502:int;
      
      private var var_2505:int;
      
      private var var_2373:int;
      
      private var var_1900:int;
      
      private var var_2503:String = "";
      
      private var var_2504:String = "";
      
      private var var_2506:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1174 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_2503 = param1.readString();
         this.var_2176 = param1.readInteger();
         this.var_2502 = param1.readInteger();
         this.var_2505 = param1.readInteger();
         this.var_2373 = param1.readInteger();
         this.var_2506 = param1.readInteger();
         this.var_2504 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1174;
      }
      
      public function get points() : int
      {
         return this.var_2176;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2502;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2505;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2373;
      }
      
      public function get badgeId() : int
      {
         return this.var_1900;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2503;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2504;
      }
      
      public function get achievementID() : int
      {
         return this.var_2506;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
