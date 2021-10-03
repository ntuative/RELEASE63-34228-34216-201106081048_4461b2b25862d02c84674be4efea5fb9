package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1032:int = 20;
      
      private static const const_686:int = 10;
      
      private static const const_1444:int = 31;
      
      private static const const_1445:int = 32;
      
      private static const const_685:int = 30;
       
      
      private var var_319:Array;
      
      private var var_876:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_319 = new Array();
         super();
         super.setAnimation(const_685);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_686)
         {
            if(this.var_876)
            {
               this.var_876 = false;
               this.var_319 = new Array();
               if(direction == 2)
               {
                  this.var_319.push(const_1032 + 5 - param1);
                  this.var_319.push(const_686 + 5 - param1);
               }
               else
               {
                  this.var_319.push(const_1032 + param1);
                  this.var_319.push(const_686 + param1);
               }
               this.var_319.push(const_685);
               return;
            }
            super.setAnimation(const_685);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
