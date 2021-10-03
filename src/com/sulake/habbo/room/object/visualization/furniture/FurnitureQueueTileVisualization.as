package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1445:int = 3;
      
      private static const const_1496:int = 2;
      
      private static const const_1495:int = 1;
      
      private static const const_1497:int = 15;
       
      
      private var var_319:Array;
      
      private var var_1248:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_319 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1496)
         {
            this.var_319 = new Array();
            this.var_319.push(const_1495);
            this.var_1248 = const_1497;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1248 > 0)
         {
            --this.var_1248;
         }
         if(this.var_1248 == 0)
         {
            if(this.var_319.length > 0)
            {
               super.setAnimation(this.var_319.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
