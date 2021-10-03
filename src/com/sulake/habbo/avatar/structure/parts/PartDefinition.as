package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2809:String;
      
      private var var_2039:String;
      
      private var var_2810:String;
      
      private var var_2040:Boolean;
      
      private var var_2041:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2809 = String(param1["set-type"]);
         this.var_2039 = String(param1["flipped-set-type"]);
         this.var_2810 = String(param1["remove-set-type"]);
         this.var_2040 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2041 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2041;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2041 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2809;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2039;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2810;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2040;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2040 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2039 = param1;
      }
   }
}