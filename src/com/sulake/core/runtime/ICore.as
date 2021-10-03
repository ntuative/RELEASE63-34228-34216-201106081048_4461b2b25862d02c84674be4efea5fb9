package com.sulake.core.runtime
{
   import flash.events.IEventDispatcher;
   
   public interface ICore extends IContext
   {
       
      
      function initialize() : void;
      
      function method_12(param1:XML, param2:IEventDispatcher = null) : void;
      
      function getNumberOfFilesPending() : uint;
      
      function getNumberOfFilesLoaded() : uint;
      
      function setProfilerMode(param1:Boolean) : void;
   }
}
