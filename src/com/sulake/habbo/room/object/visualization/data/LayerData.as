package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_875:String = "";
      
      public static const const_410:int = 0;
      
      public static const const_483:int = 255;
      
      public static const const_929:Boolean = false;
      
      public static const const_624:int = 0;
      
      public static const const_612:int = 0;
      
      public static const const_403:int = 0;
      
      public static const const_1249:int = 1;
      
      public static const const_1206:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2334:String = "";
      
      private var var_1811:int = 0;
      
      private var var_2333:int = 255;
      
      private var var_2718:Boolean = false;
      
      private var var_2717:int = 0;
      
      private var var_2719:int = 0;
      
      private var var_2720:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2334 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2334;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1811 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1811;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2333 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2333;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2718 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2718;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2717 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2717;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2719 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2719;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2720 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2720;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
