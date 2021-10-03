package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class FriendRequestEvent extends Event
   {
      
      public static const const_842:String = "FBE_REQUESTS";
       
      
      public function FriendRequestEvent()
      {
         super(const_842,false,false);
      }
   }
}
