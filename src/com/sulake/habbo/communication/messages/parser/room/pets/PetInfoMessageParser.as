package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1919:int;
      
      private var _name:String;
      
      private var var_1235:int;
      
      private var var_2799:int;
      
      private var var_2305:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_643:String;
      
      private var var_2802:int;
      
      private var var_2801:int;
      
      private var var_2800:int;
      
      private var var_2798:int;
      
      private var var_2308:int;
      
      private var _ownerName:String;
      
      private var var_551:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1919;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1235;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2799;
      }
      
      public function get experience() : int
      {
         return this.var_2305;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2802;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2801;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2800;
      }
      
      public function get respect() : int
      {
         return this.var_2798;
      }
      
      public function get ownerId() : int
      {
         return this.var_2308;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_551;
      }
      
      public function flush() : Boolean
      {
         this.var_1919 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1919 = param1.readInteger();
         this._name = param1.readString();
         this.var_1235 = param1.readInteger();
         this.var_2799 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_2802 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2801 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2800 = param1.readInteger();
         this.var_643 = param1.readString();
         this.var_2798 = param1.readInteger();
         this.var_2308 = param1.readInteger();
         this.var_551 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
