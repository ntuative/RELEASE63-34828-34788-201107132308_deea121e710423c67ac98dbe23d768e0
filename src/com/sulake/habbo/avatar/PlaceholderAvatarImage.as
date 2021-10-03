package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_895:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1154)
         {
            _structure = null;
            _assets = null;
            var_288 = null;
            var_315 = null;
            _figure = null;
            var_608 = null;
            var_363 = null;
            if(!var_1426 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_897 = null;
            var_1154 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_895[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_895[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_425:
               switch(_loc3_)
               {
                  case AvatarAction.const_938:
                  case AvatarAction.const_599:
                  case AvatarAction.const_399:
                  case AvatarAction.const_756:
                  case AvatarAction.const_449:
                  case AvatarAction.const_890:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_337:
            case AvatarAction.const_159:
            case AvatarAction.const_276:
            case AvatarAction.const_952:
            case AvatarAction.const_1026:
            case AvatarAction.const_770:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
