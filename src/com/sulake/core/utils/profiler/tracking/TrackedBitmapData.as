package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2136:int = 16777215;
      
      public static const const_1258:int = 8191;
      
      public static const const_1351:int = 8191;
      
      public static const const_2216:int = 1;
      
      public static const const_1171:int = 1;
      
      public static const const_1324:int = 1;
      
      private static var var_534:uint = 0;
      
      private static var var_533:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1258)
         {
            param2 = const_1258;
         }
         else if(param2 < const_1171)
         {
            param2 = const_1171;
         }
         if(param3 > const_1351)
         {
            param3 = const_1351;
         }
         else if(param3 < const_1324)
         {
            param3 = const_1324;
         }
         super(param2,param3,param4,param5);
         ++var_534;
         var_533 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_534;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_533;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_533 -= width * height * 4;
            --var_534;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
