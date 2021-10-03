package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_775:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2422:int;
      
      private var var_2420:int;
      
      private var _color:uint;
      
      private var var_1221:int;
      
      private var var_2421:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_775);
         this.var_2422 = param1;
         this.var_2420 = param2;
         this._color = param3;
         this.var_1221 = param4;
         this.var_2421 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2422;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2420;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1221;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2421;
      }
   }
}
