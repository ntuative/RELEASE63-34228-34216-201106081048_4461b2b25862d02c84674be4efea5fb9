package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2438:int;
      
      private var var_2435:int;
      
      private var var_2436:int;
      
      private var var_2437:String;
      
      private var var_1986:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2438 = param1.readInteger();
         this.var_2435 = param1.readInteger();
         this.var_2436 = param1.readInteger();
         this.var_2437 = param1.readString();
         this.var_1986 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2438;
      }
      
      public function get minute() : int
      {
         return this.var_2435;
      }
      
      public function get chatterId() : int
      {
         return this.var_2436;
      }
      
      public function get chatterName() : String
      {
         return this.var_2437;
      }
      
      public function get msg() : String
      {
         return this.var_1986;
      }
   }
}
