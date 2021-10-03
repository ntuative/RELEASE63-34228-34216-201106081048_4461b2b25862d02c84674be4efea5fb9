package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1921:int;
      
      private var var_2245:String;
      
      private var _gender:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1921 = param1.readInteger();
         this.var_2245 = param1.readString();
         this._gender = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1921;
      }
      
      public function get figureString() : String
      {
         return this.var_2245;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
   }
}
