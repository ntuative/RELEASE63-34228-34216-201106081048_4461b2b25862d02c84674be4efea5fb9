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
         param1["background"] = const_819;
         param1["bitmap"] = const_498;
         param1["border"] = const_874;
         param1["border_notify"] = const_1834;
         param1["bubble"] = const_946;
         param1["bubble_pointer_up"] = const_1215;
         param1["bubble_pointer_right"] = const_1241;
         param1["bubble_pointer_down"] = const_1186;
         param1["bubble_pointer_left"] = const_1277;
         param1["button"] = const_499;
         param1["button_thick"] = const_956;
         param1["button_icon"] = const_1827;
         param1["button_group_left"] = const_930;
         param1["button_group_center"] = const_831;
         param1["button_group_right"] = const_750;
         param1["canvas"] = const_714;
         param1["checkbox"] = const_963;
         param1["closebutton"] = const_1349;
         param1["container"] = const_411;
         param1["container_button"] = const_780;
         param1["display_object_wrapper"] = const_785;
         param1["dropmenu"] = const_566;
         param1["dropmenu_item"] = const_513;
         param1["frame"] = const_418;
         param1["frame_notify"] = const_1922;
         param1["header"] = const_873;
         param1["html"] = const_1314;
         param1["icon"] = const_1288;
         param1["itemgrid"] = const_1351;
         param1["itemgrid_horizontal"] = const_593;
         param1["itemgrid_vertical"] = const_925;
         param1["itemlist"] = const_1342;
         param1["itemlist_horizontal"] = const_384;
         param1["itemlist_vertical"] = const_381;
         param1["label"] = const_967;
         param1["maximizebox"] = const_1902;
         param1["menu"] = const_1696;
         param1["menu_item"] = const_1722;
         param1["submenu"] = const_1175;
         param1["minimizebox"] = const_1845;
         param1["notify"] = const_1945;
         param1["null"] = const_969;
         param1["password"] = const_765;
         param1["radiobutton"] = const_905;
         param1["region"] = const_406;
         param1["restorebox"] = const_1785;
         param1["scaler"] = const_589;
         param1["scaler_horizontal"] = const_1848;
         param1["scaler_vertical"] = const_1800;
         param1["scrollbar_horizontal"] = const_600;
         param1["scrollbar_vertical"] = const_910;
         param1["scrollbar_slider_button_up"] = const_1141;
         param1["scrollbar_slider_button_down"] = const_1281;
         param1["scrollbar_slider_button_left"] = const_1214;
         param1["scrollbar_slider_button_right"] = const_1211;
         param1["scrollbar_slider_bar_horizontal"] = const_1264;
         param1["scrollbar_slider_bar_vertical"] = const_1227;
         param1["scrollbar_slider_track_horizontal"] = const_1219;
         param1["scrollbar_slider_track_vertical"] = const_1363;
         param1["scrollable_itemlist"] = const_1727;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1160;
         param1["selector"] = const_987;
         param1["selector_list"] = const_766;
         param1["submenu"] = const_1175;
         param1["tab_button"] = const_882;
         param1["tab_container_button"] = const_1332;
         param1["tab_context"] = const_385;
         param1["tab_content"] = const_1181;
         param1["tab_selector"] = const_990;
         param1["text"] = const_890;
         param1["input"] = const_776;
         param1["toolbar"] = const_1739;
         param1["tooltip"] = const_439;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
