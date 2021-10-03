package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_918:String = "rwcem_change_email";
       
      
      private var var_2613:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_918);
         this.var_2613 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2613;
      }
   }
}
