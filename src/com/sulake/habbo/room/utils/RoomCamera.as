package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1519:Number = 12;
       
      
      private var var_2676:int = -1;
      
      private var var_2678:int = -2;
      
      private var var_215:Vector3d = null;
      
      private var var_1265:Number = 0;
      
      private var var_1554:Number = 0;
      
      private var var_1950:Boolean = false;
      
      private var var_192:Vector3d = null;
      
      private var var_1952:Vector3d;
      
      private var var_2681:Boolean = false;
      
      private var var_2679:Boolean = false;
      
      private var var_2677:Boolean = false;
      
      private var var_2682:Boolean = false;
      
      private var var_2674:int = 0;
      
      private var var_2675:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2683:int = 0;
      
      private var var_2680:int = 0;
      
      private var var_1814:int = -1;
      
      private var var_1951:int = 0;
      
      private var var_1949:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1952 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_192;
      }
      
      public function get targetId() : int
      {
         return this.var_2676;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2678;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1952;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2681;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2679;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2677;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2682;
      }
      
      public function get screenWd() : int
      {
         return this.var_2674;
      }
      
      public function get screenHt() : int
      {
         return this.var_2675;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2683;
      }
      
      public function get roomHt() : int
      {
         return this.var_2680;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1814;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_215 != null && this.var_192 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2676 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1952.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2678 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2681 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2679 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2677 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2682 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2674 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2675 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1949 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2683 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2680 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1814 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_215 == null)
         {
            this.var_215 = new Vector3d();
         }
         if(this.var_215.x != param1.x || this.var_215.y != param1.y || this.var_215.z != param1.z)
         {
            this.var_215.assign(param1);
            this.var_1951 = 0;
            _loc2_ = Vector3d.dif(this.var_215,this.var_192);
            this.var_1265 = _loc2_.length;
            this.var_1950 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_215 = null;
         this.var_192 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_192 != null)
         {
            return;
         }
         this.var_192 = new Vector3d();
         this.var_192.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_192 == null)
         {
            this.var_192 = new Vector3d();
         }
         this.var_192.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_215 != null && this.var_192 != null)
         {
            ++this.var_1951;
            if(this.var_1949)
            {
               this.var_1949 = false;
               this.var_192 = this.var_215;
               this.var_215 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_215,this.var_192);
            if(_loc3_.length > this.var_1265)
            {
               this.var_1265 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_192 = this.var_215;
               this.var_215 = null;
               this.var_1554 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1265);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1265 / const_1519;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1950)
               {
                  if(_loc7_ < this.var_1554)
                  {
                     _loc7_ = this.var_1554;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1950 = false;
                  }
               }
               this.var_1554 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_192 = Vector3d.sum(this.var_192,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1814 = -1;
      }
   }
}
