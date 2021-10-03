package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_70:String = "s";
      
      public static const const_187:String = "e";
       
      
      private var var_1621:String;
      
      private var var_2417:int;
      
      private var var_1077:String;
      
      private var var_1622:int;
      
      private var var_2061:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1621 = param1.readString();
         this.var_2417 = param1.readInteger();
         this.var_1077 = param1.readString();
         this.var_1622 = param1.readInteger();
         this.var_2061 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1621;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2417;
      }
      
      public function get extraParam() : String
      {
         return this.var_1077;
      }
      
      public function get productCount() : int
      {
         return this.var_1622;
      }
      
      public function get expiration() : int
      {
         return this.var_2061;
      }
   }
}
