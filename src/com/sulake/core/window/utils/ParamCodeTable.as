package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_197;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1322;
         param1["embedded_controller"] = const_1386;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_749;
         param1["mouse_dragging_target"] = const_306;
         param1["mouse_dragging_trigger"] = const_419;
         param1["mouse_scaling_target"] = const_351;
         param1["mouse_scaling_trigger"] = const_567;
         param1["horizontal_mouse_scaling_trigger"] = const_246;
         param1["vertical_mouse_scaling_trigger"] = const_315;
         param1["observe_parent_input_events"] = const_1303;
         param1["optimize_region_to_layout_size"] = const_626;
         param1["parent_window"] = const_1281;
         param1["relative_horizontal_scale_center"] = const_234;
         param1["relative_horizontal_scale_fixed"] = const_177;
         param1["relative_horizontal_scale_move"] = const_432;
         param1["relative_horizontal_scale_strech"] = const_453;
         param1["relative_scale_center"] = const_1275;
         param1["relative_scale_fixed"] = const_992;
         param1["relative_scale_move"] = const_1286;
         param1["relative_scale_strech"] = const_1298;
         param1["relative_vertical_scale_center"] = const_230;
         param1["relative_vertical_scale_fixed"] = const_145;
         param1["relative_vertical_scale_move"] = const_257;
         param1["relative_vertical_scale_strech"] = const_372;
         param1["on_resize_align_left"] = const_1029;
         param1["on_resize_align_right"] = const_563;
         param1["on_resize_align_center"] = const_636;
         param1["on_resize_align_top"] = const_922;
         param1["on_resize_align_bottom"] = const_675;
         param1["on_resize_align_middle"] = const_637;
         param1["on_accommodate_align_left"] = const_1294;
         param1["on_accommodate_align_right"] = const_652;
         param1["on_accommodate_align_center"] = const_763;
         param1["on_accommodate_align_top"] = const_1343;
         param1["on_accommodate_align_bottom"] = const_518;
         param1["on_accommodate_align_middle"] = const_1006;
         param1["route_input_events_to_parent"] = const_548;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1223;
         param1["scalable_with_mouse"] = const_1264;
         param1["reflect_horizontal_resize_to_parent"] = const_590;
         param1["reflect_vertical_resize_to_parent"] = const_678;
         param1["reflect_resize_to_parent"] = const_324;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1325;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
