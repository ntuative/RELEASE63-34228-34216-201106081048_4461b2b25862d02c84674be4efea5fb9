package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1267:String = "M";
      
      public static const const_1895:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_442:int = 0;
      
      private var _name:String = "";
      
      private var var_1667:int = 0;
      
      private var var_955:String = "";
      
      private var var_643:String = "";
      
      private var var_2292:String = "";
      
      private var var_2290:int;
      
      private var var_2293:int = 0;
      
      private var var_2289:String = "";
      
      private var var_2294:int = 0;
      
      private var var_2291:int = 0;
      
      private var var_2738:String = "";
      
      private var var_195:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_195 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_195)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_195)
         {
            this.var_175 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_195)
         {
            this.var_176 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_442;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_442 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_195)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1667;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_1667 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_955;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_955 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_643 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2292;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_2292 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2290;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_2290 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2293;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_2293 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2289;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_2289 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2294;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_2294 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2291;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_2291 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2738;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_2738 = param1;
         }
      }
   }
}
