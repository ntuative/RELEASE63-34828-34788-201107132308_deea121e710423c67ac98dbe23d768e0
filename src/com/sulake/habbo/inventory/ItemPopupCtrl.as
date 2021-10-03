package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1210:int = 1;
      
      public static const const_631:int = 2;
      
      private static const const_1163:int = 5;
      
      private static const const_1718:int = 250;
      
      private static const const_1719:int = 100;
      
      private static const const_1716:int = 180;
      
      private static const const_1717:int = 200;
       
      
      private var var_422:Timer;
      
      private var var_421:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_95:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_2160:int = 2;
      
      private var var_914:BitmapData;
      
      private var var_1131:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_422 = new Timer(const_1718,1);
         this.var_421 = new Timer(const_1719,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_95 = param1;
         this.var_95.visible = false;
         this._assets = param2;
         this.var_422.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_421.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_1131 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_914 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_422 != null)
         {
            this.var_422.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_422.stop();
            this.var_422 = null;
         }
         if(this.var_421 != null)
         {
            this.var_421.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_421.stop();
            this.var_421 = null;
         }
         this._assets = null;
         this.var_95 = null;
         this._parent = null;
         this.var_914 = null;
         this.var_1131 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_95 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_95);
         }
         this._parent = param1;
         this.var_2160 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_95.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_95.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1716,param3.width),Math.min(const_1717,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_95.width - _loc6_.width) / 2;
            this.var_95.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_421.reset();
         this.var_422.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_95.visible = true;
         this._parent.addChild(this.var_95);
         this.refreshArrow(this.var_2160);
         switch(this.var_2160)
         {
            case const_1210:
               this.var_95.x = -1 * this.var_95.width - const_1163;
               break;
            case const_631:
               this.var_95.x = this._parent.width + const_1163;
         }
         this.var_95.y = (this._parent.height - this.var_95.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_95.visible = false;
         this.var_421.reset();
         this.var_422.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_95);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_421.reset();
         this.var_422.reset();
         this.var_422.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_421.reset();
         this.var_422.reset();
         this.var_421.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_95 == null || this.var_95.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_95.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1210:
               _loc2_.bitmap = this.var_1131.clone();
               _loc2_.width = this.var_1131.width;
               _loc2_.height = this.var_1131.height;
               _loc2_.y = (this.var_95.height - this.var_1131.height) / 2;
               _loc2_.x = this.var_95.width - 1;
               break;
            case const_631:
               _loc2_.bitmap = this.var_914.clone();
               _loc2_.width = this.var_914.width;
               _loc2_.height = this.var_914.height;
               _loc2_.y = (this.var_95.height - this.var_914.height) / 2;
               _loc2_.x = -1 * this.var_914.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
