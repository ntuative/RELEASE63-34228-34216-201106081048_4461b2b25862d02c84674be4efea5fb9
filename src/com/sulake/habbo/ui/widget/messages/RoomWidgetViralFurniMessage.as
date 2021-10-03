package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_884:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_196:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_228:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_228 = param1;
      }
   }
}
