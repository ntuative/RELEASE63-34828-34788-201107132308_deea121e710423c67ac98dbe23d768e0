package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1179:int;
      
      private var var_1788:String;
      
      private var var_2099:int;
      
      private var _upgrade:Boolean;
      
      private var var_2848:Boolean;
      
      private var var_2849:int;
      
      private var var_2846:int;
      
      private var var_257:ICatalogPage;
      
      private var var_2847:int;
      
      private var var_2845:int;
      
      private var var_2844:int;
      
      private var var_1466:String;
      
      private var var_2889:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1179 = param1;
         this.var_1788 = param2;
         this.var_2099 = param3;
         this._upgrade = param4;
         this.var_2848 = param5;
         this.var_2849 = param6;
         this.var_2846 = param7;
         this.var_2847 = param8;
         this.var_2845 = param9;
         this.var_2844 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_257 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1466;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1466 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_2099;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_257;
      }
      
      public function get priceType() : String
      {
         return Offer.const_1032;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1788;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_257 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2889;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2889 = param1;
      }
   }
}
