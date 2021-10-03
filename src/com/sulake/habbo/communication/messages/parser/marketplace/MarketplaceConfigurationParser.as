package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1541:Boolean;
      
      private var var_2523:int;
      
      private var var_1866:int;
      
      private var var_1867:int;
      
      private var var_2519:int;
      
      private var var_2521:int;
      
      private var var_2524:int;
      
      private var var_2520:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1541;
      }
      
      public function get commission() : int
      {
         return this.var_2523;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1866;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1867;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2521;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2519;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2524;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2520;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1541 = param1.readBoolean();
         this.var_2523 = param1.readInteger();
         this.var_1866 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this.var_2521 = param1.readInteger();
         this.var_2519 = param1.readInteger();
         this.var_2524 = param1.readInteger();
         this.var_2520 = param1.readInteger();
         return true;
      }
   }
}
