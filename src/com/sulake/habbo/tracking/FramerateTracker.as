package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1797:int;
      
      private var var_2546:int;
      
      private var var_867:int;
      
      private var var_524:Number;
      
      private var var_2544:Boolean;
      
      private var var_2545:int;
      
      private var var_1883:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_524);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2546 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2545 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2544 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_867;
         if(this.var_867 == 1)
         {
            this.var_524 = param1;
            this.var_1797 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_867);
            this.var_524 = this.var_524 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2544 && param3 - this.var_1797 >= this.var_2546)
         {
            this.var_867 = 0;
            if(this.var_1883 < this.var_2545)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1883;
               this.var_1797 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
