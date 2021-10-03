package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_829:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_324:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_829);
         this.var_324 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_324;
      }
   }
}
