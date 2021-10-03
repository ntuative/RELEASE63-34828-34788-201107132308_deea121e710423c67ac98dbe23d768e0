package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1174:int;
      
      private var var_1900:String;
      
      private var var_2074:int;
      
      private var var_2502:int;
      
      private var var_2505:int;
      
      private var var_2076:int;
      
      private var var_2075:Boolean;
      
      private var _category:String;
      
      private var var_2838:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1174 = param1.readInteger();
         this.var_1900 = param1.readString();
         this.var_2074 = Math.max(1,param1.readInteger());
         this.var_2502 = param1.readInteger();
         this.var_2505 = param1.readInteger();
         this.var_2076 = param1.readInteger();
         this.var_2075 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2838 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1900;
      }
      
      public function get level() : int
      {
         return this.var_1174;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2074;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2502;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2505;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2076;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2075;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2838;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1174 > 1 || this.var_2075;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2076 = this.var_2074;
      }
   }
}
