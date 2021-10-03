package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_838;
         param1["badge"] = const_945;
         param1["bitmap"] = const_414;
         param1["border"] = const_789;
         param1["border_notify"] = const_1767;
         param1["bubble"] = const_793;
         param1["bubble_pointer_up"] = const_1318;
         param1["bubble_pointer_right"] = const_1364;
         param1["bubble_pointer_down"] = const_1226;
         param1["bubble_pointer_left"] = const_1328;
         param1["button"] = const_556;
         param1["button_thick"] = const_878;
         param1["button_icon"] = const_1744;
         param1["button_group_left"] = const_965;
         param1["button_group_center"] = const_859;
         param1["button_group_right"] = const_988;
         param1["canvas"] = const_936;
         param1["checkbox"] = const_970;
         param1["closebutton"] = const_1230;
         param1["container"] = const_412;
         param1["container_button"] = const_815;
         param1["display_object_wrapper"] = const_903;
         param1["dropmenu"] = const_669;
         param1["dropmenu_item"] = const_547;
         param1["frame"] = const_439;
         param1["frame_notify"] = const_1959;
         param1["header"] = const_993;
         param1["html"] = const_1309;
         param1["icon"] = const_1354;
         param1["itemgrid"] = const_1327;
         param1["itemgrid_horizontal"] = const_504;
         param1["itemgrid_vertical"] = const_779;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_459;
         param1["itemlist_vertical"] = const_440;
         param1["label"] = const_920;
         param1["maximizebox"] = const_1963;
         param1["menu"] = const_1755;
         param1["menu_item"] = const_1822;
         param1["submenu"] = const_1270;
         param1["minimizebox"] = const_1927;
         param1["notify"] = const_1873;
         param1["null"] = const_904;
         param1["password"] = const_887;
         param1["radiobutton"] = const_872;
         param1["region"] = const_379;
         param1["restorebox"] = const_1934;
         param1["scaler"] = const_509;
         param1["scaler_horizontal"] = const_1838;
         param1["scaler_vertical"] = const_1758;
         param1["scrollbar_horizontal"] = const_610;
         param1["scrollbar_vertical"] = const_879;
         param1["scrollbar_slider_button_up"] = const_1198;
         param1["scrollbar_slider_button_down"] = const_1372;
         param1["scrollbar_slider_button_left"] = const_1221;
         param1["scrollbar_slider_button_right"] = const_1222;
         param1["scrollbar_slider_bar_horizontal"] = const_1280;
         param1["scrollbar_slider_bar_vertical"] = const_1290;
         param1["scrollbar_slider_track_horizontal"] = const_1219;
         param1["scrollbar_slider_track_vertical"] = const_1295;
         param1["scrollable_itemlist"] = const_1882;
         param1["scrollable_itemlist_vertical"] = const_521;
         param1["scrollable_itemlist_horizontal"] = const_1183;
         param1["selector"] = const_782;
         param1["selector_list"] = const_891;
         param1["submenu"] = const_1270;
         param1["tab_button"] = const_886;
         param1["tab_container_button"] = const_1186;
         param1["tab_context"] = const_428;
         param1["tab_content"] = const_1378;
         param1["tab_selector"] = const_831;
         param1["text"] = const_991;
         param1["input"] = const_816;
         param1["toolbar"] = const_1847;
         param1["tooltip"] = const_407;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
