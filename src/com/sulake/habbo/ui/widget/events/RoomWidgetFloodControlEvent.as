package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_883:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2123:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_883,false,false);
         this.var_2123 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2123;
      }
   }
}
