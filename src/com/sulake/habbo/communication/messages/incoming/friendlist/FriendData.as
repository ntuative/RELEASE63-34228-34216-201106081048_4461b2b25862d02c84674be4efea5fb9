package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _gender:int;
      
      private var var_830:Boolean;
      
      private var var_1946:Boolean;
      
      private var var_643:String;
      
      private var var_1581:int;
      
      private var var_1842:String;
      
      private var var_1841:String;
      
      private var var_1843:String;
      
      private var var_2246:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_830 = param1.readBoolean();
         this.var_1946 = param1.readBoolean();
         this.var_643 = param1.readString();
         this.var_1581 = param1.readInteger();
         this.var_1842 = param1.readString();
         this.var_1841 = param1.readString();
         this.var_1843 = param1.readString();
         this.var_2246 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1946;
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
      
      public function get facebookId() : String
      {
         return this.var_2246;
      }
   }
}
