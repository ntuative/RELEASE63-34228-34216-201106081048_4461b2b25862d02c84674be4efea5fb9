package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_152:String = "ROE_MOUSE_CLICK";
      
      public static const const_194:String = "ROE_MOUSE_ENTER";
      
      public static const const_598:String = "ROE_MOUSE_MOVE";
      
      public static const const_180:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2206:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_604:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2061:String = "";
      
      private var var_2265:Boolean;
      
      private var var_2264:Boolean;
      
      private var var_2267:Boolean;
      
      private var var_2266:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2061 = param2;
         this.var_2265 = param5;
         this.var_2264 = param6;
         this.var_2267 = param7;
         this.var_2266 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2061;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2265;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2264;
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
