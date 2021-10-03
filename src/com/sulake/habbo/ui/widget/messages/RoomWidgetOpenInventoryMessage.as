package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_724:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1788:String = "inventory_effects";
      
      public static const const_1146:String = "inventory_badges";
      
      public static const const_1707:String = "inventory_clothes";
      
      public static const const_1752:String = "inventory_furniture";
       
      
      private var var_2941:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_724);
         this.var_2941 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2941;
      }
   }
}
