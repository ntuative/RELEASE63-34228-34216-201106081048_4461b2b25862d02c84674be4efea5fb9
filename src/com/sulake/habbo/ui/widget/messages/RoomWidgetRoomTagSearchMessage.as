package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_980:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2334:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_980);
         this.var_2334 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2334;
      }
   }
}
