package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import flash.display.BitmapData;
   
   public class RoomObjectRoomAdUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1251:String = "RORUM_ROOM_AD_ACTIVATE";
      
      public static const const_1226:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADED";
      
      public static const const_1187:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADING_FAILED";
       
      
      private var _type:String;
      
      private var var_488:String;
      
      private var var_1267:String;
      
      private var var_228:int;
      
      private var _bitmapData:BitmapData;
      
      public function RoomObjectRoomAdUpdateMessage(param1:String, param2:String, param3:String, param4:int = -1, param5:BitmapData = null)
      {
         super(null,null);
         this._type = param1;
         this.var_488 = param2;
         this.var_1267 = param3;
         this.var_228 = param4;
         this._bitmapData = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get asset() : String
      {
         return this.var_488;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1267;
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
   }
}
