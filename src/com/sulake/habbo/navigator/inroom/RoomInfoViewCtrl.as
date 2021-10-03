package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_193:IWindowContainer;
      
      private var var_3018:int;
      
      private var var_387:RoomEventViewCtrl;
      
      private var var_386:Timer;
      
      private var var_153:RoomSettingsCtrl;
      
      private var var_276:RoomThumbnailCtrl;
      
      private var var_1029:TagRenderer;
      
      private var var_388:IWindowContainer;
      
      private var var_389:IWindowContainer;
      
      private var var_661:IWindowContainer;
      
      private var var_1977:IWindowContainer;
      
      private var var_1975:IWindowContainer;
      
      private var var_1277:IWindowContainer;
      
      private var var_951:ITextWindow;
      
      private var var_1028:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_826:ITextWindow;
      
      private var var_1279:ITextWindow;
      
      private var var_1027:ITextWindow;
      
      private var var_825:ITextWindow;
      
      private var var_1571:ITextWindow;
      
      private var var_277:IWindowContainer;
      
      private var var_822:IWindowContainer;
      
      private var var_1569:IWindowContainer;
      
      private var var_1976:ITextWindow;
      
      private var var_662:ITextWindow;
      
      private var var_1974:IWindow;
      
      private var var_1283:IContainerButtonWindow;
      
      private var var_1282:IContainerButtonWindow;
      
      private var var_1281:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1280:IContainerButtonWindow;
      
      private var var_1568:IButtonWindow;
      
      private var var_1566:IButtonWindow;
      
      private var var_1567:IButtonWindow;
      
      private var var_823:IWindowContainer;
      
      private var var_1278:ITextWindow;
      
      private var var_1026:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_824:IButtonWindow;
      
      private var var_1570:Boolean = false;
      
      private const const_801:int = 75;
      
      private const const_975:int = 3;
      
      private const const_996:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_387 = new RoomEventViewCtrl(this._navigator);
         this.var_153 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_276 = new RoomThumbnailCtrl(this._navigator);
         this.var_1029 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_153);
         this.var_386 = new Timer(6000,1);
         this.var_386.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_386)
         {
            this.var_386.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_386.reset();
            this.var_386 = null;
         }
         this._navigator = null;
         this.var_387 = null;
         this.var_153 = null;
         this.var_276 = null;
         if(this.var_1029)
         {
            this.var_1029.dispose();
            this.var_1029 = null;
         }
         this.var_193 = null;
         this.var_388 = null;
         this.var_389 = null;
         this.var_661 = null;
         this.var_1977 = null;
         this.var_1975 = null;
         this.var_1277 = null;
         this.var_951 = null;
         this.var_1028 = null;
         this._ownerName = null;
         this.var_826 = null;
         this.var_1279 = null;
         this.var_1027 = null;
         this.var_825 = null;
         this.var_1571 = null;
         this.var_277 = null;
         this.var_822 = null;
         this.var_1569 = null;
         this.var_1976 = null;
         this.var_662 = null;
         this.var_1974 = null;
         this.var_1283 = null;
         this.var_1282 = null;
         this.var_1281 = null;
         this._remFavouriteButton = null;
         this.var_1280 = null;
         this.var_1568 = null;
         this.var_1566 = null;
         this.var_1567 = null;
         this.var_823 = null;
         this.var_1278 = null;
         this.var_1026 = null;
         this._buttons = null;
         this.var_824 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_386.reset();
         this.var_387.active = true;
         this.var_153.active = false;
         this.var_276.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_386.reset();
         this.var_153.load(param1);
         this.var_153.active = true;
         this.var_387.active = false;
         this.var_276.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_153.active = true;
         this.var_387.active = false;
         this.var_276.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_386.reset();
         this.var_153.active = false;
         this.var_387.active = false;
         this.var_276.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1570 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_386.reset();
         this.var_387.active = false;
         this.var_153.active = false;
         this.var_276.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_975;
         this._window.y = this.const_801;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_193,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_193.height = Util.getLowestPoint(this.var_193);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_996;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_388);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_153.refresh(this.var_388);
         this.var_276.refresh(this.var_388);
         Util.moveChildrenToColumn(this.var_388,["room_details","room_buttons"],0,2);
         this.var_388.height = Util.getLowestPoint(this.var_388);
         this.var_388.visible = true;
         Logger.log("XORP: " + this.var_389.visible + ", " + this.var_1277.visible + ", " + this.var_661.visible + ", " + this.var_661.rectangle + ", " + this.var_388.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_277);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_387.refresh(this.var_277);
         if(Util.hasVisibleChildren(this.var_277) && !(this.var_153.active || this.var_276.active))
         {
            Util.moveChildrenToColumn(this.var_277,["event_details","event_buttons"],0,2);
            this.var_277.height = Util.getLowestPoint(this.var_277);
            this.var_277.visible = true;
         }
         else
         {
            this.var_277.visible = false;
         }
         Logger.log("EVENT: " + this.var_277.visible + ", " + this.var_277.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_153.active && !this.var_276.active && !this.var_387.active)
         {
            this.var_823.visible = true;
            this.var_1026.text = this.getEmbedData();
         }
         else
         {
            this.var_823.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_153.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_824)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_824.visible = _loc1_;
            if(this.var_1570)
            {
               this.var_824.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_824.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_153.active || this.var_276.active)
         {
            return;
         }
         this.var_951.text = param1.roomName;
         this.var_951.height = this.var_951.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_826.text = param1.description;
         this.var_1029.refreshTags(this.var_389,param1.tags);
         this.var_826.visible = false;
         if(param1.description != "")
         {
            this.var_826.height = this.var_826.textHeight + 5;
            this.var_826.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1282,"facebook_logo_small",_loc3_,null,0);
         this.var_1282.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1283,"thumb_up",_loc4_,null,0);
         this.var_1283.visible = _loc4_;
         this.var_825.visible = !_loc4_;
         this.var_1571.visible = !_loc4_;
         this.var_1571.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_389,"home",param2,null,0);
         this._navigator.refreshButton(this.var_389,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_389,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_951.y,0);
         this.var_389.visible = true;
         this.var_389.height = Util.getLowestPoint(this.var_389);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_389.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_153.active || this.var_276.active)
         {
            return;
         }
         this.var_1028.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1028.height = this.var_1028.textHeight + 5;
         this.var_1279.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1279.height = this.var_1279.textHeight + 5;
         Util.moveChildrenToColumn(this.var_661,["public_space_name","public_space_desc"],this.var_1028.y,0);
         this.var_661.visible = true;
         this.var_661.height = Math.max(86,Util.getLowestPoint(this.var_661));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_387.active)
         {
            return;
         }
         this.var_1976.text = param1.eventName;
         this.var_662.text = param1.eventDescription;
         this.var_1029.refreshTags(this.var_822,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_662.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_662.height = this.var_662.textHeight + 5;
            this.var_662.y = Util.getLowestPoint(this.var_822) + 2;
            this.var_662.visible = true;
         }
         this.var_822.visible = true;
         this.var_822.height = Util.getLowestPoint(this.var_822);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_153.active || this.var_276.active)
         {
            return;
         }
         this.var_1568.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1281.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1280.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1277.visible = Util.hasVisibleChildren(this.var_1277);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_387.active)
         {
            return;
         }
         this.var_1566.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1567.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1569.visible = Util.hasVisibleChildren(this.var_1569);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_193 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_388 = IWindowContainer(this.find("room_info"));
         this.var_389 = IWindowContainer(this.find("room_details"));
         this.var_661 = IWindowContainer(this.find("public_space_details"));
         this.var_1977 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1975 = IWindowContainer(this.find("rating_cont"));
         this.var_1277 = IWindowContainer(this.find("room_buttons"));
         this.var_951 = ITextWindow(this.find("room_name"));
         this.var_1028 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_826 = ITextWindow(this.find("room_desc"));
         this.var_1279 = ITextWindow(this.find("public_space_desc"));
         this.var_1027 = ITextWindow(this.find("owner_caption"));
         this.var_825 = ITextWindow(this.find("rating_caption"));
         this.var_1571 = ITextWindow(this.find("rating_txt"));
         this.var_277 = IWindowContainer(this.find("event_info"));
         this.var_822 = IWindowContainer(this.find("event_details"));
         this.var_1569 = IWindowContainer(this.find("event_buttons"));
         this.var_1976 = ITextWindow(this.find("event_name"));
         this.var_662 = ITextWindow(this.find("event_desc"));
         this.var_1282 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1283 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1974 = this.find("staff_pick_button");
         this.var_1281 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1280 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1568 = IButtonWindow(this.find("room_settings_button"));
         this.var_1566 = IButtonWindow(this.find("create_event_button"));
         this.var_1567 = IButtonWindow(this.find("edit_event_button"));
         this.var_823 = IWindowContainer(this.find("embed_info"));
         this.var_1278 = ITextWindow(this.find("embed_info_txt"));
         this.var_1026 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_824 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1281,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1568,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1280,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1566,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1567,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1026,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1283,this.onThumbUp);
         this.addMouseClickListener(this.var_1974,this.onStaffPick);
         this.addMouseClickListener(this.var_1282,this.onFacebookLike);
         this.addMouseClickListener(this.var_824,this.onZoomClick);
         this._navigator.refreshButton(this.var_1281,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1280,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_388,this.onHover);
         this.addMouseOverListener(this.var_277,this.onHover);
         this.var_1027.width = this.var_1027.textWidth;
         Util.moveChildrenToRow(this.var_1977,["owner_caption","owner_name"],this.var_1027.x,this.var_1027.y,3);
         this.var_825.width = this.var_825.textWidth;
         Util.moveChildrenToRow(this.var_1975,["rating_caption","rating_txt"],this.var_825.x,this.var_825.y,3);
         this.var_1278.height = this.var_1278.textHeight + 5;
         Util.moveChildrenToColumn(this.var_823,["embed_info_txt","embed_src_txt"],this.var_1278.y,2);
         this.var_823.height = Util.getLowestPoint(this.var_823) + 5;
         this.var_3018 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1026.setSelection(0,this.var_1026.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.ZOOM_TOGGLE));
         this.var_1570 = !this.var_1570;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_386.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_153 != null)
         {
            this.var_153.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
