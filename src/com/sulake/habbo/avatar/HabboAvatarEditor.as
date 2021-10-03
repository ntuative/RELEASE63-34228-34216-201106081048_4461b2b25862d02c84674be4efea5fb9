package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.habbo.avatar.common.AvatarEditorGridColorItem;
   import com.sulake.habbo.avatar.common.AvatarEditorGridPartItem;
   import com.sulake.habbo.avatar.common.CategoryData;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.common.ISideContentModel;
   import com.sulake.habbo.avatar.enum.AvatarEditorFigureCategory;
   import com.sulake.habbo.avatar.enum.AvatarEditorSideCategory;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.avatar.generic.BodyModel;
   import com.sulake.habbo.avatar.head.HeadModel;
   import com.sulake.habbo.avatar.hotlooks.HotLooksModel;
   import com.sulake.habbo.avatar.legs.LegsModel;
   import com.sulake.habbo.avatar.promo.ClubPromoModel;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPalette;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import com.sulake.habbo.avatar.torso.TorsoModel;
   import com.sulake.habbo.avatar.wardrobe.WardrobeModel;
   import com.sulake.habbo.communication.messages.outgoing.register.UpdateFigureDataMessageComposer;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class HabboAvatarEditor
   {
      
      private static const const_1487:String = "hr-100.hd-180-7.ch-215-66.lg-270-79.sh-305-62.ha-1002-70.wa-2007";
      
      private static const const_1486:String = "hr-515-33.hd-600-1.ch-635-70.lg-716-66-62.sh-735-68";
      
      private static const const_678:int = 2;
       
      
      private var var_2328:uint;
      
      private var var_541:HabboAvatarEditorManager;
      
      private var var_995:IFigureData;
      
      private var _view:AvatarEditorView;
      
      private var _isInitialized:Boolean = false;
      
      private var var_114:Map;
      
      private var var_540:Map;
      
      private var var_635:Dictionary;
      
      private var _gender:String = "M";
      
      private var var_2245:String;
      
      private var var_789:int = 0;
      
      private var var_1895:Boolean;
      
      private var var_1231:IHabboAvatarEditorDataSaver = null;
      
      private var var_1896:Boolean = false;
      
      public function HabboAvatarEditor(param1:uint, param2:HabboAvatarEditorManager)
      {
         super();
         this.var_2328 = param1;
         this.var_541 = param2;
         this.var_995 = this.var_541.avatarRenderManager.getFigureData(AvatarType.const_134);
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this.var_114 != null)
         {
            for each(_loc1_ in this.var_114)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            this.var_114 = null;
         }
         if(this.var_540 != null)
         {
            for each(_loc2_ in this.var_540)
            {
               _loc2_.dispose();
               _loc2_ = null;
            }
            this.var_540 = null;
         }
         if(this._view != null)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_995 = null;
         this.var_635 = null;
         this.var_1231 = null;
      }
      
      private function init(param1:Array = null) : void
      {
         if(this._isInitialized)
         {
            return;
         }
         this.var_635 = new Dictionary();
         this.var_635["null"] = new FigureData(this);
         this.var_635["null"] = new FigureData(this);
         var _loc2_:FigureData = this.var_635["null"];
         var _loc3_:FigureData = this.var_635["null"];
         _loc2_.loadAvatarData(const_1487,FigureData.const_94);
         _loc3_.loadAvatarData(const_1486,FigureData.FEMALE);
         this.var_114 = new Map();
         this.var_540 = new Map();
         this.var_114.add(AvatarEditorFigureCategory.const_758,new BodyModel(this));
         this.var_114.add(AvatarEditorFigureCategory.const_52,new HeadModel(this));
         this.var_114.add(AvatarEditorFigureCategory.const_254,new TorsoModel(this));
         this.var_114.add(AvatarEditorFigureCategory.const_912,new LegsModel(this));
         if(param1 == null || param1.indexOf(AvatarEditorFigureCategory.HOTLOOKS) > -1)
         {
            this.var_114.add(AvatarEditorFigureCategory.HOTLOOKS,new HotLooksModel(this));
         }
         this.var_540.add(AvatarEditorSideCategory.const_112,new WardrobeModel(this));
         this.var_540.add(AvatarEditorSideCategory.const_553,new ClubPromoModel(this));
         this._isInitialized = true;
      }
      
      public function loadAvatarInEditor(param1:String, param2:String, param3:int = 0) : void
      {
         var _loc6_:* = null;
         switch(param2)
         {
            case FigureData.const_94:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param2 = "null";
         }
         var _loc4_:Boolean = false;
         if(this.var_789 != param3)
         {
            this.var_789 = param3;
            _loc4_ = true;
         }
         var _loc5_:FigureData = this.var_635[param2];
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.loadAvatarData(param1,param2);
         if(param2 != this.gender)
         {
            this.gender = param2;
            _loc4_ = true;
         }
         if(this.var_2245 != param1)
         {
            this.var_2245 = param1;
            _loc4_ = true;
         }
         if(this.var_114 && _loc4_)
         {
            for each(_loc6_ in this.var_114)
            {
               _loc6_.reset();
            }
         }
         if(this._view != null)
         {
            this._view.update();
         }
      }
      
      public function getFigureSetType(param1:String) : ISetType
      {
         if(this.var_995 == null)
         {
            return null;
         }
         return this.var_995.getSetType(param1);
      }
      
      public function getPalette(param1:int) : IPalette
      {
         if(this.var_995 == null)
         {
            return null;
         }
         return this.var_995.getPalette(param1);
      }
      
      public function openWindow(param1:IHabboAvatarEditorDataSaver, param2:Array = null, param3:Boolean = false, param4:String = null) : IFrameWindow
      {
         this.var_1231 = param1;
         this.var_1896 = param3;
         this.init(param2);
         if(this._view == null)
         {
            this._view = new AvatarEditorView(this,param2);
         }
         this.selectDefaultCategory(param2);
         return this._view.getFrame(param2,param4);
      }
      
      public function embedToContext(param1:IWindowContainer = null, param2:IHabboAvatarEditorDataSaver = null, param3:Array = null, param4:Boolean = false) : Boolean
      {
         this.var_1231 = param2;
         this.var_1896 = param4;
         this.init(param3);
         if(this._view == null)
         {
            this._view = new AvatarEditorView(this,param3);
         }
         this._view.embedToContext(param1,param3);
         this.selectDefaultCategory(param3);
         return true;
      }
      
      private function selectDefaultCategory(param1:Array) : void
      {
         if(param1 != null && param1.length > 0)
         {
            this.toggleAvatarEditorPage(param1[0]);
         }
         else
         {
            this.toggleAvatarEditorPage(AvatarEditorFigureCategory.const_758);
         }
      }
      
      public function get instanceId() : uint
      {
         return this.var_2328;
      }
      
      public function hide() : void
      {
         this._view.hide();
      }
      
      public function getCategoryWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:IAvatarEditorCategoryModel = this.var_114.getValue(param1) as IAvatarEditorCategoryModel;
         if(_loc2_ != null)
         {
            return _loc2_.getWindowContainer();
         }
         return null;
      }
      
      public function getSideContentWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:ISideContentModel = this.var_540.getValue(param1) as ISideContentModel;
         if(_loc2_ != null)
         {
            return _loc2_.getWindowContainer();
         }
         return null;
      }
      
      public function toggleAvatarEditorPage(param1:String) : void
      {
         if(this._view)
         {
            this._view.toggleCategoryView(param1,false);
         }
      }
      
      public function useClubClothing() : void
      {
         if(this.var_114 == null)
         {
            return;
         }
         if(this.var_1895)
         {
            return;
         }
         this.var_1895 = true;
         this.update();
      }
      
      public function get figureData() : FigureData
      {
         return this.var_635[this._gender];
      }
      
      public function saveCurrentSelection() : void
      {
         var _loc3_:* = null;
         var _loc1_:String = this.figureData.getFigureString();
         var _loc2_:String = this.figureData.gender;
         if(this.var_1231 != null)
         {
            this.var_1231.saveFigure(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = new UpdateFigureDataMessageComposer(_loc1_,_loc2_);
            this.var_541.communication.getHabboMainConnection(null).send(_loc3_);
            _loc3_.dispose();
            _loc3_ = null;
         }
      }
      
      public function generateDataContent(param1:IAvatarEditorCategoryModel, param2:String) : CategoryData
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:Boolean = false;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:Boolean = false;
         var _loc16_:* = false;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:Boolean = false;
         var _loc24_:* = null;
         if(!param1)
         {
            return null;
         }
         if(!param2)
         {
            return null;
         }
         var _loc3_:* = [];
         var _loc4_:Array = new Array();
         _loc5_ = 0;
         while(_loc5_ < const_678)
         {
            _loc4_.push(new Array());
            _loc5_++;
         }
         _loc8_ = this.getFigureSetType(param2);
         if(!_loc8_)
         {
            return null;
         }
         if(_loc8_ != null)
         {
            _loc9_ = this.getPalette(_loc8_.paletteID);
            if(!_loc9_)
            {
               return null;
            }
            _loc10_ = this.figureData.getColourIds(param2);
            if(!_loc10_)
            {
               _loc10_ = new Array();
            }
            _loc11_ = new Array(_loc10_.length);
            _loc12_ = this.isClubTryoutAllowed() && this.var_1895;
            for each(_loc13_ in _loc9_.colors)
            {
               if(_loc13_.isSelectable && (_loc12_ || this.var_789 >= _loc13_.clubLevel))
               {
                  _loc17_ = 0;
                  while(_loc17_ < const_678)
                  {
                     _loc18_ = new AvatarEditorGridColorItem(AvatarEditorView.var_1664.clone() as IWindowContainer,param1,_loc13_);
                     _loc4_[_loc17_].push(_loc18_);
                     _loc17_++;
                  }
                  if(param2 != FigureData.const_91)
                  {
                     _loc19_ = 0;
                     while(_loc19_ < _loc10_.length)
                     {
                        if(_loc13_.id == _loc10_[_loc19_])
                        {
                           _loc11_[_loc19_] = _loc13_;
                        }
                        _loc19_++;
                     }
                  }
               }
            }
            if(_loc12_)
            {
               _loc20_ = 2;
               _loc14_ = this.var_541.avatarRenderManager.getMandatoryAvatarPartSetIds(this.gender,_loc20_);
            }
            else
            {
               _loc14_ = this.var_541.avatarRenderManager.getMandatoryAvatarPartSetIds(this.gender,this.clubMemberLevel);
            }
            _loc15_ = Boolean(_loc14_.indexOf(param2) == -1);
            if(_loc15_)
            {
               _loc21_ = this.var_541.assets.getAssetByName("removeSelection") as BitmapDataAsset;
               if(_loc21_)
               {
                  _loc22_ = (_loc21_.content as BitmapData).clone();
                  _loc7_ = new AvatarEditorGridPartItem(AvatarEditorView.var_1378.clone() as IWindowContainer,param1,null,null,false);
                  _loc7_.iconImage = _loc22_;
                  _loc3_.push(_loc7_);
               }
            }
            _loc16_ = param2 != FigureData.const_91;
            for each(_loc6_ in _loc8_.partSets)
            {
               _loc23_ = false;
               if(_loc6_.gender == FigureData.const_1784)
               {
                  _loc23_ = true;
               }
               else if(_loc6_.gender == this.gender)
               {
                  _loc23_ = true;
               }
               if(_loc6_.isSelectable && _loc23_ && (_loc12_ || this.var_789 >= _loc6_.clubLevel))
               {
                  _loc7_ = new AvatarEditorGridPartItem(AvatarEditorView.var_1378.clone() as IWindowContainer,param1,_loc6_,_loc11_,_loc16_);
                  _loc3_.push(_loc7_);
               }
            }
         }
         _loc3_.sort(this.orderByClub);
         _loc5_ = 0;
         while(_loc5_ < const_678)
         {
            _loc24_ = _loc4_[_loc5_] as Array;
            _loc24_.sort(this.orderPaletteByClub);
            _loc5_++;
         }
         return new CategoryData(_loc3_,_loc4_);
      }
      
      public function isClubTryoutAllowed() : Boolean
      {
         return this.var_541.configuration.getBoolean("avatareditor.allowclubtryout",false);
      }
      
      public function isSideContentEnabled() : Boolean
      {
         return this.var_1896;
      }
      
      public function hasInvalidClubItems() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.var_114)
         {
            _loc3_ = _loc2_.hasClubItemsOverLevel(this.clubMemberLevel);
            if(_loc3_)
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      public function stripClubItems() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_114)
         {
            _loc1_.stripClubItemsOverLevel(this.clubMemberLevel);
         }
         this.figureData.updateView();
      }
      
      public function getDefaultColour(param1:String) : int
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:ISetType = this.getFigureSetType(param1);
         if(_loc2_ != null)
         {
            _loc3_ = this.getPalette(_loc2_.paletteID);
            for each(_loc4_ in _loc3_.colors)
            {
               if(_loc4_.isSelectable && this.var_789 >= _loc4_.clubLevel)
               {
                  return _loc4_.id;
               }
            }
         }
         return -1;
      }
      
      private function orderByClub(param1:AvatarEditorGridPartItem, param2:AvatarEditorGridPartItem) : Number
      {
         var _loc3_:Number = param1.partSet == null ? -1 : Number(Number(param1.partSet.clubLevel));
         var _loc4_:Number = param2.partSet == null ? -1 : Number(Number(param2.partSet.clubLevel));
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.partSet.id < param2.partSet.id)
         {
            return -1;
         }
         if(param1.partSet.id > param2.partSet.id)
         {
            return 1;
         }
         return 0;
      }
      
      private function orderPaletteByClub(param1:AvatarEditorGridColorItem, param2:AvatarEditorGridColorItem) : Number
      {
         var _loc3_:Number = param1.partColor == null ? -1 : Number(param1.partColor.clubLevel as Number);
         var _loc4_:Number = param2.partColor == null ? -1 : Number(param2.partColor.clubLevel as Number);
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(param1.partColor.index < param2.partColor.index)
         {
            return -1;
         }
         if(param1.partColor.index > param2.partColor.index)
         {
            return 1;
         }
         return 0;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
      
      public function set gender(param1:String) : void
      {
         var _loc2_:* = null;
         if(this._gender == param1)
         {
            return;
         }
         this._gender = param1;
         for each(_loc2_ in this.var_114)
         {
            _loc2_.reset();
         }
         if(this._view != null)
         {
            this._view.update();
         }
      }
      
      public function get handler() : AvatarEditorMessageHandler
      {
         return this.var_541.handler;
      }
      
      public function get wardrobe() : WardrobeModel
      {
         if(!this._isInitialized)
         {
            return null;
         }
         return this.var_540.getValue(AvatarEditorSideCategory.const_112);
      }
      
      public function set clubMemberLevel(param1:int) : void
      {
         this.var_789 = param1;
      }
      
      public function get clubMemberLevel() : int
      {
         return this.var_789;
      }
      
      public function get manager() : HabboAvatarEditorManager
      {
         return this.var_541;
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_114)
         {
            _loc1_.reset();
         }
         for each(_loc2_ in this.var_540)
         {
            _loc2_.reset();
         }
         if(this._view)
         {
            this._view.update();
         }
      }
   }
}
