package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1611:IID;
      
      private var var_2055:String;
      
      private var var_115:IUnknown;
      
      private var var_858:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1611 = param1;
         this.var_2055 = getQualifiedClassName(this.var_1611);
         this.var_115 = param2;
         this.var_858 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1611;
      }
      
      public function get iis() : String
      {
         return this.var_2055;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_115;
      }
      
      public function get references() : uint
      {
         return this.var_858;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_115 == null;
      }
      
      public function dispose() : void
      {
         this.var_1611 = null;
         this.var_2055 = null;
         this.var_115 = null;
         this.var_858 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_858;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_858) : uint(0);
      }
   }
}
