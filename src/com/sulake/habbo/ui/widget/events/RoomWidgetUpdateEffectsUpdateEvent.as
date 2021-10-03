package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_940:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_261:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_940,param2,param3);
         this.var_261 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_261;
      }
   }
}
