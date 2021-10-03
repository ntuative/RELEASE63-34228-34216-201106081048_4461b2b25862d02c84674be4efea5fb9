package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2412:int;
      
      private var var_2413:int;
      
      private var var_2414:int;
      
      private var _dayOffsets:Array;
      
      private var var_1791:Array;
      
      private var var_1792:Array;
      
      private var var_2410:int;
      
      private var var_2411:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2412;
      }
      
      public function get offerCount() : int
      {
         return this.var_2413;
      }
      
      public function get historyLength() : int
      {
         return this.var_2414;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1791;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1792;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2410;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2411;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2412 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1791 = [];
         this.var_1792 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1791.push(param1.readInteger());
            this.var_1792.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2411 = param1.readInteger();
         this.var_2410 = param1.readInteger();
         return true;
      }
   }
}
