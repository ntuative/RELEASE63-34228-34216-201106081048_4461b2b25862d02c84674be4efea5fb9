package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetDanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_822:String = "RWUE_DANCE";
       
      
      private var var_86:int;
      
      public function RoomWidgetDanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_822,param2,param3);
         this.var_86 = param1;
      }
      
      public function get style() : int
      {
         return this.var_86;
      }
   }
}
