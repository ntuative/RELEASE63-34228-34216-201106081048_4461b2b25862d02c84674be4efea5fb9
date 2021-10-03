package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class AdEvent extends Event
   {
      
      public static const const_762:String = "AE_ROOM_AD_IMAGE_LOADED";
      
      public static const const_986:String = "AE_ROOM_AD_IMAGE_LOADING_FAILED";
      
      public static const const_582:String = "AE_ROOM_AD_SHOW";
      
      public static const const_545:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_500:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_48:BitmapData;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var _imageUrl:String;
      
      private var var_1267:String;
      
      private var var_2621:BitmapData;
      
      private var var_2622:BitmapData;
      
      private var var_228:int;
      
      public function AdEvent(param1:String, param2:int = 0, param3:int = 0, param4:BitmapData = null, param5:String = "", param6:String = "", param7:BitmapData = null, param8:BitmapData = null, param9:int = -1, param10:Boolean = false, param11:Boolean = false)
      {
         super(param1,param10,param11);
         this.var_48 = param4;
         this._roomId = param2;
         this._roomCategory = param3;
         this._imageUrl = param5;
         this.var_1267 = param6;
         this.var_2621 = param7;
         this.var_2622 = param8;
         this.var_228 = param9;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1267;
      }
      
      public function get adWarningL() : BitmapData
      {
         return this.var_2621;
      }
      
      public function get adWarningR() : BitmapData
      {
         return this.var_2622;
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
   }
}
