package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1203:int = 0;
       
      
      private var var_468:BitmapData = null;
      
      private var var_2347:String = "";
      
      private var var_345:Boolean = true;
      
      private var var_2327:String = "";
      
      private var var_2326:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2017:String;
      
      private var var_1657:Boolean = false;
      
      private var var_1656:Boolean = false;
      
      private var _offset:Point;
      
      private var var_230:int = 0;
      
      private var _height:int = 0;
      
      private var var_1352:Number = 0;
      
      private var var_2774:Boolean = false;
      
      private var var_2771:Boolean = true;
      
      private var var_2772:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2371:int = 0;
      
      private var var_2773:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_2017 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2371 = var_1203++;
      }
      
      public function dispose() : void
      {
         this.var_468 = null;
         this.var_230 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_468;
      }
      
      public function get assetName() : String
      {
         return this.var_2347;
      }
      
      public function get visible() : Boolean
      {
         return this.var_345;
      }
      
      public function get tag() : String
      {
         return this.var_2327;
      }
      
      public function get alpha() : int
      {
         return this.var_2326;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2017;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1656;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1657;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_230;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1352;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2774;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2771;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2772;
      }
      
      public function get instanceId() : int
      {
         return this.var_2371;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2773;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_230 = param1.width;
            this._height = param1.height;
         }
         this.var_468 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2347 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_345 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2327 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2326 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2017 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2773 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1657 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1656 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1352 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2774 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2771 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2772 = param1;
         ++this._updateID;
      }
   }
}
