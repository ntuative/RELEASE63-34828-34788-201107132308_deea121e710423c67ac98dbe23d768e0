package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_1016:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_690:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_1016);
         this.var_690 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_690;
      }
   }
}
