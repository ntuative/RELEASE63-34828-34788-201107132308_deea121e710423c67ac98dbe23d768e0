package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_834:String = "";
      
      public static const const_401:int = 0;
      
      public static const const_634:int = 255;
      
      public static const const_766:Boolean = false;
      
      public static const const_644:int = 0;
      
      public static const const_571:int = 0;
      
      public static const const_438:int = 0;
      
      public static const const_1385:int = 1;
      
      public static const const_1346:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2327:String = "";
      
      private var var_1971:int = 0;
      
      private var var_2326:int = 255;
      
      private var var_2322:Boolean = false;
      
      private var var_2324:int = 0;
      
      private var var_2323:int = 0;
      
      private var var_2325:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2327 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2327;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1971 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1971;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2326 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2326;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2322 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2322;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2324 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2324;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2323;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2325 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2325;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
