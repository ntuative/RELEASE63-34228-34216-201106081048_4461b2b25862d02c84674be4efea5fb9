package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2263:int;
      
      private var var_1408:String;
      
      private var _objId:int;
      
      private var var_1874:int;
      
      private var _category:int;
      
      private var var_2197:String;
      
      private var var_2315:Boolean;
      
      private var var_2312:Boolean;
      
      private var var_2313:Boolean;
      
      private var var_2311:Boolean;
      
      private var var_2314:int;
      
      private var var_1634:int;
      
      private var var_1921:String = "";
      
      private var var_1776:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2263 = param1;
         this.var_1408 = param2;
         this._objId = param3;
         this.var_1874 = param4;
         this._category = param5;
         this.var_2197 = param6;
         this.var_2315 = param7;
         this.var_2312 = param8;
         this.var_2313 = param9;
         this.var_2311 = param10;
         this.var_2314 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1921 = param1;
         this.var_1634 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2263;
      }
      
      public function get itemType() : String
      {
         return this.var_1408;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1874;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2197;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2315;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2312;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2313;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2311;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2314;
      }
      
      public function get slotId() : String
      {
         return this.var_1921;
      }
      
      public function get songId() : int
      {
         return this.var_1776;
      }
      
      public function get extra() : int
      {
         return this.var_1634;
      }
   }
}
