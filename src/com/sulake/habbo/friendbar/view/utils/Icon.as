package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2337:int = 0;
      
      protected static const const_467:int = 1;
      
      protected static const const_2049:int = 2;
      
      protected static const const_2050:int = 3;
      
      protected static const const_125:int = 4;
      
      protected static const const_466:int = 8;
      
      protected static const const_297:int = 18;
      
      protected static const const_2051:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1765:Boolean = false;
      
      protected var var_48:BitmapDataAsset;
      
      protected var var_99:IBitmapWrapperWindow;
      
      private var var_1247:uint;
      
      protected var var_223:Timer;
      
      protected var _frame:int = 0;
      
      private var var_657:Point;
      
      protected var var_937:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1247 = const_467 | const_466;
         this.var_657 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1765;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_48 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_48;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_99 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_99;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1247 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1247;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_937 = param1;
         if(this.var_937 && this.var_1765)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1765 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_99 && !this.var_99.disposed)
         {
            if(!this.var_99.bitmap)
            {
               this.var_99.bitmap = new BitmapData(this.var_99.width,this.var_99.height,true,0);
            }
            else
            {
               this.var_99.bitmap.fillRect(this.var_99.bitmap.rect,0);
            }
            if(this.var_48 && !this.var_48.disposed)
            {
               this.var_657.x = this.var_657.y = 0;
               _loc1_ = this.var_48.content as BitmapData;
               switch(this.var_1247 & const_2050)
               {
                  case const_467:
                     this.var_657.x = this.var_99.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_2049:
                     this.var_657.x = this.var_99.bitmap.width - _loc1_.width;
               }
               switch(this.var_1247 & const_2051)
               {
                  case const_466:
                     this.var_657.y = this.var_99.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_297:
                     this.var_657.y = this.var_99.bitmap.height - _loc1_.height;
               }
               this.var_99.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_657);
               this.var_99.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_223)
            {
               this.var_223 = new Timer(param2,0);
               this.var_223.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_223.start();
               this.onTimerEvent(null);
            }
            this.var_223.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_223)
            {
               this.var_223.reset();
               this.var_223.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_223 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
