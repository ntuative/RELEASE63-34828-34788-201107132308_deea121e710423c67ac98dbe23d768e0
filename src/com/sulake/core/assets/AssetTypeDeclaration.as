package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2822:String;
      
      private var var_2823:Class;
      
      private var var_2821:Class;
      
      private var var_2059:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2822 = param1;
         this.var_2823 = param2;
         this.var_2821 = param3;
         if(rest == null)
         {
            this.var_2059 = new Array();
         }
         else
         {
            this.var_2059 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2822;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2823;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2821;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2059;
      }
   }
}
