package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1235:int;
      
      private var var_2003:int;
      
      private var var_2234:int;
      
      private var var_1984:int;
      
      private var var_1572:int;
      
      private var var_324:int;
      
      private var var_2232:String = "";
      
      private var var_2233:String = "";
      
      private var var_2231:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1235 = param1.readInteger();
         this.var_324 = param1.readInteger();
         this.var_2232 = param1.readString();
         this.var_2003 = param1.readInteger();
         this.var_2234 = param1.readInteger();
         this.var_1984 = param1.readInteger();
         this.var_1572 = param1.readInteger();
         this.var_2231 = param1.readInteger();
         this.var_2233 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1235;
      }
      
      public function get points() : int
      {
         return this.var_2003;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2234;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1984;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1572;
      }
      
      public function get badgeId() : int
      {
         return this.var_324;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2232;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2233;
      }
      
      public function get achievementID() : int
      {
         return this.var_2231;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
