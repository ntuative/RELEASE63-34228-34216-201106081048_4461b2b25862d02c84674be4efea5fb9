package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_376:int;
      
      private var var_833:Boolean;
      
      private var var_951:String;
      
      private var _ownerName:String;
      
      private var var_2592:int;
      
      private var var_2693:int;
      
      private var var_2786:int;
      
      private var var_1829:String;
      
      private var var_2785:int;
      
      private var var_2788:Boolean;
      
      private var var_785:int;
      
      private var var_1581:int;
      
      private var var_2787:String;
      
      private var var_911:Array;
      
      private var var_2790:RoomThumbnailData;
      
      private var var_2595:Boolean;
      
      private var var_2789:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_911 = new Array();
         super();
         this.var_376 = param1.readInteger();
         this.var_833 = param1.readBoolean();
         this.var_951 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2592 = param1.readInteger();
         this.var_2693 = param1.readInteger();
         this.var_2786 = param1.readInteger();
         this.var_1829 = param1.readString();
         this.var_2785 = param1.readInteger();
         this.var_2788 = param1.readBoolean();
         this.var_785 = param1.readInteger();
         this.var_1581 = param1.readInteger();
         this.var_2787 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_911.push(_loc4_);
            _loc3_++;
         }
         this.var_2790 = new RoomThumbnailData(param1);
         this.var_2595 = param1.readBoolean();
         this.var_2789 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_376;
      }
      
      public function get event() : Boolean
      {
         return this.var_833;
      }
      
      public function get roomName() : String
      {
         return this.var_951;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2592;
      }
      
      public function get userCount() : int
      {
         return this.var_2693;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2786;
      }
      
      public function get description() : String
      {
         return this.var_1829;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2785;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2788;
      }
      
      public function get score() : int
      {
         return this.var_785;
      }
      
      public function get categoryId() : int
      {
         return this.var_1581;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2787;
      }
      
      public function get tags() : Array
      {
         return this.var_911;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2790;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2595;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2789;
      }
   }
}
