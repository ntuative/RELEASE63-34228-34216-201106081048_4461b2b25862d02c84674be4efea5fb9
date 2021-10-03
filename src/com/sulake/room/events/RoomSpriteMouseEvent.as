package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2061:String = "";
      
      private var var_1994:String = "";
      
      private var var_2299:String = "";
      
      private var var_2640:Number = 0;
      
      private var var_2641:Number = 0;
      
      private var var_2629:Number = 0;
      
      private var var_2624:Number = 0;
      
      private var var_2264:Boolean = false;
      
      private var var_2265:Boolean = false;
      
      private var var_2267:Boolean = false;
      
      private var var_2266:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2061 = param2;
         this.var_1994 = param3;
         this.var_2299 = param4;
         this.var_2640 = param5;
         this.var_2641 = param6;
         this.var_2629 = param7;
         this.var_2624 = param8;
         this.var_2264 = param9;
         this.var_2265 = param10;
         this.var_2267 = param11;
         this.var_2266 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2061;
      }
      
      public function get canvasId() : String
      {
         return this.var_1994;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2299;
      }
      
      public function get screenX() : Number
      {
         return this.var_2640;
      }
      
      public function get screenY() : Number
      {
         return this.var_2641;
      }
      
      public function get localX() : Number
      {
         return this.var_2629;
      }
      
      public function get localY() : Number
      {
         return this.var_2624;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2264;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2265;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2267;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2266;
      }
   }
}
