package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2208:int = 16777215;
      
      public static const const_1325:int = 8191;
      
      public static const const_1152:int = 8191;
      
      public static const const_2215:int = 1;
      
      public static const const_1338:int = 1;
      
      public static const const_1304:int = 1;
      
      private static var var_566:uint = 0;
      
      private static var var_565:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1325)
         {
            param2 = const_1325;
         }
         else if(param2 < const_1338)
         {
            param2 = const_1338;
         }
         if(param3 > const_1152)
         {
            param3 = const_1152;
         }
         else if(param3 < const_1304)
         {
            param3 = const_1304;
         }
         super(param2,param3,param4,param5);
         ++var_566;
         var_565 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_566;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_565;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_565 -= width * height * 4;
            --var_566;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
