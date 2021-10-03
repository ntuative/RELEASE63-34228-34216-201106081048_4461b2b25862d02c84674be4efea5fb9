package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1541:Boolean = false;
      
      private var var_2101:int;
      
      private var var_1694:Array;
      
      private var var_739:Array;
      
      private var var_740:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1541 = _loc2_.isWrappingEnabled;
         this.var_2101 = _loc2_.wrappingPrice;
         this.var_1694 = _loc2_.stuffTypes;
         this.var_739 = _loc2_.boxTypes;
         this.var_740 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1541;
      }
      
      public function get price() : int
      {
         return this.var_2101;
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
   }
}
