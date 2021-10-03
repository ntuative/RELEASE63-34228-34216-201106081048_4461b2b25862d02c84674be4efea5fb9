package com.sulake.habbo.ui.widget.infostand
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.enums.RoomWidgetInfostandExtraParamEnum;
   import com.sulake.habbo.ui.widget.events.RoomWidgetBadgeImageUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetCommandsUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetSongUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserBadgesUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserFigureUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserTagsUpdateEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class InfostandWidget extends RoomWidgetBase
   {
       
      
      private const const_2023:String = "infostand_user_view";
      
      private const const_2022:String = "infostand_furni_view";
      
      private const const_2024:String = "infostand_pet_view";
      
      private const const_2021:String = "infostand_bot_view";
      
      private const const_2025:String = "infostand_jukebox_view";
      
      private const const_2020:String = "infostand_songdisk_view";
      
      private var var_1323:InfoStandFurniView;
      
      private var var_198:InfoStandUserView;
      
      private var var_401:InfoStandPetView;
      
      private var var_470:InfoStandBotView;
      
      private var var_1061:InfoStandJukeboxView;
      
      private var var_1062:InfoStandSongDiskView;
      
      private var var_2830:Array;
      
      private var var_1615:InfostandUserData;
      
      private var var_708:InfostandFurniData;
      
      private var _petData:InfoStandPetData;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_182:Timer;
      
      private var _config:IHabboConfigurationManager;
      
      private var _catalog:IHabboCatalog;
      
      private const const_2296:int = 3000;
      
      public function InfostandWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager, param5:IHabboConfigurationManager, param6:IHabboCatalog)
      {
         super(param1,param2,param3,param4);
         this._config = param5;
         this._catalog = param6;
         this.var_1323 = new InfoStandFurniView(this,this.const_2022,this._catalog);
         this.var_198 = new InfoStandUserView(this,this.const_2023);
         this.var_401 = new InfoStandPetView(this,this.const_2024,this._catalog);
         this.var_470 = new InfoStandBotView(this,this.const_2021);
         this.var_1061 = new InfoStandJukeboxView(this,this.const_2025,this._catalog);
         this.var_1062 = new InfoStandSongDiskView(this,this.const_2020,this._catalog);
         this.var_1615 = new InfostandUserData();
         this.var_708 = new InfostandFurniData();
         this._petData = new InfoStandPetData();
         this.var_182 = new Timer(this.const_2296);
         this.var_182.addEventListener(TimerEvent.TIMER,this.onUpdateTimer);
         this.mainContainer.visible = false;
      }
      
      override public function get mainWindow() : IWindow
      {
         return this.mainContainer;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("infostand_main_container","",HabboWindowType.const_80,HabboWindowStyle.const_48,HabboWindowParam.const_48,new Rectangle(0,0,50,100)) as IWindowContainer;
            this._mainContainer.tags.push("room_widget_infostand");
            this._mainContainer.background = true;
            this._mainContainer.color = 0;
         }
         return this._mainContainer;
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var asset:IAsset = null;
         var xmlAsset:XmlAsset = null;
         var name:String = param1;
         var window:IWindow = null;
         try
         {
            asset = assets.getAssetByName(name);
            xmlAsset = XmlAsset(asset);
            window = windowManager.buildFromXML(XML(xmlAsset.content));
         }
         catch(e:Error)
         {
            Logger.log("[InfoStandWidget] Missing window XML: " + name);
         }
         return window;
      }
      
      override public function dispose() : void
      {
         if(this.var_182)
         {
            this.var_182.stop();
         }
         this.var_182 = null;
         if(this.var_198)
         {
            this.var_198.dispose();
         }
         this.var_198 = null;
         if(this.var_1323)
         {
            this.var_1323.dispose();
         }
         this.var_1323 = null;
         if(this.var_470)
         {
            this.var_470.dispose();
         }
         this.var_470 = null;
         if(this.var_401)
         {
            this.var_401.dispose();
         }
         this.var_401 = null;
         if(this.var_1061)
         {
            this.var_1061.dispose();
         }
         this.var_1061 = null;
         if(this.var_1062)
         {
            this.var_1062.dispose();
         }
         this.var_1062 = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_923,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_140,this.onClose);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_182,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_143,this.onRoomObjectRemoved);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_109,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_159,this.onUserInfo);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_359,this.onFurniInfo);
         param1.addEventListener(RoomWidgetUserTagsUpdateEvent.const_177,this.onUserTags);
         param1.addEventListener(RoomWidgetUserFigureUpdateEvent.const_186,this.onUserFigureUpdate);
         param1.addEventListener(RoomWidgetUserBadgesUpdateEvent.const_156,this.onUserBadges);
         param1.addEventListener(RoomWidgetBadgeImageUpdateEvent.const_823,this.onBadgeImage);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_108,this.onPetInfo);
         param1.addEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_445,this.onSongUpdate);
         param1.addEventListener(RoomWidgetSongUpdateEvent.const_437,this.onSongUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_923,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_140,this.onClose);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_182,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_143,this.onRoomObjectRemoved);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_109,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_159,this.onUserInfo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.onBotInfo);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_359,this.onFurniInfo);
         param1.removeEventListener(RoomWidgetUserTagsUpdateEvent.const_177,this.onUserTags);
         param1.removeEventListener(RoomWidgetUserFigureUpdateEvent.const_186,this.onUserFigureUpdate);
         param1.removeEventListener(RoomWidgetUserBadgesUpdateEvent.const_156,this.onUserBadges);
         param1.removeEventListener(RoomWidgetBadgeImageUpdateEvent.const_823,this.onBadgeImage);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_108,this.onPetInfo);
         param1.removeEventListener(RoomWidgetPetCommandsUpdateEvent.PET_COMMANDS,this.onPetCommands);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_445,this.onSongUpdate);
         param1.removeEventListener(RoomWidgetSongUpdateEvent.const_437,this.onSongUpdate);
      }
      
      public function get userData() : InfostandUserData
      {
         return this.var_1615;
      }
      
      public function get furniData() : InfostandFurniData
      {
         return this.var_708;
      }
      
      public function get petData() : InfoStandPetData
      {
         return this._petData;
      }
      
      private function onUpdateTimer(param1:TimerEvent) : void
      {
         if(this.var_401 == null)
         {
            return;
         }
         messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_383,this.var_401.getCurrentPetId()));
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_198.update(param1);
         this.selectView(this.const_2023);
         if(this.var_182)
         {
            this.var_182.stop();
         }
      }
      
      private function onBotInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userData.setData(param1);
         this.var_470.update(param1);
         this.selectView(this.const_2021);
         if(this.var_182)
         {
            this.var_182.stop();
         }
      }
      
      private function onFurniInfo(param1:RoomWidgetFurniInfoUpdateEvent) : void
      {
         this.furniData.setData(param1);
         if(param1.extraParam == RoomWidgetInfostandExtraParamEnum.const_537)
         {
            this.var_1061.update(param1);
            this.selectView(this.const_2025);
         }
         else if(param1.extraParam.indexOf(RoomWidgetInfostandExtraParamEnum.const_417) != -1)
         {
            this.var_1062.update(param1);
            this.selectView(this.const_2020);
         }
         else
         {
            this.var_1323.update(param1);
            this.selectView(this.const_2022);
         }
         if(this.var_182)
         {
            this.var_182.stop();
         }
      }
      
      private function onPetInfo(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this.petData.setData(param1);
         this.userData.petRespectLeft = param1.petRespectLeft;
         this.var_401.update(this.petData);
         this.selectView(this.const_2024);
         if(this.var_182)
         {
            this.var_182.start();
         }
      }
      
      private function onPetCommands(param1:RoomWidgetPetCommandsUpdateEvent) : void
      {
         this.var_401.updateEnabledTrainingCommands(param1.id,new CommandConfiguration(param1.allCommands,param1.enabledCommands));
      }
      
      private function onUserTags(param1:RoomWidgetUserTagsUpdateEvent) : void
      {
         if(param1.isOwnUser)
         {
            this.var_2830 = param1.tags;
         }
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(param1.isOwnUser)
         {
            this.var_198.setTags(param1.tags);
         }
         else
         {
            this.var_198.setTags(param1.tags,this.var_2830);
         }
      }
      
      private function onUserFigureUpdate(param1:RoomWidgetUserFigureUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         if(this.userData.isBot())
         {
            this.var_470.image = param1.image;
         }
         else
         {
            this.var_198.image = param1.image;
            this.var_198.setMotto(param1.customInfo,param1.isOwnUser);
            this.var_198.achievementScore = param1.achievementScore;
         }
      }
      
      private function onUserBadges(param1:RoomWidgetUserBadgesUpdateEvent) : void
      {
         if(param1.userId != this.userData.userId)
         {
            return;
         }
         this.userData.badges = param1.badges;
         this.var_198.clearBadges();
      }
      
      private function onBadgeImage(param1:RoomWidgetBadgeImageUpdateEvent) : void
      {
         var _loc2_:int = this.userData.badges.indexOf(param1.badgeID);
         if(_loc2_ >= 0)
         {
            if(this.userData.isBot())
            {
               this.var_470.setBadgeImage(_loc2_,param1.badgeImage);
            }
            else
            {
               this.var_198.setBadgeImage(_loc2_,param1.badgeImage);
            }
            return;
         }
         if(param1.badgeID == this.userData.groupBadgeId)
         {
            this.var_198.setGroupBadgeImage(param1.badgeImage);
         }
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_486,param1.id,param1.category);
         messageListener.processWidgetMessage(_loc2_);
      }
      
      private function onRoomObjectRemoved(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:* = false;
         switch(param1.type)
         {
            case RoomWidgetRoomObjectUpdateEvent.const_143:
               _loc2_ = param1.id == this.var_708.id;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_182:
               if(this.var_198 != null && this.var_198.window != null && this.var_198.window.visible)
               {
                  _loc2_ = param1.id == this.var_1615.userRoomId;
                  break;
               }
               if(this.var_401 != null && this.var_401.window != null && this.var_401.window.visible)
               {
                  _loc2_ = param1.id == this._petData.roomIndex;
                  break;
               }
               if(this.var_470 != null && this.var_470.window != null && this.var_470.window.visible)
               {
                  _loc2_ = param1.id == this.var_1615.userRoomId;
                  break;
               }
         }
         if(_loc2_)
         {
            this.close();
         }
      }
      
      private function onSongUpdate(param1:RoomWidgetSongUpdateEvent) : void
      {
         this.var_1061.updateSongInfo(param1);
         this.var_1062.updateSongInfo(param1);
      }
      
      public function close() : void
      {
         this.hideChildren();
         if(this.var_182)
         {
            this.var_182.stop();
         }
      }
      
      private function onClose(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.close();
         if(this.var_182)
         {
            this.var_182.stop();
         }
      }
      
      private function hideChildren() : void
      {
         var _loc1_:int = 0;
         if(this._mainContainer != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._mainContainer.numChildren)
            {
               this._mainContainer.getChildAt(_loc1_).visible = false;
               _loc1_++;
            }
         }
      }
      
      private function selectView(param1:String) : void
      {
         this.hideChildren();
         var _loc2_:IWindow = this.mainContainer.getChildByName(param1) as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         this.mainContainer.visible = true;
         this.mainContainer.width = _loc2_.width;
         this.mainContainer.height = _loc2_.height;
      }
      
      public function refreshContainer() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.mainContainer.numChildren)
         {
            _loc1_ = this.mainContainer.getChildAt(_loc2_);
            if(_loc1_.visible)
            {
               this.mainContainer.width = _loc1_.width;
               this.mainContainer.height = _loc1_.height;
            }
            _loc2_++;
         }
      }
   }
}
