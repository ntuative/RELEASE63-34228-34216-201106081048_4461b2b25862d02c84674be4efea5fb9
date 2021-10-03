package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_888:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1233:int = 0;
      
      public static const const_1858:Array = [2,3,4];
       
      
      private var var_86:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_888);
         this.var_86 = param1;
      }
      
      public function get style() : int
      {
         return this.var_86;
      }
   }
}
