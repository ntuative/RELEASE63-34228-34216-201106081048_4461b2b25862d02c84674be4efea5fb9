package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_312:int = 0;
      
      private static const const_1073:int = 1;
      
      private static const const_1070:int = 2;
      
      private static const const_1069:int = 3;
      
      private static const const_1072:int = 4;
      
      private static const const_1077:int = 5;
      
      private static const const_1075:int = 6;
      
      private static const const_1505:int = 72;
      
      private static const const_1503:int = 4;
      
      private static const const_1074:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1078:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1076:int = 6;
      
      private static const const_1498:int = 4;
      
      private static const const_687:int = 2;
      
      private static const const_1071:int = 200;
      
      private static const const_313:Array = ["a","b","c","d"];
      
      private static const const_1079:int = 10000;
      
      private static const const_1502:int = 0;
      
      private static const const_688:int = -1;
      
      private static const const_1500:Point = new Point(10,87);
      
      private static const const_1501:int = 162;
      
      private static const const_1499:Number = 0.01;
      
      private static const const_1506:Number = 100;
      
      private static const const_1504:int = 1000;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_214:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_550:Timer;
      
      private var var_803:ProgressBar;
      
      private var var_321:int = 0;
      
      private var var_1011:int = 0;
      
      private var var_1546:int = 0;
      
      private var var_1254:int = -1;
      
      private var var_804:int = -1;
      
      private var var_1012:int = -1;
      
      private var var_1253:int;
      
      private var var_1545:int;
      
      private var var_2649:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_214 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_550)
         {
            this.var_550.stop();
            this.var_550 = null;
         }
         if(this.var_803)
         {
            this.var_803.dispose();
            this.var_803 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_214 = param1;
            this.var_1011 = 0;
            this.refreshTrackerDetails();
            this.var_1254 = 0;
            this.var_321 = const_1069;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_214 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_803.refresh(0,100,-1);
            this.var_321 = const_1070;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this._questEngine.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_550 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this._questEngine.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_550 = new Timer(_loc3_ * 1000,1);
            this.var_550.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_550.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         this.var_214 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.hideSuccessFrames();
         if(_loc2_)
         {
            this.setupPrompt(this.var_804,const_1498,false);
         }
         else
         {
            this._window.x = this._window.desktop.width;
            this.var_321 = const_1073;
            this.setupPrompt(const_1502,const_687,false);
         }
         this._window.visible = true;
         this._questEngine.notifications.setQuestTrackerVisible(true);
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this._questEngine.isQuestWithPrompts(this.var_214))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_313.length)
         {
            this._questEngine.setupPromptFrameImage(this._window,this.var_214,const_313[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._questEngine.getXmlWindow("QuestTracker"));
         this._window.y = const_1505;
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this._questEngine,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1076)
         {
            new PendingImage(this._questEngine,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_803 = new ProgressBar(this._questEngine,IWindowContainer(this._window.findChildByName("content_cont")),const_1501,"quests.tracker.progress",false,const_1500);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1076)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_313.length)
         {
            this.getPromptFrame(const_313[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this._questEngine.localization.registerParameter("quests.tracker.caption","quest_name",this._questEngine.getQuestName(this.var_214));
         this._window.findChildByName("desc_txt").caption = this._questEngine.getQuestDesc(this.var_214);
         this._window.findChildByName("more_info_txt").visible = true;
         this._window.findChildByName("more_info_region").visible = true;
         var _loc1_:int = Math.round(100 * this.var_214.completedSteps / this.var_214.totalSteps);
         this.var_803.refresh(_loc1_,100,this.var_214.id);
         this._questEngine.setupQuestImage(this._window,this.var_214);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.questController.questDetails.showDetails(this.var_214);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_803.updateView();
         switch(this.var_321)
         {
            case const_1073:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1499));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_321 = const_312;
                  this._window.x = _loc2_;
               }
               break;
            case const_1070:
               _loc2_ = this._window.desktop.width;
               _loc3_ = _loc2_ - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1506 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_321 = const_312;
                  this._window.x = _loc2_;
                  this._window.visible = false;
                  this._questEngine.notifications.setQuestTrackerVisible(false);
               }
               break;
            case const_1069:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1078[this.var_1254]).visible = true;
               ++this.var_1254;
               if(this.var_1254 >= const_1078.length)
               {
                  this.var_321 = const_1077;
                  this.var_1546 = const_1504;
               }
               break;
            case const_1075:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1253 -= param1;
               this.getPromptFrame(const_313[this.var_1012]).visible = true;
               if(this.var_1253 < 0)
               {
                  this.var_1253 = const_1071;
                  ++this.var_1012;
                  if(this.var_1012 >= const_313.length)
                  {
                     this.var_1012 = 0;
                     --this.var_1545;
                     if(this.var_1545 < 1)
                     {
                        this.setupPrompt(const_1079,const_687,true);
                        this.var_321 = const_312;
                     }
                  }
               }
               break;
            case const_1072:
               if(this.var_1011 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_321 = const_312;
                  this.setupPrompt(const_1079,const_687,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1074[this.var_1011];
                  ++this.var_1011;
               }
               break;
            case const_1077:
               this.var_1546 -= param1;
               if(this.var_1546 < 0)
               {
                  this.var_321 = const_312;
                  this._window.visible = false;
               }
               break;
            case const_312:
               if(this.var_804 != const_688)
               {
                  this.var_804 -= param1;
                  if(this.var_804 < 0)
                  {
                     this.var_804 = const_688;
                     if(this.var_214 != null && this._questEngine.isQuestWithPrompts(this.var_214))
                     {
                        if(this.var_2649)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_321 = const_1075;
                           this.var_1012 = 0;
                           this.var_1253 = const_1071;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return this._window.desktop.width - this._window.width - const_1503;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_550.reset();
            this.var_550.start();
         }
         else
         {
            this._questEngine.questController.questDetails.openForNextQuest = this._questEngine.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this._questEngine.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this._questEngine.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this._questEngine.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_688,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_804 = param1;
         this.var_1545 = param2;
         this.var_2649 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1011 = 0;
         this.var_321 = const_1072;
      }
   }
}
