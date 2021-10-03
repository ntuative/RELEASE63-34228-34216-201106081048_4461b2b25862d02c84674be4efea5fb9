package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1245:int = 1;
      
      public static const const_568:int = 2;
      
      private static const const_1010:int = 5;
      
      private static const const_1381:int = 250;
      
      private static const const_1382:int = 100;
      
      private static const const_1383:int = 180;
      
      private static const const_1384:int = 200;
       
      
      private var var_353:Timer;
      
      private var var_354:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_87:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1701:int = 2;
      
      private var var_743:BitmapData;
      
      private var var_922:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_353 = new Timer(const_1381,1);
         this.var_354 = new Timer(const_1382,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_87 = param1;
         this.var_87.visible = false;
         this._assets = param2;
         this.var_353.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_354.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_922 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_743 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_353 != null)
         {
            this.var_353.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_353.stop();
            this.var_353 = null;
         }
         if(this.var_354 != null)
         {
            this.var_354.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_354.stop();
            this.var_354 = null;
         }
         this._assets = null;
         this.var_87 = null;
         this._parent = null;
         this.var_743 = null;
         this.var_922 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_87 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_87);
         }
         this._parent = param1;
         this.var_1701 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_87.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_87.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1383,param3.width),Math.min(const_1384,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_87.width - _loc6_.width) / 2;
            this.var_87.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_354.reset();
         this.var_353.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_87.visible = true;
         this._parent.addChild(this.var_87);
         this.refreshArrow(this.var_1701);
         switch(this.var_1701)
         {
            case const_1245:
               this.var_87.x = -1 * this.var_87.width - const_1010;
               break;
            case const_568:
               this.var_87.x = this._parent.width + const_1010;
         }
         this.var_87.y = (this._parent.height - this.var_87.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_87.visible = false;
         this.var_354.reset();
         this.var_353.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_87);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_354.reset();
         this.var_353.reset();
         this.var_353.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_354.reset();
         this.var_353.reset();
         this.var_354.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_87 == null || this.var_87.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_87.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1245:
               _loc2_.bitmap = this.var_922.clone();
               _loc2_.width = this.var_922.width;
               _loc2_.height = this.var_922.height;
               _loc2_.y = (this.var_87.height - this.var_922.height) / 2;
               _loc2_.x = this.var_87.width - 1;
               break;
            case const_568:
               _loc2_.bitmap = this.var_743.clone();
               _loc2_.width = this.var_743.width;
               _loc2_.height = this.var_743.height;
               _loc2_.y = (this.var_87.height - this.var_743.height) / 2;
               _loc2_.x = -1 * this.var_743.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
