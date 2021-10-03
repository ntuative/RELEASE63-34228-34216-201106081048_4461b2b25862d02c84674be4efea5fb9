package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_643:String;
      
      private var var_2310:String;
      
      private var _gender:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_643 = param1;
         this._gender = param2;
         this.var_2310 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get race() : String
      {
         return this.var_2310;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
   }
}
