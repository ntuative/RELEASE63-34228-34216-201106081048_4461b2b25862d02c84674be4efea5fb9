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
         param1["null"] = const_191;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1316;
         param1["embedded_controller"] = const_1134;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_32;
         param1["internal_event_handling"] = const_908;
         param1["mouse_dragging_target"] = const_280;
         param1["mouse_dragging_trigger"] = const_425;
         param1["mouse_scaling_target"] = const_345;
         param1["mouse_scaling_trigger"] = const_630;
         param1["horizontal_mouse_scaling_trigger"] = const_270;
         param1["vertical_mouse_scaling_trigger"] = const_301;
         param1["observe_parent_input_events"] = const_1188;
         param1["optimize_region_to_layout_size"] = const_506;
         param1["parent_window"] = const_1150;
         param1["relative_horizontal_scale_center"] = const_201;
         param1["relative_horizontal_scale_fixed"] = const_160;
         param1["relative_horizontal_scale_move"] = const_387;
         param1["relative_horizontal_scale_strech"] = const_399;
         param1["relative_scale_center"] = const_1202;
         param1["relative_scale_fixed"] = const_895;
         param1["relative_scale_move"] = const_1323;
         param1["relative_scale_strech"] = const_1173;
         param1["relative_vertical_scale_center"] = const_220;
         param1["relative_vertical_scale_fixed"] = const_166;
         param1["relative_vertical_scale_move"] = const_240;
         param1["relative_vertical_scale_strech"] = const_365;
         param1["on_resize_align_left"] = const_992;
         param1["on_resize_align_right"] = const_536;
         param1["on_resize_align_center"] = const_596;
         param1["on_resize_align_top"] = const_977;
         param1["on_resize_align_bottom"] = const_646;
         param1["on_resize_align_middle"] = const_525;
         param1["on_accommodate_align_left"] = const_1193;
         param1["on_accommodate_align_right"] = const_586;
         param1["on_accommodate_align_center"] = const_710;
         param1["on_accommodate_align_top"] = const_1155;
         param1["on_accommodate_align_bottom"] = const_640;
         param1["on_accommodate_align_middle"] = const_858;
         param1["route_input_events_to_parent"] = const_481;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1318;
         param1["scalable_with_mouse"] = const_1153;
         param1["reflect_horizontal_resize_to_parent"] = const_633;
         param1["reflect_vertical_resize_to_parent"] = const_651;
         param1["reflect_resize_to_parent"] = const_354;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1149;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
