package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2161:int = 0;
      
      private var var_1494:Dictionary;
      
      private var var_1819:int = 0;
      
      private var var_1820:int = 0;
      
      private var var_2463:Boolean = false;
      
      private var var_2462:int = 0;
      
      private var var_2461:int = 0;
      
      private var var_2464:Boolean = false;
      
      public function Purse()
      {
         this.var_1494 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2161;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1819;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1819 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1820;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1820 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1819 > 0 || this.var_1820 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2463;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2464;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2463 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2462;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2462 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2461;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2461 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1494;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1494 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1494[param1];
      }
   }
}
