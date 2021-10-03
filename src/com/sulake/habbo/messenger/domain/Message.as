package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_837:int = 1;
      
      public static const const_848:int = 2;
      
      public static const const_935:int = 3;
      
      public static const const_1309:int = 4;
      
      public static const const_716:int = 5;
      
      public static const const_1192:int = 6;
       
      
      private var _type:int;
      
      private var var_1148:int;
      
      private var var_2280:String;
      
      private var var_2500:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1148 = param2;
         this.var_2280 = param3;
         this.var_2500 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2280;
      }
      
      public function get time() : String
      {
         return this.var_2500;
      }
      
      public function get senderId() : int
      {
         return this.var_1148;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
