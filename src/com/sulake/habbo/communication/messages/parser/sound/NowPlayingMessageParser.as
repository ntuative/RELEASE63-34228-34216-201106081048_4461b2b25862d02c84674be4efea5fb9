package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2129:int;
      
      private var _currentPosition:int;
      
      private var var_2126:int;
      
      private var var_2127:int;
      
      private var var_2128:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2129;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2126;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2127;
      }
      
      public function get syncCount() : int
      {
         return this.var_2128;
      }
      
      public function flush() : Boolean
      {
         this.var_2129 = -1;
         this._currentPosition = -1;
         this.var_2126 = -1;
         this.var_2127 = -1;
         this.var_2128 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2129 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2126 = param1.readInteger();
         this.var_2127 = param1.readInteger();
         this.var_2128 = param1.readInteger();
         return true;
      }
   }
}
