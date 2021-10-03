package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_109:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_159:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_818:int = 2;
      
      public static const const_939:int = 3;
      
      public static const const_1704:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1842:String = "";
      
      private var var_2290:int;
      
      private var var_2293:int = 0;
      
      private var var_2291:int = 0;
      
      private var var_643:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_246:Array;
      
      private var var_1612:int = 0;
      
      private var var_2269:String = "";
      
      private var var_2268:int = 0;
      
      private var var_2270:int = 0;
      
      private var var_1834:Boolean = false;
      
      private var var_1843:String = "";
      
      private var var_2200:Boolean = false;
      
      private var var_2371:Boolean = false;
      
      private var var_2372:Boolean = true;
      
      private var var_1190:int = 0;
      
      private var var_2365:Boolean = false;
      
      private var var_2367:Boolean = false;
      
      private var var_2368:Boolean = false;
      
      private var var_2369:Boolean = false;
      
      private var var_2373:Boolean = false;
      
      private var var_2370:Boolean = false;
      
      private var var_2366:int = 0;
      
      private var var_1831:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_246 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1842 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1842;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2290;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2293;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2291 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2291;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_643 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_246 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_246;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1612 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1612;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2269 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2269;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2371 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2371;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1190 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1190;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2365;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2367 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2367;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2368 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2368;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2369;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2373 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2373;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2370 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2370;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2366 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2366;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2372 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2372;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1831 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1831;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2268;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2270 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2270;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1834 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1834;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1843 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1843;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2200 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2200;
      }
   }
}
