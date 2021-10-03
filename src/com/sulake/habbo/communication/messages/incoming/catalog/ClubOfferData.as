package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1135:int;
      
      private var var_1873:String;
      
      private var var_2101:int;
      
      private var _upgrade:Boolean;
      
      private var var_2856:Boolean;
      
      private var var_2861:int;
      
      private var var_2857:int;
      
      private var var_2859:int;
      
      private var var_2858:int;
      
      private var var_2860:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1135 = param1.readInteger();
         this.var_1873 = param1.readString();
         this.var_2101 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2856 = param1.readBoolean();
         this.var_2861 = param1.readInteger();
         this.var_2857 = param1.readInteger();
         this.var_2859 = param1.readInteger();
         this.var_2858 = param1.readInteger();
         this.var_2860 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1135;
      }
      
      public function get productCode() : String
      {
         return this.var_1873;
      }
      
      public function get price() : int
      {
         return this.var_2101;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2856;
      }
      
      public function get periods() : int
      {
         return this.var_2861;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2857;
      }
      
      public function get year() : int
      {
         return this.var_2859;
      }
      
      public function get month() : int
      {
         return this.var_2858;
      }
      
      public function get day() : int
      {
         return this.var_2860;
      }
   }
}
