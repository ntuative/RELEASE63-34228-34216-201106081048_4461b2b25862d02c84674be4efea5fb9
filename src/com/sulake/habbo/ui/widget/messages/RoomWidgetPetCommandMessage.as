package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_738:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_476:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1919:int = 0;
      
      private var var_199:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1919 = param2;
         this.var_199 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1919;
      }
      
      public function get value() : String
      {
         return this.var_199;
      }
   }
}
