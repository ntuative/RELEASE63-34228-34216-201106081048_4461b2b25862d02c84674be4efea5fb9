package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2773:int;
      
      private var var_2774:int;
      
      private var var_2903:String;
      
      private var var_2905:int;
      
      private var var_2904:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2773 = param1;
         this.var_2774 = param2;
         this.var_2903 = param3;
         this.var_2905 = param4;
         this.var_2904 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2773,this.var_2774,this.var_2903,this.var_2905,int(this.var_2904)];
      }
      
      public function dispose() : void
      {
      }
   }
}
