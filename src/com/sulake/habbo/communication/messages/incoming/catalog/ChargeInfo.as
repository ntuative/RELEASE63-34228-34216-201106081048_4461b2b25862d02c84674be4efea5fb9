package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2485:int;
      
      private var var_2486:int;
      
      private var var_1130:int;
      
      private var var_1131:int;
      
      private var var_1682:int;
      
      private var var_2487:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2485 = param1.readInteger();
         this.var_2486 = param1.readInteger();
         this.var_1130 = param1.readInteger();
         this.var_1131 = param1.readInteger();
         this.var_1682 = param1.readInteger();
         this.var_2487 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2485;
      }
      
      public function get charges() : int
      {
         return this.var_2486;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1130;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1131;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2487;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1682;
      }
   }
}
