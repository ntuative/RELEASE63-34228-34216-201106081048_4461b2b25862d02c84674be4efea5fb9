package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2040:int = 0;
      
      public static const const_1735:int = 1;
      
      public static const const_1708:int = 2;
      
      public static const const_2065:int = 3;
      
      public static const const_2102:int = 4;
      
      public static const const_2184:int = 5;
      
      public static const const_1745:int = 10;
      
      public static const const_2106:int = 11;
      
      public static const const_2058:int = 12;
      
      public static const const_2115:int = 13;
      
      public static const const_2048:int = 16;
      
      public static const const_2137:int = 17;
      
      public static const const_2143:int = 18;
      
      public static const const_2246:int = 19;
      
      public static const const_2202:int = 20;
      
      public static const const_2222:int = 22;
      
      public static const const_2068:int = 23;
      
      public static const const_2061:int = 24;
      
      public static const const_2052:int = 25;
      
      public static const const_2113:int = 26;
      
      public static const const_2131:int = 27;
      
      public static const const_2085:int = 28;
      
      public static const const_2132:int = 29;
      
      public static const const_2033:int = 100;
      
      public static const const_2245:int = 101;
      
      public static const const_2095:int = 102;
      
      public static const const_2072:int = 103;
      
      public static const const_2075:int = 104;
      
      public static const const_2219:int = 105;
      
      public static const const_2124:int = 106;
      
      public static const const_2121:int = 107;
      
      public static const const_2214:int = 108;
      
      public static const const_2198:int = 109;
      
      public static const const_2170:int = 110;
      
      public static const const_2231:int = 111;
      
      public static const const_2043:int = 112;
      
      public static const const_2191:int = 113;
      
      public static const const_2037:int = 114;
      
      public static const const_2203:int = 115;
      
      public static const const_2200:int = 116;
      
      public static const const_2122:int = 117;
      
      public static const const_2141:int = 118;
      
      public static const const_2062:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1735:
            case const_1745:
               return "banned";
            case const_1708:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
