package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1715:String;
      
      private var var_1714:int;
      
      private var var_1713:int;
      
      private var var_1682:int;
      
      private var _id:int;
      
      private var var_1711:Boolean;
      
      private var _type:String;
      
      private var var_1710:String;
      
      private var var_1712:int;
      
      private var _localizationCode:String;
      
      private var var_2253:int;
      
      private var var_2255:int;
      
      private var var_2254:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1715 = param1.readString();
         this.var_1714 = param1.readInteger();
         this.var_1713 = param1.readInteger();
         this.var_1682 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1711 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1710 = param1.readString();
         this.var_1712 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2253 = param1.readInteger();
         this.var_2255 = param1.readInteger();
         this.var_2254 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1710 = "";
         this.var_1712 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1715;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1714;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1713;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1682;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1711;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1710;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1712;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2253;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2255;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2254;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1715;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1711 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1714 >= this.var_1713;
      }
   }
}
