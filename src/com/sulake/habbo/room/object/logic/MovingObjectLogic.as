package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_845:int = 500;
      
      private static var var_627:Vector3d = new Vector3d();
       
      
      private var var_446:Vector3d;
      
      private var var_102:Vector3d;
      
      private var var_989:Number = 0.0;
      
      private var var_1876:int = 0;
      
      private var var_2533:int;
      
      private var var_988:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_446 = new Vector3d();
         this.var_102 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1876;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_102 = null;
         this.var_446 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_102.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_988 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_102.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2533 = this.var_1876;
               this.var_446.assign(_loc3_);
               this.var_446.sub(this.var_102);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_989 != _loc2_.z)
               {
                  this.var_989 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_732,this.var_989);
               }
            }
            else if(this.var_989 != 0)
            {
               this.var_989 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_732,this.var_989);
            }
         }
         if(this.var_446.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2533;
            if(_loc4_ == this.var_988 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_988)
            {
               _loc4_ = this.var_988;
            }
            if(this.var_446.length > 0)
            {
               var_627.assign(this.var_446);
               var_627.mul(_loc4_ / Number(this.var_988));
               var_627.add(this.var_102);
            }
            else
            {
               var_627.assign(this.var_102);
            }
            if(_loc2_ != null)
            {
               var_627.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_627);
            }
            if(_loc4_ == this.var_988)
            {
               this.var_446.x = 0;
               this.var_446.y = 0;
               this.var_446.z = 0;
            }
         }
         this.var_1876 = param1;
      }
   }
}
