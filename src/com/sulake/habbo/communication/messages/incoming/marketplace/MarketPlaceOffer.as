package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1135:int;
      
      private var _furniId:int;
      
      private var var_2842:int;
      
      private var var_2197:String;
      
      private var var_2101:int;
      
      private var var_417:int;
      
      private var var_2841:int = -1;
      
      private var var_2412:int;
      
      private var var_2102:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1135 = param1;
         this._furniId = param2;
         this.var_2842 = param3;
         this.var_2197 = param4;
         this.var_2101 = param5;
         this.var_417 = param6;
         this.var_2841 = param7;
         this.var_2412 = param8;
         this.var_2102 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1135;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2842;
      }
      
      public function get stuffData() : String
      {
         return this.var_2197;
      }
      
      public function get price() : int
      {
         return this.var_2101;
      }
      
      public function get status() : int
      {
         return this.var_417;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2841;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2412;
      }
      
      public function get offerCount() : int
      {
         return this.var_2102;
      }
   }
}
