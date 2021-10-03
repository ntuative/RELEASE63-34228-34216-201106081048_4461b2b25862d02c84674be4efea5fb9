package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_324:int = 1;
      
      public static const const_215:int = 2;
      
      public static const const_246:int = 3;
      
      public static const const_348:int = 4;
      
      public static const const_213:int = 5;
      
      public static const const_409:int = 1;
      
      public static const const_937:int = 2;
      
      public static const const_725:int = 3;
      
      public static const const_885:int = 4;
      
      public static const const_291:int = 5;
      
      public static const const_960:int = 6;
      
      public static const const_755:int = 7;
      
      public static const const_297:int = 8;
      
      public static const const_423:int = 9;
      
      public static const const_2060:int = 10;
      
      public static const const_921:int = 11;
      
      public static const const_518:int = 12;
       
      
      private var var_422:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_422 = new Array();
         this.var_422.push(new Tab(this._navigator,const_324,const_518,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_570));
         this.var_422.push(new Tab(this._navigator,const_215,const_409,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_570));
         this.var_422.push(new Tab(this._navigator,const_348,const_921,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1217));
         this.var_422.push(new Tab(this._navigator,const_246,const_291,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_570));
         this.var_422.push(new Tab(this._navigator,const_213,const_297,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_856));
         this.setSelectedTab(const_324);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_348;
      }
      
      public function get tabs() : Array
      {
         return this.var_422;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_422)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
