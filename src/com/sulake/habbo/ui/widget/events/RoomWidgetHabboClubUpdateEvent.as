package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_255:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2588:int = 0;
      
      private var var_2589:int = 0;
      
      private var var_2586:int = 0;
      
      private var var_2587:Boolean = false;
      
      private var var_2224:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_255,param6,param7);
         this.var_2588 = param1;
         this.var_2589 = param2;
         this.var_2586 = param3;
         this.var_2587 = param4;
         this.var_2224 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2588;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2589;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2586;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2587;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2224;
      }
   }
}
