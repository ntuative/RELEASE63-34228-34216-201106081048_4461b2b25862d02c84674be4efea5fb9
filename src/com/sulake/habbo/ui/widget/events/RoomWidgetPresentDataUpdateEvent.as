package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_74:String = "RWPDUE_PACKAGEINFO";
      
      public static const const_95:String = "RWPDUE_CONTENTS";
      
      public static const const_559:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_599:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_608:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_602:String = "RWPDUE_CONTENTS_WALLPAPER";
       
      
      private var var_228:int = -1;
      
      private var _text:String;
      
      private var var_25:Boolean;
      
      private var var_2644:BitmapData;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_228 = param2;
         this._text = param3;
         this.var_25 = param4;
         this.var_2644 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this.var_25;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_2644;
      }
   }
}
