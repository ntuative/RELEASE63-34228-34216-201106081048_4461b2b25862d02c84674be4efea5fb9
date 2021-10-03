package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_228:int;
      
      private var var_2499:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_228 = param1;
         this.var_2499 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_228,this.var_2499];
      }
      
      public function dispose() : void
      {
      }
   }
}
