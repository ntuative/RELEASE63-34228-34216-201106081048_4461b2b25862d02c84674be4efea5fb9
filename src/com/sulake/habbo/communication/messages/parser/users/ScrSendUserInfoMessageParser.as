package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2042:int = 1;
      
      public static const const_1748:int = 2;
       
      
      private var var_1034:String;
      
      private var var_2349:int;
      
      private var var_2347:int;
      
      private var var_2340:int;
      
      private var var_2346:int;
      
      private var var_2342:Boolean;
      
      private var var_2339:Boolean;
      
      private var var_2345:int;
      
      private var var_2341:int;
      
      private var var_2348:Boolean;
      
      private var var_2344:int;
      
      private var var_2343:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1034 = param1.readString();
         this.var_2349 = param1.readInteger();
         this.var_2347 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         this.var_2342 = param1.readBoolean();
         this.var_2339 = param1.readBoolean();
         this.var_2345 = param1.readInteger();
         this.var_2341 = param1.readInteger();
         this.var_2348 = param1.readBoolean();
         this.var_2344 = param1.readInteger();
         this.var_2343 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1034;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2349;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2347;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2340;
      }
      
      public function get responseType() : int
      {
         return this.var_2346;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2342;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2339;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2345;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2341;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2348;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2344;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2343;
      }
   }
}
