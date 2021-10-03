package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_31:String = "AssetLoaderEventComplete";
      
      public static const const_1221:String = "AssetLoaderEventProgress";
      
      public static const const_1200:String = "AssetLoaderEventUnload";
      
      public static const const_1210:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1368:String = "AssetLoaderEventOpen";
       
      
      private var var_417:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_417 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_417;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_417);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
