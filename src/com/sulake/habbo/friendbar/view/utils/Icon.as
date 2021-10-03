package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2251:int = 0;
      
      protected static const const_656:int = 1;
      
      protected static const const_1984:int = 2;
      
      protected static const const_1983:int = 3;
      
      protected static const const_124:int = 4;
      
      protected static const const_655:int = 8;
      
      protected static const const_250:int = 18;
      
      protected static const const_1982:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1722:Boolean = false;
      
      protected var var_48:BitmapDataAsset;
      
      protected var var_96:IBitmapWrapperWindow;
      
      private var var_1374:uint;
      
      protected var var_206:Timer;
      
      protected var _frame:int = 0;
      
      private var var_722:Point;
      
      protected var var_913:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1374 = const_656 | const_655;
         this.var_722 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1722;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_48 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_48;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_96 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_96;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1374 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1374;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_913 = param1;
         if(this.var_913 && this.var_1722)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1722 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_96 && !this.var_96.disposed)
         {
            if(!this.var_96.bitmap)
            {
               this.var_96.bitmap = new BitmapData(this.var_96.width,this.var_96.height,true,0);
            }
            else
            {
               this.var_96.bitmap.fillRect(this.var_96.bitmap.rect,0);
            }
            if(this.var_48 && !this.var_48.disposed)
            {
               this.var_722.x = this.var_722.y = 0;
               _loc1_ = this.var_48.content as BitmapData;
               switch(this.var_1374 & const_1983)
               {
                  case const_656:
                     this.var_722.x = this.var_96.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1984:
                     this.var_722.x = this.var_96.bitmap.width - _loc1_.width;
               }
               switch(this.var_1374 & const_1982)
               {
                  case const_655:
                     this.var_722.y = this.var_96.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_250:
                     this.var_722.y = this.var_96.bitmap.height - _loc1_.height;
               }
               this.var_96.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_722);
               this.var_96.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_206)
            {
               this.var_206 = new Timer(param2,0);
               this.var_206.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_206.start();
               this.onTimerEvent(null);
            }
            this.var_206.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_206)
            {
               this.var_206.reset();
               this.var_206.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_206 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
