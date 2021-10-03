package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_994:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1398:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2319:String = "RWOCM_PIXELS";
      
      public static const const_2207:String = "RWOCM_CREDITS";
      
      public static const const_2149:String = "RWOCM_SHELLS";
       
      
      private var var_2909:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_994);
         this.var_2909 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2909;
      }
   }
}
