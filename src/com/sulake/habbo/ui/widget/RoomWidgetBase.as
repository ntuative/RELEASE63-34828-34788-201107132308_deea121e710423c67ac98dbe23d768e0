package com.sulake.habbo.ui.widget
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.core.window.IWindow;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class RoomWidgetBase implements IRoomWidget
   {
       
      
      private var _disposed:Boolean = false;
      
      private var _events:EventDispatcher;
      
      private var var_183:IRoomWidgetMessageListener;
      
      private var _windowManager:IHabboWindowManager;
      
      protected var _assets:IAssetLibrary;
      
      protected var var_76:IHabboLocalizationManager;
      
      protected var var_943:IRoomWidgetHandler;
      
      public function RoomWidgetBase(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary = null, param4:IHabboLocalizationManager = null)
      {
         super();
         this.var_943 = param1;
         this._windowManager = param2;
         this._assets = param3;
         this.var_76 = param4;
      }
      
      public function get state() : int
      {
         return 0;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function initialize(param1:int = 0) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this.var_183 = null;
         this._windowManager = null;
         if(this._events != null && !this._events.disposed)
         {
            this.unregisterUpdateEvents(this._events);
         }
         if(this.var_943)
         {
            this.var_943.dispose();
            this.var_943 = null;
         }
         this._events = null;
         this._assets = null;
         this.var_76 = null;
         this._disposed = true;
      }
      
      public function set messageListener(param1:IRoomWidgetMessageListener) : void
      {
         this.var_183 = param1;
      }
      
      public function get messageListener() : IRoomWidgetMessageListener
      {
         return this.var_183;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get assets() : IAssetLibrary
      {
         return this._assets;
      }
      
      public function get localizations() : IHabboLocalizationManager
      {
         return this.var_76;
      }
      
      public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 is EventDispatcher)
         {
            this._events = param1 as EventDispatcher;
         }
      }
      
      public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
      }
      
      public function get mainWindow() : IWindow
      {
         return null;
      }
   }
}
