package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_157:String = "ROE_MOUSE_CLICK";
      
      public static const const_185:String = "ROE_MOUSE_ENTER";
      
      public static const const_671:String = "ROE_MOUSE_MOVE";
      
      public static const const_186:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2295:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_597:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2173:String = "";
      
      private var var_2460:Boolean;
      
      private var var_2458:Boolean;
      
      private var var_2457:Boolean;
      
      private var var_2459:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2173 = param2;
         this.var_2460 = param5;
         this.var_2458 = param6;
         this.var_2457 = param7;
         this.var_2459 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2173;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2460;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2458;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2457;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2459;
      }
   }
}
