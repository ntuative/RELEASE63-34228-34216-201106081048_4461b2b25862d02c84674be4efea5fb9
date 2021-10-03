package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2142:int = 0;
      
      private var var_2141:int = 0;
      
      private var var_2942:int = 0;
      
      private var var_2943:Boolean = false;
      
      private var var_2339:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2142 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2141 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2942 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2943 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2339 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2142;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2141;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2942;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2943;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2339;
      }
   }
}
