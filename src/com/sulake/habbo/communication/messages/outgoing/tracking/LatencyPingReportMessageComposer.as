package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2282:int;
      
      private var var_2283:int;
      
      private var var_2281:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2282 = param1;
         this.var_2283 = param2;
         this.var_2281 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2282,this.var_2283,this.var_2281];
      }
      
      public function dispose() : void
      {
      }
   }
}
