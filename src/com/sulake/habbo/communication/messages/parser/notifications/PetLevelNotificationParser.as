package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1919:int;
      
      private var var_2499:String;
      
      private var var_1235:int;
      
      private var var_1247:int;
      
      private var var_1679:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1919 = param1.readInteger();
         this.var_2499 = param1.readString();
         this.var_1235 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         this.var_1679 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1919;
      }
      
      public function get petName() : String
      {
         return this.var_2499;
      }
      
      public function get level() : int
      {
         return this.var_1235;
      }
      
      public function get petType() : int
      {
         return this.var_1247;
      }
      
      public function get breed() : int
      {
         return this.var_1679;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
