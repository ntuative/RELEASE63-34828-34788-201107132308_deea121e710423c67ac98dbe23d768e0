package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1179:int;
      
      private var _furniId:int;
      
      private var var_2941:int;
      
      private var var_2254:String;
      
      private var var_2099:int;
      
      private var var_433:int;
      
      private var var_2943:int = -1;
      
      private var var_2790:int;
      
      private var var_2134:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1179 = param1;
         this._furniId = param2;
         this.var_2941 = param3;
         this.var_2254 = param4;
         this.var_2099 = param5;
         this.var_433 = param6;
         this.var_2943 = param7;
         this.var_2790 = param8;
         this.var_2134 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1179;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2941;
      }
      
      public function get stuffData() : String
      {
         return this.var_2254;
      }
      
      public function get price() : int
      {
         return this.var_2099;
      }
      
      public function get status() : int
      {
         return this.var_433;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2943;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2790;
      }
      
      public function get offerCount() : int
      {
         return this.var_2134;
      }
   }
}
