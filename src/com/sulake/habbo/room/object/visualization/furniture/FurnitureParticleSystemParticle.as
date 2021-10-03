package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_175:Number;
      
      private var var_176:Number;
      
      private var var_1934:Number;
      
      private var var_1935:Number;
      
      private var var_1932:Number;
      
      private var var_1258:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_551:int = 0;
      
      private var var_1017:int;
      
      private var var_2660:Boolean = false;
      
      private var var_1933:Boolean = false;
      
      private var var_1668:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1933;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_551;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_175 = param2;
         this.var_176 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1934 = this._x - this._direction.x * param6;
         this.var_1935 = this.var_175 - this._direction.y * param6;
         this.var_1932 = this.var_176 - this._direction.z * param6;
         this.var_551 = 0;
         this.var_1258 = false;
         this.var_1017 = param7;
         this.var_2660 = param8;
         this._frames = param9;
         this.var_1933 = param10;
         this._alphaMultiplier = 1;
         this.var_1668 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_551;
         if(this.var_551 == this.var_1017)
         {
            this.ignite();
         }
         if(this.var_1933)
         {
            if(this.var_551 / this.var_1017 > this.var_1668)
            {
               this._alphaMultiplier = (this.var_1017 - this.var_551) / (this.var_1017 * (1 - this.var_1668));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_551 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2660;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_551 <= this.var_1017;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_175 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_176 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1934;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1258 = true;
         this.var_1934 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1935;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1258 = true;
         this.var_1935 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1932;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1258 = true;
         this.var_1932 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1258;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_175,this.var_176].toString();
      }
   }
}
