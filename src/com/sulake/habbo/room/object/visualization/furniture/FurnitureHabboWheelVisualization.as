package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1032:int = 10;
      
      private static const const_686:int = 20;
      
      private static const const_1444:int = 31;
      
      private static const const_1445:int = 32;
       
      
      private var var_319:Array;
      
      private var var_876:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_319 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_876)
            {
               this.var_876 = true;
               this.var_319 = new Array();
               this.var_319.push(const_1444);
               this.var_319.push(const_1445);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1032)
         {
            if(this.var_876)
            {
               this.var_876 = false;
               this.var_319 = new Array();
               this.var_319.push(const_1032 + param1);
               this.var_319.push(const_686 + param1);
               this.var_319.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
