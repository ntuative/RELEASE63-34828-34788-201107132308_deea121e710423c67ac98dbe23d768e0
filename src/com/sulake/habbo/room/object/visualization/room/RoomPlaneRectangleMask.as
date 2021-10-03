package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2548:Number = 0.0;
      
      private var var_2547:Number = 0.0;
      
      private var var_2980:Number = 0.0;
      
      private var var_2979:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2548 = param1;
         this.var_2547 = param2;
         this.var_2980 = param3;
         this.var_2979 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2548;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2547;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2980;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2979;
      }
   }
}
