package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1752:int;
      
      private var var_2828:String;
      
      private var var_330:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1752 = param1.readInteger();
         this.var_2828 = param1.readString();
         this.var_330 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1752;
      }
      
      public function get nodeName() : String
      {
         return this.var_2828;
      }
      
      public function get visible() : Boolean
      {
         return this.var_330;
      }
   }
}
