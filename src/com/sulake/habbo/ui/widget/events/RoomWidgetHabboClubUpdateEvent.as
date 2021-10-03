package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_291:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2936:int = 0;
      
      private var var_2937:int = 0;
      
      private var var_2938:int = 0;
      
      private var var_2935:Boolean = false;
      
      private var var_2207:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_291,param6,param7);
         this.var_2936 = param1;
         this.var_2937 = param2;
         this.var_2938 = param3;
         this.var_2935 = param4;
         this.var_2207 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2936;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2937;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2938;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2935;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2207;
      }
   }
}
