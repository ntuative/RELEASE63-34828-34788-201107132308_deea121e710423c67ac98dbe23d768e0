package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2224:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1212:int = 3;
       
      
      private var var_984:String;
      
      private var var_2589:int;
      
      private var var_2585:int;
      
      private var var_2588:int;
      
      private var var_2587:int;
      
      private var var_2590:Boolean;
      
      private var var_2463:Boolean;
      
      private var var_2462:int;
      
      private var var_2461:int;
      
      private var var_2592:Boolean;
      
      private var var_2591:int;
      
      private var var_2586:int;
      
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
         this.var_984 = param1.readString();
         this.var_2589 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_2588 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_2590 = param1.readBoolean();
         this.var_2463 = param1.readBoolean();
         this.var_2462 = param1.readInteger();
         this.var_2461 = param1.readInteger();
         this.var_2592 = param1.readBoolean();
         this.var_2591 = param1.readInteger();
         this.var_2586 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_984;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2589;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2585;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2588;
      }
      
      public function get responseType() : int
      {
         return this.var_2587;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2590;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2463;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2462;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2461;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2592;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2591;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2586;
      }
   }
}
