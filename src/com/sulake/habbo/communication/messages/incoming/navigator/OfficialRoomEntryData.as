package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1300:int = 1;
      
      public static const const_778:int = 2;
      
      public static const const_794:int = 3;
      
      public static const const_1824:int = 4;
       
      
      private var _index:int;
      
      private var var_2890:String;
      
      private var var_2887:String;
      
      private var var_2888:Boolean;
      
      private var var_2891:String;
      
      private var var_957:String;
      
      private var var_2889:int;
      
      private var var_2693:int;
      
      private var _type:int;
      
      private var var_2334:String;
      
      private var var_1084:GuestRoomData;
      
      private var var_1083:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2890 = param1.readString();
         this.var_2887 = param1.readString();
         this.var_2888 = param1.readInteger() == 1;
         this.var_2891 = param1.readString();
         this.var_957 = param1.readString();
         this.var_2889 = param1.readInteger();
         this.var_2693 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1300)
         {
            this.var_2334 = param1.readString();
         }
         else if(this._type == const_794)
         {
            this.var_1083 = new PublicRoomData(param1);
         }
         else if(this._type == const_778)
         {
            this.var_1084 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1084 != null)
         {
            this.var_1084.dispose();
            this.var_1084 = null;
         }
         if(this.var_1083 != null)
         {
            this.var_1083.dispose();
            this.var_1083 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2890;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2887;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2888;
      }
      
      public function get picText() : String
      {
         return this.var_2891;
      }
      
      public function get picRef() : String
      {
         return this.var_957;
      }
      
      public function get folderId() : int
      {
         return this.var_2889;
      }
      
      public function get tag() : String
      {
         return this.var_2334;
      }
      
      public function get userCount() : int
      {
         return this.var_2693;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1084;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1083;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1300)
         {
            return 0;
         }
         if(this.type == const_778)
         {
            return this.var_1084.maxUserCount;
         }
         if(this.type == const_794)
         {
            return this.var_1083.maxUsers;
         }
         return 0;
      }
   }
}
