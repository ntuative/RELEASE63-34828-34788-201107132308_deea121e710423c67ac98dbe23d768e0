package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2789:int;
      
      private var var_2040:Boolean;
      
      private var var_2041:Boolean;
      
      private var var_47:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_47 = param4;
         this.var_2789 = param1;
         this.var_2040 = param2;
         this.var_2041 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2789;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2040;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2041;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2040 || this.var_2041;
      }
      
      public function get border() : Boolean
      {
         return this.var_47;
      }
   }
}
