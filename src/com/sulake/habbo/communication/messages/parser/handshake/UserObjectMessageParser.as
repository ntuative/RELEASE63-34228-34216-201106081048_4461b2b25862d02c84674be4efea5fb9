package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_643:String;
      
      private var var_955:String;
      
      private var var_2360:String;
      
      private var var_1843:String;
      
      private var var_2358:int;
      
      private var var_2359:String;
      
      private var var_2357:int;
      
      private var var_2356:int;
      
      private var var_2354:int;
      
      private var var_1190:int;
      
      private var var_769:int;
      
      private var var_2355:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_643 = param1.readString();
         this.var_955 = param1.readString();
         this.var_2360 = param1.readString();
         this.var_1843 = param1.readString();
         this.var_2358 = param1.readInteger();
         this.var_2359 = param1.readString();
         this.var_2357 = param1.readInteger();
         this.var_2356 = param1.readInteger();
         this.var_2354 = param1.readInteger();
         this.var_1190 = param1.readInteger();
         this.var_769 = param1.readInteger();
         this.var_2355 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get sex() : String
      {
         return this.var_955;
      }
      
      public function get customData() : String
      {
         return this.var_2360;
      }
      
      public function get realName() : String
      {
         return this.var_1843;
      }
      
      public function get tickets() : int
      {
         return this.var_2358;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2359;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2357;
      }
      
      public function get directMail() : int
      {
         return this.var_2356;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2354;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1190;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_769;
      }
      
      public function get identityId() : int
      {
         return this.var_2355;
      }
   }
}
