package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_534:String = "RWTDUE_TEASER_DATA";
      
      public static const const_942:String = "RWTDUE_GIFT_DATA";
      
      public static const const_746:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_228:int;
      
      private var _data:String;
      
      private var var_417:int;
      
      private var var_187:String;
      
      private var var_2236:String;
      
      private var var_2237:Boolean;
      
      private var var_1412:int = 0;
      
      private var var_2421:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_417;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2236;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2237;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2421;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1412;
      }
      
      public function set status(param1:int) : void
      {
         this.var_417 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2236 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2237 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2421 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_228 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_187;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_187 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1412 = param1;
      }
   }
}
