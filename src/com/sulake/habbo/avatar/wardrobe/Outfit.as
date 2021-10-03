package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit, IAvatarImageListener
   {
       
      
      private var var_25:HabboAvatarEditor;
      
      private var var_643:String;
      
      private var _gender:String;
      
      private var _view:OutfitView;
      
      private var var_1124:Boolean;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         this.var_25 = param1;
         this._view = new OutfitView(param1.manager.windowManager,param1.manager.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_94:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         this.var_643 = param2;
         this._gender = param3;
         this.update();
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_643 = null;
         this._gender = null;
         this.var_1124 = true;
         this.var_25 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1124;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = this.var_25.manager.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_110,this._gender,this);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_40,int(FigureData.const_897));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_40,true);
            if(this._view)
            {
               this._view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
      
      public function get view() : OutfitView
      {
         return this._view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.update();
      }
   }
}
