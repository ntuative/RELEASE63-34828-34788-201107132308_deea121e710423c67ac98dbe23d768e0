package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1997:String = "WE_DESTROY";
      
      public static const const_363:String = "WE_DESTROYED";
      
      public static const const_1874:String = "WE_OPEN";
      
      public static const const_1891:String = "WE_OPENED";
      
      public static const const_2028:String = "WE_CLOSE";
      
      public static const const_2011:String = "WE_CLOSED";
      
      public static const const_1850:String = "WE_FOCUS";
      
      public static const const_341:String = "WE_FOCUSED";
      
      public static const const_1791:String = "WE_UNFOCUS";
      
      public static const const_2038:String = "WE_UNFOCUSED";
      
      public static const const_1763:String = "WE_ACTIVATE";
      
      public static const const_516:String = "WE_ACTIVATED";
      
      public static const const_1981:String = "WE_DEACTIVATE";
      
      public static const const_529:String = "WE_DEACTIVATED";
      
      public static const const_374:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_606:String = "WE_UNSELECT";
      
      public static const const_648:String = "WE_UNSELECTED";
      
      public static const const_2026:String = "WE_LOCK";
      
      public static const const_1805:String = "WE_LOCKED";
      
      public static const const_1826:String = "WE_UNLOCK";
      
      public static const const_1888:String = "WE_UNLOCKED";
      
      public static const const_899:String = "WE_ENABLE";
      
      public static const const_313:String = "WE_ENABLED";
      
      public static const const_959:String = "WE_DISABLE";
      
      public static const const_262:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_442:String = "WE_RELOCATED";
      
      public static const const_1368:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_2036:String = "WE_MINIMIZE";
      
      public static const const_1828:String = "WE_MINIMIZED";
      
      public static const const_2034:String = "WE_MAXIMIZE";
      
      public static const const_1864:String = "WE_MAXIMIZED";
      
      public static const const_1955:String = "WE_RESTORE";
      
      public static const const_2027:String = "WE_RESTORED";
      
      public static const const_591:String = "WE_CHILD_ADDED";
      
      public static const const_396:String = "WE_CHILD_REMOVED";
      
      public static const const_228:String = "WE_CHILD_RELOCATED";
      
      public static const const_151:String = "WE_CHILD_RESIZED";
      
      public static const const_336:String = "WE_CHILD_ACTIVATED";
      
      public static const const_578:String = "WE_PARENT_ADDED";
      
      public static const const_1920:String = "WE_PARENT_REMOVED";
      
      public static const const_1751:String = "WE_PARENT_RELOCATED";
      
      public static const const_588:String = "WE_PARENT_RESIZED";
      
      public static const const_1179:String = "WE_PARENT_ACTIVATED";
      
      public static const const_142:String = "WE_OK";
      
      public static const const_657:String = "WE_CANCEL";
      
      public static const const_113:String = "WE_CHANGE";
      
      public static const const_546:String = "WE_SCROLL";
      
      public static const const_109:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_748:IWindow;
      
      protected var var_1145:Boolean;
      
      protected var var_509:Boolean;
      
      protected var var_167:Boolean;
      
      protected var var_747:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_748 = param3;
         _loc5_.var_509 = param4;
         _loc5_.var_167 = false;
         _loc5_.var_747 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_748;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_509;
      }
      
      public function recycle() : void
      {
         if(this.var_167)
         {
            throw new Error("Event already recycled!");
         }
         this.var_748 = null;
         this._window = null;
         this.var_167 = true;
         this.var_1145 = false;
         this.var_747.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1145;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1145 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1145;
      }
      
      public function stopPropagation() : void
      {
         this.var_1145 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1145 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_509 + " window: " + this._window + " }";
      }
   }
}
