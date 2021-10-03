package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2125:Boolean;
      
      private var var_2925:int;
      
      private var var_2927:String;
      
      private var var_376:int;
      
      private var var_2926:int;
      
      private var var_1976:String;
      
      private var var_2923:String;
      
      private var var_2924:String;
      
      private var var_911:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_911 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2125 = false;
            return;
         }
         this.var_2125 = true;
         this.var_2925 = int(_loc2_);
         this.var_2927 = param1.readString();
         this.var_376 = int(param1.readString());
         this.var_2926 = param1.readInteger();
         this.var_1976 = param1.readString();
         this.var_2923 = param1.readString();
         this.var_2924 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_911.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_911 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2925;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2927;
      }
      
      public function get flatId() : int
      {
         return this.var_376;
      }
      
      public function get eventType() : int
      {
         return this.var_2926;
      }
      
      public function get eventName() : String
      {
         return this.var_1976;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2923;
      }
      
      public function get creationTime() : String
      {
         return this.var_2924;
      }
      
      public function get tags() : Array
      {
         return this.var_911;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2125;
      }
   }
}
