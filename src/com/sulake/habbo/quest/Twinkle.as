package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class Twinkle implements AnimationObject, IDisposable
   {
      
      private static const const_1549:int = 100;
      
      private static const const_1095:Array = [1,2,3,4,5,6,5,4,3,2,1];
      
      private static const const_1550:int = -1;
      
      private static const const_1096:int = -2;
      
      private static const APPEAR_AREA:Point = new Point(44,44);
       
      
      private var _twinkleImages:TwinkleImages;
      
      private var var_2796:int;
      
      private var var_1317:Point;
      
      public function Twinkle(param1:TwinkleImages, param2:int)
      {
         super();
         this._twinkleImages = param1;
         this.var_2796 = param2;
      }
      
      public function dispose() : void
      {
         this._twinkleImages = null;
         this.var_1317 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._twinkleImages == null;
      }
      
      public function onAnimationStart() : void
      {
         this.var_1317 = new Point(Math.round(Math.random() * 0),Math.round(Math.random() * 0));
      }
      
      public function getPosition(param1:int) : Point
      {
         return this.var_1317;
      }
      
      public function isFinished(param1:int) : Boolean
      {
         return this.getFrame(param1) == const_1096;
      }
      
      public function getBitmap(param1:int) : BitmapData
      {
         var _loc2_:int = this.getFrame(param1);
         return this._twinkleImages.getImage(const_1095[_loc2_]);
      }
      
      private function getFrame(param1:int) : int
      {
         var _loc2_:int = param1 - this.var_2796;
         if(_loc2_ < 0)
         {
            return const_1550;
         }
         var _loc3_:int = Math.floor(_loc2_ / const_1549);
         if(_loc3_ >= const_1095.length)
         {
            return const_1096;
         }
         return _loc3_;
      }
   }
}
