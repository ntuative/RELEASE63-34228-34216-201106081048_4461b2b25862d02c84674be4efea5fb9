package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2760:Boolean;
      
      private var var_2759:int;
      
      private var var_1694:Array;
      
      private var var_739:Array;
      
      private var var_740:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2760;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2759;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1694;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_739;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_740;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1694 = [];
         this.var_739 = [];
         this.var_740 = [];
         this.var_2760 = param1.readBoolean();
         this.var_2759 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1694.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_739.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_740.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
