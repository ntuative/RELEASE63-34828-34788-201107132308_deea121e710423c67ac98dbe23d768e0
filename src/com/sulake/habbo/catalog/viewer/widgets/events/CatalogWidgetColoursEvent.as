package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1016:Array;
      
      private var var_2312:String;
      
      private var var_2313:String;
      
      private var var_2314:String;
      
      private var _index:int;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param6,param7);
         this.var_1016 = param1;
         this.var_2312 = param2;
         this.var_2313 = param3;
         this.var_2314 = param4;
         this._index = param5;
      }
      
      public function get colours() : Array
      {
         return this.var_1016;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2312;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2313;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2314;
      }
      
      public function get index() : int
      {
         return this._index;
      }
   }
}
