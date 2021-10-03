package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1919:int;
      
      private var var_1537:Array;
      
      private var var_1246:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1919;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1537;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1246;
      }
      
      public function flush() : Boolean
      {
         this.var_1919 = -1;
         this.var_1537 = null;
         this.var_1246 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1919 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1537 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1537.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1246 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1246.push(param1.readInteger());
         }
         return true;
      }
   }
}
