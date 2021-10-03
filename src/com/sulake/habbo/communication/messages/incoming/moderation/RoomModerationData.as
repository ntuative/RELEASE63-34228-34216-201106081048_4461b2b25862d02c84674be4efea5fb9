package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_376:int;
      
      private var var_2693:int;
      
      private var var_2692:Boolean;
      
      private var var_2308:int;
      
      private var _ownerName:String;
      
      private var var_132:RoomData;
      
      private var var_833:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_376 = param1.readInteger();
         this.var_2693 = param1.readInteger();
         this.var_2692 = param1.readBoolean();
         this.var_2308 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_132 = new RoomData(param1);
         this.var_833 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_132 != null)
         {
            this.var_132.dispose();
            this.var_132 = null;
         }
         if(this.var_833 != null)
         {
            this.var_833.dispose();
            this.var_833 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_376;
      }
      
      public function get userCount() : int
      {
         return this.var_2693;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2692;
      }
      
      public function get ownerId() : int
      {
         return this.var_2308;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_132;
      }
      
      public function get event() : RoomData
      {
         return this.var_833;
      }
   }
}
