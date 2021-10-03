package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var _configuration:IHabboConfigurationManager = null;
      
      private var var_596:int = 0;
      
      private var var_524:Number = 0;
      
      private var var_3003:Array;
      
      private var var_1462:String = "";
      
      private var var_1793:String = "";
      
      private var var_2417:String = "";
      
      private var var_2608:String = "";
      
      private var var_1910:Boolean = false;
      
      private var var_1796:GarbageMonitor = null;
      
      private var var_1463:int = 0;
      
      private var var_2419:Boolean;
      
      private var var_1794:int = 1000;
      
      private var var_1464:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1797:int = 0;
      
      private var var_1795:int = 10;
      
      private var var_1465:int = 0;
      
      private var var_2416:Number = 0.15;
      
      private var var_2418:Boolean = true;
      
      private var var_2420:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3003 = [];
         super();
         this.var_1793 = Capabilities.version;
         this.var_2417 = Capabilities.os;
         this.var_1910 = Capabilities.isDebugger;
         this.var_1462 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1462 == null)
         {
            this.var_1462 = "unknown";
         }
         this.var_1796 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1797 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1793;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_524;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1794 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1795 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this._configuration = param1;
         this._reportInterval = int(this._configuration.getKey("performancetest.interval","60"));
         this.var_1794 = int(this._configuration.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1795 = int(this._configuration.getKey("performancetest.reportlimit","10"));
         this.var_2416 = Number(this._configuration.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2418 = Boolean(int(this._configuration.getKey("performancetest.distribution.enabled","1")));
         this.var_2419 = Boolean(this._configuration.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1796.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1796.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2419)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1463;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1794)
         {
            ++this.var_1464;
            _loc3_ = true;
         }
         else
         {
            ++this.var_596;
            if(this.var_596 <= 1)
            {
               this.var_524 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_596);
               this.var_524 = this.var_524 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1797 > this._reportInterval * 1000 && this.var_1465 < this.var_1795)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_524 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2418 && this.var_1465 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2420,this.var_524);
               if(_loc8_ < this.var_2416)
               {
                  _loc7_ = false;
               }
            }
            this.var_1797 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2420 = this.var_524;
               if(this.sendReport(param2))
               {
                  ++this.var_1465;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1462,this.var_1793,this.var_2417,this.var_2608,this.var_1910,_loc5_,_loc4_,this.var_1463,this.var_524,this.var_1464);
            this._connection.send(_loc2_);
            this.var_1463 = 0;
            this.var_524 = 0;
            this.var_596 = 0;
            this.var_1464 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
