package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_395:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_580:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1404:int;
      
      private var var_2442:Boolean;
      
      private var var_566:Boolean;
      
      private var var_2164:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1404 = param2;
         this.var_2442 = param3;
         this.var_566 = param4;
         this.var_2164 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1404;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2442;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_566;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_2164;
      }
   }
}
