package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_843:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1124)
         {
            _structure = null;
            _assets = null;
            var_293 = null;
            var_301 = null;
            var_643 = null;
            var_592 = null;
            var_345 = null;
            if(!var_1398 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_895 = null;
            var_1124 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_843[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_843[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_432:
               switch(_loc3_)
               {
                  case AvatarAction.const_788:
                  case AvatarAction.const_478:
                  case AvatarAction.const_452:
                  case AvatarAction.const_944:
                  case AvatarAction.const_422:
                  case AvatarAction.const_979:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_320:
            case AvatarAction.const_797:
            case AvatarAction.const_275:
            case AvatarAction.const_835:
            case AvatarAction.const_815:
            case AvatarAction.const_730:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
