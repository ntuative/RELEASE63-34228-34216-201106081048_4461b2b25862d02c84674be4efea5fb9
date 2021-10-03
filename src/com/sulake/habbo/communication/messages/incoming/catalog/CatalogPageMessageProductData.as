package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_76:String = "s";
      
      public static const const_190:String = "e";
       
      
      private var var_1597:String;
      
      private var var_2845:int;
      
      private var var_1043:String;
      
      private var var_1596:int;
      
      private var var_2008:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1597 = param1.readString();
         this.var_2845 = param1.readInteger();
         this.var_1043 = param1.readString();
         this.var_1596 = param1.readInteger();
         this.var_2008 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1597;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2845;
      }
      
      public function get extraParam() : String
      {
         return this.var_1043;
      }
      
      public function get productCount() : int
      {
         return this.var_1596;
      }
      
      public function get expiration() : int
      {
         return this.var_2008;
      }
   }
}
