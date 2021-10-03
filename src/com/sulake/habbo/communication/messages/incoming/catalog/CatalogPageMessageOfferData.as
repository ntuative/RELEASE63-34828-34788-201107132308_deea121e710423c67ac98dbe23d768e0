package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1179:int;
      
      private var var_2073:String;
      
      private var var_1327:int;
      
      private var var_1326:int;
      
      private var var_2072:int;
      
      private var var_2207:int;
      
      private var var_1186:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1179 = param1.readInteger();
         this.var_2073 = param1.readString();
         this.var_1327 = param1.readInteger();
         this.var_1326 = param1.readInteger();
         this.var_2072 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1186 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1186.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2207 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1186;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2072;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2207;
      }
   }
}
