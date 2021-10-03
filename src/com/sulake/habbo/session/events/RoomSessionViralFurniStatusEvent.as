package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_591:String = "RSVFS_STATUS";
      
      public static const const_631:String = "RSVFS_RECEIVED";
       
      
      private var var_187:String;
      
      private var var_228:int;
      
      private var var_417:int = -1;
      
      private var _shareId:String;
      
      private var var_2236:String;
      
      private var var_2237:Boolean;
      
      private var var_1412:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_417 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
      
      public function get status() : int
      {
         return this.var_417;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2236;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2237;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1412;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_228 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_417 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2236 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2237 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1412 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_187;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_187 = param1;
      }
   }
}
