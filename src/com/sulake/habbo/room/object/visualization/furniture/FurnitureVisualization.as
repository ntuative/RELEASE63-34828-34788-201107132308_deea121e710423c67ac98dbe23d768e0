package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.data.ColorData;
   import com.sulake.habbo.room.object.visualization.data.LayerData;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class FurnitureVisualization extends RoomObjectSpriteVisualization
   {
      
      protected static const const_2052:Number = Math.sqrt(0.5);
       
      
      private var _direction:int;
      
      private var var_2780:Number = NaN;
      
      private var var_2775:int = -1;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var var_1299:String = null;
      
      private var var_2772:Boolean = false;
      
      private var _data:FurnitureVisualizationData = null;
      
      private var _type:String = "";
      
      private var var_1066:Array;
      
      private var var_1065:Array;
      
      private var var_2776:Number = 0.0;
      
      private var var_2777:int = -1;
      
      private var var_2778:int = -1;
      
      private var var_855:Array;
      
      private var var_853:Array;
      
      private var var_859:Array;
      
      private var var_858:Array;
      
      private var var_854:Array;
      
      private var var_856:Array;
      
      private var var_852:Array;
      
      private var var_857:Array;
      
      private var var_2020:Boolean = true;
      
      private var var_667:int = 0;
      
      private var var_1599:int = -1;
      
      private var var_1598:int = 0;
      
      private var var_2779:Number = 0.0;
      
      public function FurnitureVisualization()
      {
         this.var_1066 = [];
         this.var_1065 = [];
         this.var_855 = [];
         this.var_853 = [];
         this.var_859 = [];
         this.var_858 = [];
         this.var_854 = [];
         this.var_856 = [];
         this.var_852 = [];
         this.var_857 = [];
         super();
         this.reset();
      }
      
      protected function set direction(param1:int) : void
      {
         this._direction = param1;
      }
      
      protected function get direction() : int
      {
         return this._direction;
      }
      
      protected function get type() : String
      {
         return this._type;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._data = null;
         this.var_1066 = null;
         this.var_1065 = null;
         this.var_855 = null;
         this.var_853 = null;
         this.var_859 = null;
         this.var_858 = null;
         this.var_854 = null;
         this.var_856 = null;
         this.var_852 = null;
         this.var_857 = null;
      }
      
      override protected function reset() : void
      {
         super.reset();
         this.direction = -1;
         this._data = null;
         this.var_1066 = [];
         this.var_1065 = [];
         this.var_855 = [];
         this.var_853 = [];
         this.var_859 = [];
         this.var_858 = [];
         this.var_854 = [];
         this.var_856 = [];
         this.var_852 = [];
         this.var_857 = [];
         this.createSprites(0);
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.reset();
         if(param1 == null || !(param1 is FurnitureVisualizationData))
         {
            return false;
         }
         this._data = param1 as FurnitureVisualizationData;
         this._type = this._data.getType();
         return true;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc5_:Boolean = false;
         var _loc6_:Number = param1.scale;
         if(this.updateObject(_loc6_,param1.direction.x))
         {
            _loc5_ = true;
         }
         if(this.updateModel(_loc6_))
         {
            _loc5_ = true;
         }
         var _loc7_:* = 0;
         if(param4)
         {
            this.var_1598 |= this.updateAnimation(_loc6_);
         }
         else
         {
            _loc7_ = this.updateAnimation(_loc6_) | this.var_1598;
            this.var_1598 = 0;
         }
         if(_loc5_ || _loc7_ != 0)
         {
            this.updateSprites(_loc6_,_loc5_,_loc7_);
            var_103 = _loc6_;
            increaseUpdateId();
         }
      }
      
      protected function updateSprites(param1:int, param2:Boolean, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this.var_667 != spriteCount)
         {
            createSprites(this.var_667);
         }
         if(param2)
         {
            _loc4_ = spriteCount - 1;
            while(_loc4_ >= 0)
            {
               this.updateSprite(param1,_loc4_);
               _loc4_--;
            }
         }
         else
         {
            _loc5_ = 0;
            while(param3 > 0)
            {
               if(param3 & 1)
               {
                  this.updateSprite(param1,_loc5_);
               }
               _loc5_++;
               param3 >>= 1;
            }
         }
         this.var_2020 = false;
      }
      
      private function updateSprite(param1:int, param2:int) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:int = 0;
         var _loc3_:String = this.getSpriteAssetName(param1,param2);
         var _loc4_:IRoomObjectSprite = getSprite(param2);
         if(_loc4_ != null && _loc3_ != null)
         {
            _loc5_ = this.getAsset(_loc3_);
            if(_loc5_ != null && _loc5_.asset != null)
            {
               _loc4_.visible = true;
               _loc4_.asset = _loc5_.asset.content as BitmapData;
               _loc4_.flipH = _loc5_.flipH;
               _loc4_.flipV = _loc5_.flipV;
               _loc6_ = 0;
               if(param2 != this.var_1599)
               {
                  _loc4_.tag = this.getSpriteTag(param1,this._direction,param2);
                  _loc4_.alpha = this.getSpriteAlpha(param1,this._direction,param2);
                  _loc4_.color = this.getSpriteColor(param1,param2,this.var_2775);
                  _loc4_.offsetX = _loc5_.offsetX + this.getSpriteXOffset(param1,this._direction,param2);
                  _loc4_.offsetY = _loc5_.offsetY + this.getSpriteYOffset(param1,this._direction,param2);
                  _loc4_.capturesMouse = this.getSpriteMouseCapture(param1,this._direction,param2);
                  _loc4_.blendMode = this.getBlendMode(this.getSpriteInk(param1,this._direction,param2));
                  _loc6_ = Number(this.getSpriteZOffset(param1,this._direction,param2));
                  _loc6_ -= param2 * 0.001;
               }
               else
               {
                  _loc4_.offsetX = _loc5_.offsetX;
                  _loc4_.offsetY = _loc5_.offsetY + this.getSpriteYOffset(param1,this._direction,param2);
                  _loc7_ = 48;
                  _loc7_ *= this._alphaMultiplier;
                  _loc4_.alpha = _loc7_;
                  _loc4_.capturesMouse = false;
                  _loc6_ = 1;
               }
               _loc6_ *= const_2052;
               _loc4_.relativeDepth = _loc6_;
               _loc4_.assetName = _loc5_.assetName;
               _loc4_.clickHandling = this.var_2772;
            }
            else
            {
               this.resetSprite(_loc4_);
            }
         }
         else if(_loc4_ != null)
         {
            this.resetSprite(_loc4_);
         }
      }
      
      private function resetSprite(param1:IRoomObjectSprite) : void
      {
         param1.asset = null;
         param1.assetName = "";
         param1.tag = "";
         param1.flipH = false;
         param1.flipV = false;
         param1.offsetX = 0;
         param1.offsetY = 0;
         param1.relativeDepth = 0;
         param1.clickHandling = false;
      }
      
      protected function getBlendMode(param1:int) : String
      {
         var _loc2_:String = "null";
         switch(param1)
         {
            case LayerData.const_401:
               break;
            case LayerData.const_1385:
               _loc2_ = "null";
               break;
            case LayerData.INK_DARKEN:
               _loc2_ = "null";
               break;
            case LayerData.const_1346:
               _loc2_ = "null";
         }
         return _loc2_;
      }
      
      protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_508 != _loc3_.getUpdateID() || param1 != var_103 || param2 != this.var_2780)
         {
            _loc4_ = _loc3_.getDirection().x - (param2 + 135);
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            if(this._data != null)
            {
               _loc5_ = this._data.getDirectionValue(param1,_loc4_);
               this.direction = _loc5_;
            }
            var_508 = _loc3_.getUpdateID();
            this.var_2780 = param2;
            var_103 = param1;
            this.updateAssetAndSpriteCache(param1,this._direction);
            return true;
         }
         return false;
      }
      
      protected function updateModel(param1:Number) : Boolean
      {
         var _loc4_:* = NaN;
         var _loc2_:IRoomObject = object;
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel();
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_146 != _loc3_.getUpdateID())
         {
            this.var_2775 = _loc3_.getNumber(RoomObjectVariableEnum.const_288);
            _loc4_ = Number(_loc3_.getNumber(RoomObjectVariableEnum.const_377));
            if(isNaN(_loc4_))
            {
               _loc4_ = 1;
            }
            if(_loc4_ != this._alphaMultiplier)
            {
               this._alphaMultiplier = _loc4_;
               this.var_2020 = true;
            }
            this.var_1299 = this.getAdClickUrl(_loc3_);
            if(this.var_1299 == null || this.var_1299.indexOf("http") != 0)
            {
               this.var_1299 = null;
            }
            this.var_2772 = this.var_1299 != null;
            this.var_2779 = _loc3_.getNumber(RoomObjectVariableEnum.const_827);
            var_146 = _loc3_.getUpdateID();
            return true;
         }
         return false;
      }
      
      protected function getAdClickUrl(param1:IRoomObjectModel) : String
      {
         return param1.getString(RoomObjectVariableEnum.const_437);
      }
      
      protected function updateAnimation(param1:Number) : int
      {
         return 0;
      }
      
      private function updateAssetAndSpriteCache(param1:Number, param2:int) : void
      {
         if(this.var_2778 != param2 || this.var_2776 != param1)
         {
            this.var_1066 = [];
            this.var_1065 = [];
            this.var_855 = [];
            this.var_853 = [];
            this.var_859 = [];
            this.var_858 = [];
            this.var_854 = [];
            this.var_856 = [];
            this.var_852 = [];
            this.var_857 = [];
            this.var_2778 = param2;
            this.var_2776 = param1;
            this.var_2777 = this.getSize(param1);
            this.updateLayerCount(this._data.getLayerCount(param1) + this.getAdditionalSpriteCount());
         }
      }
      
      protected function updateLayerCount(param1:int) : void
      {
         this.var_667 = param1;
         this.var_1599 = this.var_667 - this.getAdditionalSpriteCount();
      }
      
      protected function getAdditionalSpriteCount() : int
      {
         return 1;
      }
      
      protected function getFrameNumber(param1:int, param2:int) : int
      {
         return 0;
      }
      
      protected function getAsset(param1:String) : IGraphicAsset
      {
         var _loc2_:* = null;
         if(assetCollection != null)
         {
            return assetCollection.getAsset(param1);
         }
         return null;
      }
      
      protected function getSpriteAssetName(param1:int, param2:int) : String
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         if(this._data == null || param2 >= FurnitureVisualizationData.const_560.length)
         {
            return "";
         }
         var _loc3_:String = this.var_1066[param2];
         var _loc4_:Boolean = this.var_1065[param2];
         if(_loc3_ == null || _loc3_.length == 0)
         {
            _loc5_ = this.var_2777;
            _loc3_ = this._type;
            _loc6_ = "";
            if(param2 != this.var_1599)
            {
               _loc6_ = FurnitureVisualizationData.const_560[param2];
            }
            else
            {
               _loc6_ = "sd";
            }
            if(_loc5_ == 1)
            {
               _loc3_ += "_icon_" + _loc6_;
               _loc4_ = false;
            }
            else
            {
               _loc3_ += "_" + _loc5_ + "_" + _loc6_ + "_" + this._direction + "_";
               _loc4_ = true;
            }
            this.var_1066[param2] = _loc3_;
            this.var_1065[param2] = _loc4_;
         }
         if(_loc4_)
         {
            _loc3_ += this.getFrameNumber(param1,param2);
         }
         return _loc3_;
      }
      
      protected function getSpriteTag(param1:int, param2:int, param3:int) : String
      {
         if(this.var_855[param3] != null)
         {
            return this.var_855[param3];
         }
         if(this._data == null)
         {
            return "";
         }
         var _loc4_:String = this._data.getTag(param1,param2,param3);
         this.var_855[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteAlpha(param1:int, param2:int, param3:int) : int
      {
         if(this.var_853[param3] != null && !this.var_2020)
         {
            return this.var_853[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_634;
         }
         var _loc4_:int = this._data.getAlpha(param1,param2,param3);
         _loc4_ *= this._alphaMultiplier;
         this.var_853[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteColor(param1:int, param2:int, param3:int) : int
      {
         if(this.var_859[param2] != null)
         {
            return this.var_859[param2];
         }
         if(this._data == null)
         {
            return ColorData.const_71;
         }
         var _loc4_:int = this._data.getColor(param1,param2,param3);
         this.var_859[param2] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_858[param3] != null)
         {
            return this.var_858[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_644;
         }
         var _loc4_:int = this._data.getXOffset(param1,param2,param3);
         this.var_858[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = 0;
         if(param3 != this.var_1599)
         {
            if(this.var_854[param3] != null)
            {
               return this.var_854[param3];
            }
            if(this._data != null)
            {
               _loc4_ = this._data.getYOffset(param1,param2,param3);
               this.var_854[param3] = _loc4_;
               return _loc4_;
            }
            return LayerData.const_571;
         }
         return Math.ceil(this.var_2779 * (param1 / 2));
      }
      
      protected function getSpriteMouseCapture(param1:int, param2:int, param3:int) : Boolean
      {
         if(this.var_852[param3] != null)
         {
            return this.var_852[param3];
         }
         if(this._data == null)
         {
            return true;
         }
         var _loc4_:* = !this._data.getIgnoreMouse(param1,param2,param3);
         this.var_852[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteInk(param1:int, param2:int, param3:int) : int
      {
         if(this.var_857[param3] != null)
         {
            return this.var_857[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_401;
         }
         var _loc4_:int = this._data.getInk(param1,param2,param3);
         this.var_857[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteZOffset(param1:int, param2:int, param3:int) : Number
      {
         if(this.var_856[param3] != null)
         {
            return this.var_856[param3];
         }
         if(this._data == null)
         {
            return LayerData.const_438;
         }
         var _loc4_:Number = this._data.getZOffset(param1,param2,param3);
         this.var_856[param3] = _loc4_;
         return _loc4_;
      }
      
      protected function getSize(param1:int) : int
      {
         if(this._data != null)
         {
            return this._data.getSize(param1);
         }
         return param1;
      }
   }
}
