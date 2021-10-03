package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1825:String = "pricing_model_unknown";
      
      public static const const_420:String = "pricing_model_single";
      
      public static const const_409:String = "pricing_model_multi";
      
      public static const const_659:String = "pricing_model_bundle";
      
      public static const const_1897:String = "price_type_none";
      
      public static const const_1032:String = "price_type_credits";
      
      public static const const_1384:String = "price_type_activitypoints";
      
      public static const const_1340:String = "price_type_credits_and_activitypoints";
       
      
      private var var_876:String;
      
      private var var_1328:String;
      
      private var var_1179:int;
      
      private var var_2073:String;
      
      private var var_1327:int;
      
      private var var_1326:int;
      
      private var var_2072:int;
      
      private var var_257:ICatalogPage;
      
      private var var_708:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2207:int = 0;
      
      private var var_2828:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1179 = param1;
         this.var_2073 = param2;
         this.var_1327 = param3;
         this.var_1326 = param4;
         this.var_2072 = param5;
         this.var_257 = param8;
         this.var_2207 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2207;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_257;
      }
      
      public function get offerId() : int
      {
         return this.var_1179;
      }
      
      public function get localizationId() : String
      {
         return this.var_2073;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1327;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1326;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2072;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_708;
      }
      
      public function get pricingModel() : String
      {
         return this.var_876;
      }
      
      public function get priceType() : String
      {
         return this.var_1328;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2828;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2828 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1179 = 0;
         this.var_2073 = "";
         this.var_1327 = 0;
         this.var_1326 = 0;
         this.var_2072 = 0;
         this.var_257 = null;
         if(this.var_708 != null)
         {
            this.var_708.dispose();
            this.var_708 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_876)
         {
            case const_420:
               this.var_708 = new SingleProductContainer(this,param1);
               break;
            case const_409:
               this.var_708 = new MultiProductContainer(this,param1);
               break;
            case const_659:
               this.var_708 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_876);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_876 = const_420;
            }
            else
            {
               this.var_876 = const_409;
            }
         }
         else if(param1.length > 1)
         {
            this.var_876 = const_659;
         }
         else
         {
            this.var_876 = const_1825;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1327 > 0 && this.var_1326 > 0)
         {
            this.var_1328 = const_1340;
         }
         else if(this.var_1327 > 0)
         {
            this.var_1328 = const_1032;
         }
         else if(this.var_1326 > 0)
         {
            this.var_1328 = const_1384;
         }
         else
         {
            this.var_1328 = const_1897;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_257.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_708.products)
         {
            _loc4_ = this.var_257.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
