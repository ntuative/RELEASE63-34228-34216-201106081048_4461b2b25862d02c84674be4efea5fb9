package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_955:String = "";
      
      private var var_643:String = "";
      
      private var var_2292:String = "";
      
      private var var_2290:int;
      
      private var var_2293:int = 0;
      
      private var var_2289:String = "";
      
      private var var_2294:int = 0;
      
      private var var_2291:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2290;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_955;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_955 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_643 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2292;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2292 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2293;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2289;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2289 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2294;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2291;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2291 = param1;
      }
   }
}
