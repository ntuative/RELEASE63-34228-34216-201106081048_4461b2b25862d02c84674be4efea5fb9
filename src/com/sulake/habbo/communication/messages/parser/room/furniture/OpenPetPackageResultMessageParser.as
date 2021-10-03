package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_228:int = 0;
      
      private var var_1835:int = 0;
      
      private var var_1836:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1835;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1836;
      }
      
      public function flush() : Boolean
      {
         this.var_228 = 0;
         this.var_1835 = 0;
         this.var_1836 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_228 = param1.readInteger();
         this.var_1835 = param1.readInteger();
         this.var_1836 = param1.readString();
         return true;
      }
   }
}
