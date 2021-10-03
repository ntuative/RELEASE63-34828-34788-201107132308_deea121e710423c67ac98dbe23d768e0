package com.sulake.habbo.ui.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.profiler.tracking.TrackedBitmapData;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_1142:int = 3;
      
      public static const const_623:int = 2;
      
      public static const const_461:int = 1;
      
      public static const const_296:int = 0;
      
      public static const const_92:int = 39;
      
      private static const const_1045:int = 150;
      
      private static const const_1046:int = 250;
       
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _window:IWindowContainer;
      
      private var var_83:IBitmapWrapperWindow;
      
      private var var_43:IWindowContainer;
      
      private var _region:IRegionWindow;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_2300:int = 0;
      
      private var _state:int = -1;
      
      private var var_2298:BitmapData;
      
      private var var_1736:BitmapData;
      
      private var var_2297:BitmapData;
      
      private var var_1734:BitmapData;
      
      private var var_1735:BitmapData;
      
      private var var_2301:BitmapData;
      
      private var var_2299:BitmapData;
      
      private var var_2302:int = 30;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         this._widget = param1;
         this._windowManager = param2;
         this._assetLibrary = param4;
         this.var_43 = param3;
         this.var_2298 = (this._assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         this.var_1736 = (this._assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         this.var_2297 = (this._assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         this.var_1734 = (this._assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         this.var_1735 = (this._assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         this.var_2301 = (this._assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         this.var_2299 = (this._assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         this.var_83 = this._windowManager.createWindow("chat_history_bg","",HabboWindowType.const_369,HabboWindowStyle.const_31,HabboWindowParam.const_64,new Rectangle(0,0,param3.width,param3.height - const_92),null,0,0) as IBitmapWrapperWindow;
         this.var_43.addChild(this.var_83);
         this._window = this._windowManager.createWindow("chat_pulldown","",HabboWindowType.const_79,HabboWindowStyle.const_31,0 | 0,new Rectangle(0,this.var_43.height - const_92,param3.width,const_92),null,0) as IWindowContainer;
         this.var_43.addChild(this._window);
         this._region = this._windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_379,HabboWindowStyle.const_47,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_92),null,0) as IRegionWindow;
         if(this._region != null)
         {
            this._region.background = true;
            this._region.mouseThreshold = 0;
            this._region.addEventListener(WindowMouseEvent.const_46,this.onPulldownMouseDown);
            this.var_43.addChild(this._region);
            this._region.toolTipCaption = "${chat.history.drag.tooltip}";
            this._region.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         this._window.buildFromXML(_loc5_.content as XML);
         this._window.addEventListener(WindowMouseEvent.const_46,this.onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.mouseThreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_56,this.onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_46,this.onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_25,this.onCloseButtonMouseOut);
         }
         this._window.background = true;
         this._window.color = 0;
         this._window.mouseThreshold = 0;
         this.state = const_296;
         this.buildWindowGraphics();
      }
      
      public function dispose() : void
      {
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_83 != null)
         {
            this.var_83.dispose();
            this.var_83 = null;
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(this.state)
         {
            case const_623:
               this.var_83.blend += param1 / const_1046;
               this._window.blend += param1 / const_1046;
               if(this._window.blend >= 1)
               {
                  this.state = const_461;
               }
               break;
            case const_1142:
               this.var_83.blend -= param1 / const_1045;
               this._window.blend -= param1 / const_1045;
               if(this._window.blend <= 0)
               {
                  this.state = const_296;
               }
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == this._state)
         {
            return;
         }
         switch(param1)
         {
            case const_461:
               if(this._state == const_296)
               {
                  this.state = const_623;
               }
               else
               {
                  if(this._window == null || this.var_83 == null)
                  {
                     return;
                  }
                  this._window.visible = true;
                  this.var_83.visible = true;
                  this._region.visible = true;
                  this._state = param1;
               }
               break;
            case const_296:
               if(this._window == null || this.var_83 == null)
               {
                  return;
               }
               this._window.visible = false;
               this.var_83.visible = false;
               this._region.visible = false;
               this._state = param1;
               break;
            case const_623:
               if(this._window == null || this.var_83 == null)
               {
                  return;
               }
               this._window.blend = 0;
               this.var_83.blend = 0;
               this._window.visible = true;
               this.var_83.visible = true;
               this._state = param1;
               break;
            case const_1142:
               if(this._window == null || this.var_83 == null)
               {
                  return;
               }
               this._window.blend = 1;
               this.var_83.blend = 1;
               this._state = param1;
               break;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(this._window != null)
         {
            this._window.x = 0;
            this._window.y = this.var_43.height - const_92;
            this._window.width = this.var_43.width;
         }
         if(this._region != null)
         {
            this._region.x = 0;
            this._region.y = this.var_43.height - const_92;
            this._region.width = this.var_43.width - this.var_2302;
         }
         if(this.var_83 != null)
         {
            this.var_83.rectangle = this.var_43.rectangle;
            this.var_83.height -= const_92;
         }
         this.buildWindowGraphics();
      }
      
      private function buildWindowGraphics() : void
      {
         var width:int = 0;
         var height:int = 0;
         var state:int = 0;
         var destBgBitmap:BitmapData = null;
         var destGripLBitmap:BitmapData = null;
         var destGripRBitmap:BitmapData = null;
         if(this._window == null)
         {
            return;
         }
         if(this.var_2300 == this._window.width)
         {
            return;
         }
         this.var_2300 = this._window.width;
         var barBg:IBitmapWrapperWindow = this._window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var barX:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var barGripL:IBitmapWrapperWindow = this._window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var barGripR:IBitmapWrapperWindow = this._window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var barHandle:IBitmapWrapperWindow = this._window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         var gripMargin:int = 5;
         if(barX != null && barHandle != null)
         {
            barHandle.bitmap = this.var_2297;
            barHandle.disposesBitmap = false;
            barX.bitmap = this.var_1734;
            barX.disposesBitmap = false;
            this.var_2302 = this._window.width - barX.x;
         }
         barGripL.width = barHandle.x - gripMargin;
         barGripL.x = 0;
         barGripR.x = barHandle.x + barHandle.width + gripMargin;
         barGripR.width = barX.x - gripMargin - barGripR.x;
         if(barGripL.width < 0)
         {
            barGripL.width = 0;
         }
         if(barGripR.width < 0)
         {
            barGripR.width = 0;
         }
         state = 0;
         if(barBg != null && barGripL != null && barGripR != null)
         {
            try
            {
               state = 1;
               width = barBg.width;
               height = barBg.height;
               if(width > 0 && height > 0)
               {
                  destBgBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_2298,destBgBitmap);
                  barBg.disposesBitmap = true;
                  barBg.bitmap = destBgBitmap;
               }
               state = 2;
               width = barGripL.width;
               height = barGripL.height;
               if(width > 0 && height > 0)
               {
                  destGripLBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_1736,destGripLBitmap);
                  barGripL.disposesBitmap = true;
                  barGripL.bitmap = destGripLBitmap;
               }
               state = 3;
               width = barGripR.width;
               height = barGripR.height;
               if(width > 0 && height > 0)
               {
                  destGripRBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_1736,destGripRBitmap);
                  barGripR.disposesBitmap = true;
                  barGripR.bitmap = destGripRBitmap;
               }
            }
            catch(e:Error)
            {
               throw new Error(e.message + " width:" + width + " height:" + height + " state:" + state,e.errorID);
            }
         }
         if(this.var_83 == null)
         {
            return;
         }
         this.var_83.bitmap = this.var_2299;
         this.var_83.disposesBitmap = false;
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:Point = new Point();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_ + 1)
         {
            _loc4_.x = _loc5_ * param1.width;
            param2.copyPixels(param1,param1.rect,_loc4_);
            _loc5_++;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(this._widget != null)
         {
            this._widget.onPulldownMouseDown(param1);
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(this._widget != null)
         {
            this._widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_1735;
         }
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_1734;
         }
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_2301;
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_1735;
         }
      }
   }
}
