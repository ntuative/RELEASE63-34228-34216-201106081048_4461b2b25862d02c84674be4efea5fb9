package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2864:String;
      
      private var var_2581:int;
      
      private var var_2511:int;
      
      private var var_2862:String;
      
      private var var_2863:int;
      
      private var var_1752:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2864 = param1.readString();
         this.var_2581 = param1.readInteger();
         this.var_2511 = param1.readInteger();
         this.var_2862 = param1.readString();
         this.var_2863 = param1.readInteger();
         this.var_1752 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2864;
      }
      
      public function get unitPort() : int
      {
         return this.var_2581;
      }
      
      public function get worldId() : int
      {
         return this.var_2511;
      }
      
      public function get castLibs() : String
      {
         return this.var_2862;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2863;
      }
      
      public function get nodeId() : int
      {
         return this.var_1752;
      }
   }
}
