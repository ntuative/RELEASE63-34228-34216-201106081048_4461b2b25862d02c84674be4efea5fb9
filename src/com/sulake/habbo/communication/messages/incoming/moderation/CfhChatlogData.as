package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2073:int;
      
      private var var_2854:int;
      
      private var var_1644:int;
      
      private var var_2580:int;
      
      private var var_132:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2073 = param1.readInteger();
         this.var_2854 = param1.readInteger();
         this.var_1644 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this.var_132 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2073);
      }
      
      public function get callId() : int
      {
         return this.var_2073;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2854;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1644;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2580;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_132;
      }
   }
}
