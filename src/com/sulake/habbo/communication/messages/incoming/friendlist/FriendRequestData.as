package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1316:int;
      
      private var var_2493:String;
      
      private var var_2494:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1316 = param1.readInteger();
         this.var_2493 = param1.readString();
         this.var_2494 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1316;
      }
      
      public function get requesterName() : String
      {
         return this.var_2493;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2494;
      }
   }
}
