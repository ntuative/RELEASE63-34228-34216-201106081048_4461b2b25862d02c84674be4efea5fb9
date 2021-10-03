package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1924:String = "WE_DESTROY";
      
      public static const const_343:String = "WE_DESTROYED";
      
      public static const const_1716:String = "WE_OPEN";
      
      public static const const_1891:String = "WE_OPENED";
      
      public static const const_1852:String = "WE_CLOSE";
      
      public static const const_1950:String = "WE_CLOSED";
      
      public static const const_1900:String = "WE_FOCUS";
      
      public static const const_315:String = "WE_FOCUSED";
      
      public static const const_1894:String = "WE_UNFOCUS";
      
      public static const const_1787:String = "WE_UNFOCUSED";
      
      public static const const_1967:String = "WE_ACTIVATE";
      
      public static const const_623:String = "WE_ACTIVATED";
      
      public static const const_1813:String = "WE_DEACTIVATE";
      
      public static const const_502:String = "WE_DEACTIVATED";
      
      public static const const_335:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_578:String = "WE_UNSELECT";
      
      public static const const_583:String = "WE_UNSELECTED";
      
      public static const const_1867:String = "WE_LOCK";
      
      public static const const_1807:String = "WE_LOCKED";
      
      public static const const_1910:String = "WE_UNLOCK";
      
      public static const const_1760:String = "WE_UNLOCKED";
      
      public static const const_729:String = "WE_ENABLE";
      
      public static const const_259:String = "WE_ENABLED";
      
      public static const const_918:String = "WE_DISABLE";
      
      public static const const_277:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_426:String = "WE_RELOCATED";
      
      public static const const_1361:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1940:String = "WE_MINIMIZE";
      
      public static const const_1884:String = "WE_MINIMIZED";
      
      public static const const_1792:String = "WE_MAXIMIZE";
      
      public static const const_1728:String = "WE_MAXIMIZED";
      
      public static const const_1859:String = "WE_RESTORE";
      
      public static const const_1878:String = "WE_RESTORED";
      
      public static const const_574:String = "WE_CHILD_ADDED";
      
      public static const const_416:String = "WE_CHILD_REMOVED";
      
      public static const const_222:String = "WE_CHILD_RELOCATED";
      
      public static const const_183:String = "WE_CHILD_RESIZED";
      
      public static const const_358:String = "WE_CHILD_ACTIVATED";
      
      public static const const_497:String = "WE_PARENT_ADDED";
      
      public static const const_1801:String = "WE_PARENT_REMOVED";
      
      public static const const_1914:String = "WE_PARENT_RELOCATED";
      
      public static const const_744:String = "WE_PARENT_RESIZED";
      
      public static const const_1284:String = "WE_PARENT_ACTIVATED";
      
      public static const const_189:String = "WE_OK";
      
      public static const const_495:String = "WE_CANCEL";
      
      public static const const_118:String = "WE_CHANGE";
      
      public static const const_544:String = "WE_SCROLL";
      
      public static const const_115:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_726:IWindow;
      
      protected var var_1114:Boolean;
      
      protected var var_493:Boolean;
      
      protected var var_492:Boolean;
      
      protected var var_725:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_726 = param3;
         _loc5_.var_493 = param4;
         _loc5_.var_492 = false;
         _loc5_.var_725 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_726;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_493;
      }
      
      public function recycle() : void
      {
         if(this.var_492)
         {
            throw new Error("Event already recycled!");
         }
         this.var_726 = null;
         this._window = null;
         this.var_492 = true;
         this.var_1114 = false;
         this.var_725.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1114;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1114 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1114;
      }
      
      public function stopPropagation() : void
      {
         this.var_1114 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1114 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_493 + " window: " + this._window + " }";
      }
   }
}
