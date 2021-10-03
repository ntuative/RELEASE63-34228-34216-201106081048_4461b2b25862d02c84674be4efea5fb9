package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2442:Number = 0.0;
      
      private var var_2439:Number = 0.0;
      
      private var var_2440:Number = 0.0;
      
      private var var_2441:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2442 = param1;
         this.var_2439 = param2;
         this.var_2440 = param3;
         this.var_2441 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2442;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2439;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2440;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2441;
      }
   }
}
