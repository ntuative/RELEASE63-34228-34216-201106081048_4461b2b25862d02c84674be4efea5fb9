package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceBuyOfferResultParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_2647:int = -1;
      
      private var var_2645:int = -1;
      
      private var var_2646:int = -1;
      
      public function MarketplaceBuyOfferResultParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get offerId() : int
      {
         return this.var_2647;
      }
      
      public function get newPrice() : int
      {
         return this.var_2645;
      }
      
      public function get requestedOfferId() : int
      {
         return this.var_2646;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_2647 = param1.readInteger();
         this.var_2645 = param1.readInteger();
         this.var_2646 = param1.readInteger();
         return true;
      }
   }
}
