package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_427:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1224:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1238:String = "RWOCM_PIXELS";
      
      public static const const_1205:String = "RWOCM_CREDITS";
       
      
      private var var_2463:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_427);
         this.var_2463 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2463;
      }
   }
}
