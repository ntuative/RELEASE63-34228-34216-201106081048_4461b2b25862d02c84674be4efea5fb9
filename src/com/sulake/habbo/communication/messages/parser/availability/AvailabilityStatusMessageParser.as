package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1530:Boolean;
      
      private var var_1748:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1530;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1748;
      }
      
      public function flush() : Boolean
      {
         this.var_1530 = false;
         this.var_1748 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1530 = param1.readInteger() > 0;
         this.var_1748 = param1.readInteger() > 0;
         return true;
      }
   }
}
