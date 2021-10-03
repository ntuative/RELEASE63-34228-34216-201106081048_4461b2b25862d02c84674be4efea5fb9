package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_1096:Array;
      
      private var var_2384:String;
      
      private var var_2382:String;
      
      private var var_2383:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_1096 = param1;
         this.var_2384 = param2;
         this.var_2382 = param3;
         this.var_2383 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1096;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2384;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2382;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2383;
      }
   }
}
