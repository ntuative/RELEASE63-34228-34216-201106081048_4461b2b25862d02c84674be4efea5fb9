package com.sulake.habbo.avatar.promo
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.ISideContentModel;
   import com.sulake.habbo.tracking.HabboTracking;
   
   public class ClubPromoModel implements ISideContentModel
   {
       
      
      private var var_25:HabboAvatarEditor;
      
      private var _view:ClubPromoView;
      
      public function ClubPromoModel(param1:HabboAvatarEditor)
      {
         super();
         this.var_25 = param1;
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
      }
      
      public function reset() : void
      {
      }
      
      private function init() : void
      {
         if(!this._view)
         {
            this._view = new ClubPromoView(this);
         }
      }
      
      public function tryClubClothes() : void
      {
         this._view.showBuyView();
         if(this.var_25)
         {
            this.var_25.useClubClothing();
         }
         HabboTracking.getInstance().trackEventLog("AvatarEditor","click","try_club_clothes");
      }
      
      public function get controller() : HabboAvatarEditor
      {
         return this.var_25;
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         this.init();
         if(this._view)
         {
            return this._view.getWindowContainer();
         }
         return null;
      }
   }
}
