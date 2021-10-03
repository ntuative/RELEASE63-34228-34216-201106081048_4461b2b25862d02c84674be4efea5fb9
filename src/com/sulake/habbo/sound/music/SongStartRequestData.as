package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1776:int;
      
      private var var_2000:Number;
      
      private var var_2752:Number;
      
      private var var_2755:int;
      
      private var var_2753:Number;
      
      private var var_2754:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1776 = param1;
         this.var_2000 = param2;
         this.var_2752 = param3;
         this.var_2753 = param4;
         this.var_2754 = param5;
         this.var_2755 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1776;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2000 < 0)
         {
            return 0;
         }
         return this.var_2000 + (getTimer() - this.var_2755) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2752;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2753;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2754;
      }
   }
}
