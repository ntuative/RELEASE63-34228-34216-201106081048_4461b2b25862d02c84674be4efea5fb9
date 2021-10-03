package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_442:int = 0;
      
      private var var_560:int = 0;
      
      private var var_668:int = 0;
      
      private var _type:int = 0;
      
      private var var_3040:String = "";
      
      private var var_1634:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2314:int = 0;
      
      private var var_2628:Boolean;
      
      private var var_2703:String = null;
      
      private var var_195:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_560;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_560 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_668;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_668 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_195)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_195)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_195)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2703;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_2703 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1634;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_1634 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2314;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_195)
         {
            this.var_2314 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2628;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2628 = param1;
      }
   }
}
