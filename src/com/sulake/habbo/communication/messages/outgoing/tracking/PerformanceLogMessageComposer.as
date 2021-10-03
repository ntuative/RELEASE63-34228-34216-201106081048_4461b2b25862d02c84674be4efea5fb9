package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2609:int = 0;
      
      private var var_1462:String = "";
      
      private var var_1793:String = "";
      
      private var var_2417:String = "";
      
      private var var_2608:String = "";
      
      private var var_1910:int = 0;
      
      private var var_2607:int = 0;
      
      private var var_2611:int = 0;
      
      private var var_1463:int = 0;
      
      private var var_2610:int = 0;
      
      private var var_1464:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2609 = param1;
         this.var_1462 = param2;
         this.var_1793 = param3;
         this.var_2417 = param4;
         this.var_2608 = param5;
         if(param6)
         {
            this.var_1910 = 1;
         }
         else
         {
            this.var_1910 = 0;
         }
         this.var_2607 = param7;
         this.var_2611 = param8;
         this.var_1463 = param9;
         this.var_2610 = param10;
         this.var_1464 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2609,this.var_1462,this.var_1793,this.var_2417,this.var_2608,this.var_1910,this.var_2607,this.var_2611,this.var_1463,this.var_2610,this.var_1464];
      }
   }
}
