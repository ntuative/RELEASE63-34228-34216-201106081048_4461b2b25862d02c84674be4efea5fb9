package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1160:Boolean;
      
      private var var_1161:Boolean;
      
      private var var_1442:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1160;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1161;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1442;
      }
      
      public function flush() : Boolean
      {
         this.var_1160 = false;
         this.var_1161 = false;
         this.var_1442 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1160 = param1.readBoolean();
         this.var_1161 = param1.readBoolean();
         this.var_1442 = param1.readBoolean();
         return true;
      }
   }
}
