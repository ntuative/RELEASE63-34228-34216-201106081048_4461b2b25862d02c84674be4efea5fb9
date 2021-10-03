package com.sulake.habbo.communication.messages.incoming.room.engine
{
   import com.sulake.room.utils.Vector3d;
   
   public class SlideObjectMessageData
   {
      
      public static const const_1165:String = "mv";
      
      public static const const_1328:String = "sld";
       
      
      private var _id:int = 0;
      
      private var var_102:Vector3d;
      
      private var _target:Vector3d;
      
      private var var_2068:String;
      
      private var var_195:Boolean = false;
      
      public function SlideObjectMessageData(param1:int, param2:Vector3d, param3:Vector3d, param4:String = null)
      {
         super();
         this._id = param1;
         this.var_102 = param2;
         this._target = param3;
         this.var_2068 = param4;
      }
      
      public function setReadOnly() : void
      {
         this.var_195 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_102;
      }
      
      public function set loc(param1:Vector3d) : void
      {
         if(!this.var_195)
         {
            this.var_102 = param1;
         }
      }
      
      public function get target() : Vector3d
      {
         return this._target;
      }
      
      public function set target(param1:Vector3d) : void
      {
         if(!this.var_195)
         {
            this._target = param1;
         }
      }
      
      public function get moveType() : String
      {
         return this.var_2068;
      }
      
      public function set moveType(param1:String) : void
      {
         if(!this.var_195)
         {
            this.var_2068 = param1;
         }
      }
   }
}
