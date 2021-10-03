package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1135:int;
      
      private var var_2602:Boolean;
      
      private var var_2381:Boolean;
      
      private var var_2603:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1135 = param1.readInteger();
         this.var_2602 = param1.readBoolean();
         this.var_2603 = param1.readInteger();
         this.var_2381 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1135;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2602;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2381;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2603;
      }
   }
}
