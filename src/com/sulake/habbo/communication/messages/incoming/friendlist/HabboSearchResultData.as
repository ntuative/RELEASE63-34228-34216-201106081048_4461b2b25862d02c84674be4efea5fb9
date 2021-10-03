package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2277:int;
      
      private var var_1992:String;
      
      private var var_2278:String;
      
      private var var_2275:Boolean;
      
      private var var_2279:Boolean;
      
      private var var_2273:int;
      
      private var var_2276:String;
      
      private var var_2274:String;
      
      private var var_1843:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2277 = param1.readInteger();
         this.var_1992 = param1.readString();
         this.var_2278 = param1.readString();
         this.var_2275 = param1.readBoolean();
         this.var_2279 = param1.readBoolean();
         param1.readString();
         this.var_2273 = param1.readInteger();
         this.var_2276 = param1.readString();
         this.var_2274 = param1.readString();
         this.var_1843 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2277;
      }
      
      public function get avatarName() : String
      {
         return this.var_1992;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2278;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2275;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2279;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2273;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2276;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2274;
      }
      
      public function get realName() : String
      {
         return this.var_1843;
      }
   }
}
