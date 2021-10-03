package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1147:String;
      
      protected var var_211:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_932:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_932 = param1;
         this.var_1147 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1147;
      }
      
      public function get content() : Object
      {
         return this.var_211;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_932;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_211.loaderInfo != null)
            {
               if(this.var_211.loaderInfo.loader != null)
               {
                  this.var_211.loaderInfo.loader.unload();
               }
            }
            this.var_211 = null;
            this.var_932 = null;
            this._disposed = true;
            this.var_1147 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_211 = param1 as DisplayObject;
            if(this.var_211 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_211 = DisplayAsset(param1).var_211;
            this.var_932 = DisplayAsset(param1).var_932;
            if(this.var_211 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_211 = DisplayAsset(param1).var_211;
            this.var_932 = DisplayAsset(param1).var_932;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
