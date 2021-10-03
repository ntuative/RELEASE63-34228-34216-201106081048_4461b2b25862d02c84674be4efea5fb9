package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1740:int = 0;
      
      private var var_1658:Dictionary;
      
      private var var_2142:int = 0;
      
      private var var_2141:int = 0;
      
      private var var_2339:Boolean = false;
      
      private var var_2345:int = 0;
      
      private var var_2341:int = 0;
      
      public function Purse()
      {
         this.var_1658 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1740;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1740 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2142;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2142 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2141;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2141 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2142 > 0 || this.var_2141 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2339;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2339 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2345;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2341;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2341 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1658;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1658 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1658[param1];
      }
   }
}
