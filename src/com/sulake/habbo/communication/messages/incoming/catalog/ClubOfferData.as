package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1179:int;
      
      private var var_1788:String;
      
      private var var_2099:int;
      
      private var _upgrade:Boolean;
      
      private var var_2848:Boolean;
      
      private var var_2849:int;
      
      private var var_2846:int;
      
      private var var_2847:int;
      
      private var var_2845:int;
      
      private var var_2844:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1179 = param1.readInteger();
         this.var_1788 = param1.readString();
         this.var_2099 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2848 = param1.readBoolean();
         this.var_2849 = param1.readInteger();
         this.var_2846 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         this.var_2845 = param1.readInteger();
         this.var_2844 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1179;
      }
      
      public function get productCode() : String
      {
         return this.var_1788;
      }
      
      public function get price() : int
      {
         return this.var_2099;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2848;
      }
      
      public function get periods() : int
      {
         return this.var_2849;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2846;
      }
      
      public function get year() : int
      {
         return this.var_2847;
      }
      
      public function get month() : int
      {
         return this.var_2845;
      }
      
      public function get day() : int
      {
         return this.var_2844;
      }
   }
}
