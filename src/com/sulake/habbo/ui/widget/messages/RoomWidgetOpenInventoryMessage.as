package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_742:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1951:String = "inventory_effects";
      
      public static const const_1362:String = "inventory_badges";
      
      public static const const_1970:String = "inventory_clothes";
      
      public static const const_1950:String = "inventory_furniture";
       
      
      private var var_2650:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_742);
         this.var_2650 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2650;
      }
   }
}
