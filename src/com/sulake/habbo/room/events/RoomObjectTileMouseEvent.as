package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   
   public class RoomObjectTileMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var var_2609:Number;
      
      private var var_2608:Number;
      
      private var var_2610:Number;
      
      public function RoomObjectTileMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false)
      {
         super(param1,param2,param3,param4,param8,param9,param10,param11,param12,param13);
         this.var_2609 = param5;
         this.var_2608 = param6;
         this.var_2610 = param7;
      }
      
      public function get tileX() : Number
      {
         return this.var_2609;
      }
      
      public function get tileY() : Number
      {
         return this.var_2608;
      }
      
      public function get tileZ() : Number
      {
         return this.var_2610;
      }
   }
}
