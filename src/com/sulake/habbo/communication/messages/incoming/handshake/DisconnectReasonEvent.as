package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2197:int = 0;
      
      public static const const_1900:int = 1;
      
      public static const const_1999:int = 2;
      
      public static const const_2150:int = 3;
      
      public static const const_2330:int = 4;
      
      public static const const_2260:int = 5;
      
      public static const const_1996:int = 10;
      
      public static const const_2263:int = 11;
      
      public static const const_2262:int = 12;
      
      public static const const_2109:int = 13;
      
      public static const const_2110:int = 16;
      
      public static const const_2138:int = 17;
      
      public static const const_2326:int = 18;
      
      public static const const_2312:int = 19;
      
      public static const const_2182:int = 20;
      
      public static const const_2187:int = 22;
      
      public static const const_2126:int = 23;
      
      public static const const_2321:int = 24;
      
      public static const const_2316:int = 25;
      
      public static const const_2280:int = 26;
      
      public static const const_2142:int = 27;
      
      public static const const_2210:int = 28;
      
      public static const const_2282:int = 29;
      
      public static const const_2124:int = 100;
      
      public static const const_2116:int = 101;
      
      public static const const_2213:int = 102;
      
      public static const const_2322:int = 103;
      
      public static const const_2179:int = 104;
      
      public static const const_2151:int = 105;
      
      public static const const_2317:int = 106;
      
      public static const const_2115:int = 107;
      
      public static const const_2211:int = 108;
      
      public static const const_2171:int = 109;
      
      public static const const_2243:int = 110;
      
      public static const const_2146:int = 111;
      
      public static const const_2294:int = 112;
      
      public static const const_2302:int = 113;
      
      public static const const_2266:int = 114;
      
      public static const const_2134:int = 115;
      
      public static const const_2234:int = 116;
      
      public static const const_2276:int = 117;
      
      public static const const_2113:int = 118;
      
      public static const const_2190:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1900:
            case const_1996:
               return "banned";
            case const_1999:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
