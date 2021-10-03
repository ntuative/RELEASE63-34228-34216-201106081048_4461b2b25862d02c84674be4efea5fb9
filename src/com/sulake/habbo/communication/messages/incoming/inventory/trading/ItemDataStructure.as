package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2408:int;
      
      private var var_1408:String;
      
      private var var_2433:int;
      
      private var var_2427:int;
      
      private var _category:int;
      
      private var var_2197:String;
      
      private var var_1634:int;
      
      private var var_2429:int;
      
      private var var_2428:int;
      
      private var var_2431:int;
      
      private var var_2430:int;
      
      private var var_2432:Boolean;
      
      private var var_3037:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2408 = param1;
         this.var_1408 = param2;
         this.var_2433 = param3;
         this.var_2427 = param4;
         this._category = param5;
         this.var_2197 = param6;
         this.var_1634 = param7;
         this.var_2429 = param8;
         this.var_2428 = param9;
         this.var_2431 = param10;
         this.var_2430 = param11;
         this.var_2432 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2408;
      }
      
      public function get itemType() : String
      {
         return this.var_1408;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2433;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2427;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2197;
      }
      
      public function get extra() : int
      {
         return this.var_1634;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2429;
      }
      
      public function get creationDay() : int
      {
         return this.var_2428;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2431;
      }
      
      public function get creationYear() : int
      {
         return this.var_2430;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2432;
      }
      
      public function get songID() : int
      {
         return this.var_1634;
      }
   }
}
