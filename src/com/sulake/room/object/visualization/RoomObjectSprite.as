package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1155:int = 0;
       
      
      private var var_488:BitmapData = null;
      
      private var var_2331:String = "";
      
      private var var_330:Boolean = true;
      
      private var var_2334:String = "";
      
      private var var_2333:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1739:String;
      
      private var var_1477:Boolean = false;
      
      private var var_1476:Boolean = false;
      
      private var _offset:Point;
      
      private var var_260:int = 0;
      
      private var _height:int = 0;
      
      private var var_1209:Number = 0;
      
      private var var_2332:Boolean = false;
      
      private var var_2330:Boolean = true;
      
      private var var_2327:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_2329:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1739 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2328 = var_1155++;
      }
      
      public function dispose() : void
      {
         this.var_488 = null;
         this.var_260 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_488;
      }
      
      public function get assetName() : String
      {
         return this.var_2331;
      }
      
      public function get visible() : Boolean
      {
         return this.var_330;
      }
      
      public function get tag() : String
      {
         return this.var_2334;
      }
      
      public function get alpha() : int
      {
         return this.var_2333;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1739;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1476;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1477;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_260;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1209;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2332;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2330;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2327;
      }
      
      public function get instanceId() : int
      {
         return this.var_2328;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2329;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_260 = param1.width;
            this._height = param1.height;
         }
         this.var_488 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2331 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_330 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2334 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2333 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1739 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2329 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1477 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1476 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1209 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2332 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2330 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2327 = param1;
         ++this._updateID;
      }
   }
}
