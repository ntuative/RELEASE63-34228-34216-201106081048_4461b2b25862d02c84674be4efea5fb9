package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1235:int;
      
      private var var_324:String;
      
      private var var_1821:int;
      
      private var var_2234:int;
      
      private var var_1984:int;
      
      private var var_1822:int;
      
      private var var_1823:Boolean;
      
      private var _category:String;
      
      private var var_2455:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1235 = param1.readInteger();
         this.var_324 = param1.readString();
         this.var_1821 = Math.max(1,param1.readInteger());
         this.var_2234 = param1.readInteger();
         this.var_1984 = param1.readInteger();
         this.var_1822 = param1.readInteger();
         this.var_1823 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2455 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_324;
      }
      
      public function get level() : int
      {
         return this.var_1235;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1821;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2234;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1984;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1822;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1823;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2455;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1235 > 1 || this.var_1823;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1822 = this.var_1821;
      }
   }
}
