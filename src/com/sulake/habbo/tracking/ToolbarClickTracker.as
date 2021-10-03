package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1407:IHabboTracking;
      
      private var var_1849:Boolean = false;
      
      private var var_2482:int = 0;
      
      private var var_1844:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1407 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1407 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1849 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2482 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1849)
         {
            return;
         }
         ++this.var_1844;
         if(this.var_1844 <= this.var_2482)
         {
            this.var_1407.trackGoogle("toolbar",param1);
         }
      }
   }
}
