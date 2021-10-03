package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_571:int = 0;
      
      public static const const_212:int = 1;
      
      public static const const_127:int = 2;
      
      public static const const_863:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1829:String;
      
      private var var_2592:int;
      
      private var var_1581:int;
      
      private var var_2596:int;
      
      private var var_2593:int;
      
      private var var_911:Array;
      
      private var var_2599:Array;
      
      private var var_2598:int;
      
      private var var_2595:Boolean;
      
      private var var_2600:Boolean;
      
      private var var_2601:Boolean;
      
      private var var_2591:Boolean;
      
      private var var_2594:int;
      
      private var var_2597:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2595;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2595 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2600;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2600 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2601;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2601 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2591;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2591 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2594;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2594 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2597;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2597 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1829;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1829 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2592;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2592 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1581;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1581 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2596;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2596 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2593;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2593 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_911;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_911 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2599;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2599 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2598;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2598 = param1;
      }
   }
}
