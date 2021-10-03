package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1204:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _gender:int;
      
      private var var_830:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var var_643:String;
      
      private var var_1581:int;
      
      private var var_1842:String;
      
      private var var_1841:String;
      
      private var var_1843:String;
      
      private var var_1086:Vector.<FriendNotification>;
      
      private var var_2481:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1843 = param3;
         this.var_1842 = param4;
         this._gender = param5;
         this.var_830 = param6;
         this._allowFollow = param7;
         this.var_643 = param8;
         this.var_1581 = param9;
         this.var_1841 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this._gender;
      }
      
      public function get online() : Boolean
      {
         return this.var_830;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get categoryId() : int
      {
         return this.var_1581;
      }
      
      public function get motto() : String
      {
         return this.var_1842;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1841;
      }
      
      public function get realName() : String
      {
         return this.var_1843;
      }
      
      public function get logEventId() : int
      {
         return this.var_2481;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1086)
         {
            this.var_1086 = new Vector.<FriendNotification>();
         }
         return this.var_1086;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this._gender = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_830 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_643 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1581 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1842 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1841 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1843 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1204;
      }
   }
}
