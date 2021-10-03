package com.sulake.core.window.components
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.geom.Rectangle;
   
   public class InteractiveController extends WindowController implements IInteractiveWindow
   {
       
      
      protected var var_1717:uint;
      
      protected var var_1429:String;
      
      protected var _cursorByState:Map;
      
      public function InteractiveController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         this.var_1717 = PropertyDefaults.const_953;
         this.var_1429 = PropertyDefaults.const_433;
         param4 |= 0;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public static function processInteractiveWindowEvents(param1:IInteractiveWindow, param2:WindowEvent) : void
      {
         if(param1.toolTipCaption != PropertyDefaults.const_433)
         {
            if(param2.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
            {
               param1.context.getWindowServices().getToolTipAgentService().begin(param1);
            }
            else if(param2.type != WindowMouseEvent.const_188)
            {
               if(param2.type == WindowMouseEvent.const_25)
               {
                  param1.context.getWindowServices().getToolTipAgentService().end(param1);
               }
            }
         }
      }
      
      public static function readInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in param2)
         {
            switch(_loc3_.key)
            {
               case PropertyDefaults.const_843:
                  if(_loc3_.value != param1.toolTipCaption)
                  {
                     param1.toolTipCaption = _loc3_.value as String;
                  }
                  break;
               case PropertyDefaults.const_825:
                  if(_loc3_.value != param1.toolTipDelay)
                  {
                     param1.toolTipDelay = _loc3_.value as uint;
                  }
                  break;
            }
         }
      }
      
      public static function writeInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : Array
      {
         if(param1.toolTipCaption != PropertyDefaults.const_433)
         {
            param2.push(new PropertyStruct(PropertyDefaults.const_843,param1.toolTipCaption,PropertyStruct.const_51,true));
         }
         else
         {
            param2.push(PropertyDefaults.const_1803);
         }
         if(param1.toolTipDelay != PropertyDefaults.const_953)
         {
            param2.push(new PropertyStruct(PropertyDefaults.const_825,param1.toolTipDelay,PropertyStruct.const_305,true));
         }
         else
         {
            param2.push(PropertyDefaults.TOOL_TIP_DELAY);
         }
         return param2;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         this.var_1429 = param1 == null ? "null" : param1;
      }
      
      public function get toolTipCaption() : String
      {
         return this.var_1429;
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         this.var_1717 = param1;
      }
      
      public function get toolTipDelay() : uint
      {
         return this.var_1717;
      }
      
      public function setMouseCursorForState(param1:uint, param2:uint) : uint
      {
         if(!this._cursorByState)
         {
            this._cursorByState = new Map();
         }
         var _loc3_:uint = this._cursorByState[param1];
         if(param2 == MouseCursorType.const_31 || param2 == -1)
         {
            this._cursorByState.remove(param1);
         }
         else
         {
            this._cursorByState[param1] = param2;
         }
         return _loc3_;
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         if(!this._cursorByState)
         {
            return MouseCursorType.const_31;
         }
         return this._cursorByState.getValue(param1);
      }
      
      override public function update(param1:WindowController, param2:WindowEvent) : Boolean
      {
         if(param1 == this)
         {
            processInteractiveWindowEvents(this,param2);
         }
         return super.update(param1,param2);
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
      }
      
      public function hideToolTip() : void
      {
      }
      
      override public function get properties() : Array
      {
         return writeInteractiveWindowProperties(this,super.properties);
      }
      
      override public function set properties(param1:Array) : void
      {
         readInteractiveWindowProperties(this,param1);
         super.properties = param1;
      }
   }
}