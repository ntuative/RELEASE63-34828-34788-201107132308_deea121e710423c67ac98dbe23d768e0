package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1819:int = 0;
      
      private var var_1820:int = 0;
      
      private var var_2820:int = 0;
      
      private var var_2819:Boolean = false;
      
      private var var_2463:Boolean = false;
      
      private var var_2464:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1819 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1820 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2820 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2819 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2463 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1819;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1820;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2820;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2819;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2463;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2464;
      }
   }
}
