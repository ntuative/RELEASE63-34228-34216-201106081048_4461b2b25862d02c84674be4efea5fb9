package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1506:int;
      
      private var var_1507:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1506 = this.var_1506;
         _loc1_.var_1507 = this.var_1507;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1506 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1507 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1506;
      }
      
      public function get imgId() : int
      {
         return this.var_1507;
      }
   }
}
