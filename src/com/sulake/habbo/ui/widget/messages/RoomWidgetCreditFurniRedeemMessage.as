package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetCreditFurniRedeemMessage extends RoomWidgetMessage
   {
      
      public static const const_711:String = "RWFCRM_REDEEM";
       
      
      private var var_228:int;
      
      public function RoomWidgetCreditFurniRedeemMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_228 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_228;
      }
   }
}
