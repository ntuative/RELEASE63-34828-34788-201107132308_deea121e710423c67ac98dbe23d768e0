package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_955:IAssetLoader;
      
      private var var_2347:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2347 = param1;
         this.var_955 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2347;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_955;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_955 != null)
            {
               if(!this.var_955.disposed)
               {
                  this.var_955.dispose();
                  this.var_955 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
