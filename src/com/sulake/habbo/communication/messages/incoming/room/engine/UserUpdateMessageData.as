package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_2615:Number = 0;
      
      private var var_2616:Number = 0;
      
      private var var_2619:Number = 0;
      
      private var var_2618:Number = 0;
      
      private var var_442:int = 0;
      
      private var var_2532:int = 0;
      
      private var var_345:Array;
      
      private var var_2617:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_345 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_175 = param3;
         this.var_176 = param4;
         this.var_2615 = param5;
         this.var_442 = param6;
         this.var_2532 = param7;
         this.var_2616 = param8;
         this.var_2619 = param9;
         this.var_2618 = param10;
         this.var_2617 = param11;
         this.var_345 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function get localZ() : Number
      {
         return this.var_2615;
      }
      
      public function get targetX() : Number
      {
         return this.var_2616;
      }
      
      public function get targetY() : Number
      {
         return this.var_2619;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2618;
      }
      
      public function get dir() : int
      {
         return this.var_442;
      }
      
      public function get dirHead() : int
      {
         return this.var_2532;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2617;
      }
      
      public function get actions() : Array
      {
         return this.var_345.slice();
      }
   }
}
