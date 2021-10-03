package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3086:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_687:IWindowContext;
      
      private var var_1288:IMouseDraggingService;
      
      private var var_1289:IMouseScalingService;
      
      private var var_1287:IMouseListenerService;
      
      private var var_1292:IFocusManagerService;
      
      private var var_1290:IToolTipAgentService;
      
      private var var_1291:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3086 = 0;
         this._root = param2;
         this.var_687 = param1;
         this.var_1288 = new WindowMouseDragger(param2);
         this.var_1289 = new WindowMouseScaler(param2);
         this.var_1287 = new WindowMouseListener(param2);
         this.var_1292 = new FocusManager(param2);
         this.var_1290 = new WindowToolTipAgent(param2);
         this.var_1291 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1288 != null)
         {
            this.var_1288.dispose();
            this.var_1288 = null;
         }
         if(this.var_1289 != null)
         {
            this.var_1289.dispose();
            this.var_1289 = null;
         }
         if(this.var_1287 != null)
         {
            this.var_1287.dispose();
            this.var_1287 = null;
         }
         if(this.var_1292 != null)
         {
            this.var_1292.dispose();
            this.var_1292 = null;
         }
         if(this.var_1290 != null)
         {
            this.var_1290.dispose();
            this.var_1290 = null;
         }
         if(this.var_1291 != null)
         {
            this.var_1291.dispose();
            this.var_1291 = null;
         }
         this._root = null;
         this.var_687 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1288;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1289;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1287;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1292;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1290;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1291;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
