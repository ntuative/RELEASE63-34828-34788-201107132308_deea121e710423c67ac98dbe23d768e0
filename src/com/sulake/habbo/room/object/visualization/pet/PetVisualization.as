package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_1118:int = 2;
      
      private static const const_1607:Array = [0,0,0];
       
      
      private var var_701:PetVisualizationData = null;
      
      private var var_569:Map;
      
      private var var_1296:int = 0;
      
      private var var_612:int = 0;
      
      private var var_953:Boolean;
      
      private var _figure:String;
      
      private var var_1297:int = 0;
      
      private var _updateTimes:Array;
      
      private var var_703:BitmapDataAsset;
      
      private var var_414:ExperienceData;
      
      private var var_1154:Boolean = false;
      
      private var var_2008:Boolean = false;
      
      private const const_2368:int = 3;
      
      private var var_1852:int = -1;
      
      private const const_1119:int = 0;
      
      private const const_2092:int = 1;
      
      private const const_2094:int = 2;
      
      private const const_1606:int = 3;
      
      private var var_66:IAvatarImage = null;
      
      private var var_298:String = "";
      
      private var var_1608:String = "";
      
      private var var_2034:Boolean = false;
      
      private var var_1609:Boolean = false;
      
      private var var_2030:Boolean = false;
      
      private var var_1309:Boolean = false;
      
      private var var_2010:Boolean = false;
      
      private var var_1591:String = "";
      
      private var var_1592:int = 0;
      
      private var var_2659:int = 0;
      
      private var var_2009:Number = NaN;
      
      private var var_2036:int = -1;
      
      private var var_2032:int = -1;
      
      public function PetVisualization()
      {
         super();
         this._updateTimes = new Array();
         this.var_569 = new Map();
         this.var_953 = false;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1154;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(this.var_569 != null)
         {
            _loc1_ = this.var_569.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = this.var_569.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         this.var_569.dispose();
         if(this.var_414)
         {
            this.var_414.dispose();
         }
         this.var_414 = null;
         this.var_701 = null;
         this.var_1154 = true;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_701 = param1 as PetVisualizationData;
         createSprites(this.const_1606);
         var _loc2_:BitmapData = (this.var_701.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset).content as BitmapData;
         this.var_414 = new ExperienceData(_loc2_.clone());
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_146)
         {
            this.var_2034 = param1.getNumber(RoomObjectVariableEnum.const_308) > 0;
            this.var_1591 = param1.getString(RoomObjectVariableEnum.const_176);
            this.var_298 = param1.getString(RoomObjectVariableEnum.const_245);
            this.var_1608 = param1.getString(RoomObjectVariableEnum.const_971);
            this.var_2009 = param1.getNumber(RoomObjectVariableEnum.const_204);
            this.var_1592 = param1.getNumber(RoomObjectVariableEnum.AVATAR_EXPERIENCE_TIMESTAMP);
            this.var_2659 = param1.getNumber(RoomObjectVariableEnum.const_404);
            this.validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_221);
            if(this._figure != _loc3_)
            {
               this._figure = _loc3_;
               this.resetAvatarImages();
            }
            var_146 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_569)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_569.reset();
         this.var_66 = null;
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         this.var_2010 = false;
         switch(this.var_298)
         {
            case AvatarAction.const_599:
            case AvatarAction.const_1231:
            case AvatarAction.const_1310:
            case AvatarAction.const_1392:
            case AvatarAction.const_1383:
            case AvatarAction.const_1245:
            case AvatarAction.const_907:
            case AvatarAction.const_361:
            case AvatarAction.const_276:
               this.var_2010 = true;
         }
         this.var_2030 = false;
         this.var_1309 = false;
         if(this.var_298 == "lay")
         {
            this.var_1309 = true;
            _loc1_ = int(this.var_1608);
            if(_loc1_ < 0)
            {
               this.var_2030 = true;
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_508 != param1.getUpdateID() || this.var_1852 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = this.var_2009;
            if(isNaN(this.var_2009))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != this.var_2036 || param3)
            {
               this.var_2036 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               this.var_66.setDirectionAngle(AvatarSetType.const_41,_loc4_);
            }
            if(_loc5_ != this.var_2032 || param3)
            {
               this.var_2032 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               this.var_66.setDirectionAngle(AvatarSetType.const_55,_loc5_);
            }
            var_508 = param1.getUpdateID();
            this.var_1852 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_569.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_701.getAvatar(this._figure,param1,this);
            if(_loc3_ != null)
            {
               this.var_569.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2092);
         this.var_703 = null;
         _loc2_ = getSprite(this.const_2092);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            this.var_703 = this.var_66.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            this.var_703 = this.var_66.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(this.var_703)
         {
            _loc2_.asset = this.var_703.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 0.005;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_701 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         if(this.var_2008)
         {
            this.var_2008 = false;
            this.var_1296 = 0;
            this.var_1297 = 1;
            this.resetAvatarImages();
         }
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = this.updateModel(_loc6_,_loc7_);
         if(_loc10_ || _loc7_ != var_103 || this.var_66 == null)
         {
            if(_loc7_ != var_103)
            {
               var_103 = _loc7_;
               _loc8_ = true;
            }
            if(_loc8_ || this.var_66 == null)
            {
               this.var_66 = this.getAvatarImage(_loc7_);
            }
            if(this.var_66 == null)
            {
               return;
            }
            if(_loc8_)
            {
               this.updateShadow(_loc7_);
            }
            _loc9_ = this.updateObject(_loc5_,param1,true);
            this.updateActions(this.var_66);
         }
         else
         {
            _loc9_ = this.updateObject(_loc5_,param1);
         }
         var _loc11_:Boolean = _loc9_ || _loc10_ || _loc8_;
         var _loc12_:Boolean = this.var_953 || this.var_1297 > 0 || this.var_2010;
         this.var_414.alpha = 0;
         if(this.var_1592 > 0)
         {
            _loc13_ = param2 - this.var_1592;
            if(_loc13_ < AvatarAction.const_1139)
            {
               this.var_414.alpha = int(Math.sin(_loc13_ / 0 * 0) * 255);
               this.var_414.setExperience(this.var_2659);
               this.var_1297 = this.const_2368;
            }
            else
            {
               this.var_1592 = 0;
            }
            _loc14_ = getSprite(this.const_2094);
            if(_loc14_ != null)
            {
               if(this.var_414.alpha > 0)
               {
                  _loc14_.asset = this.var_414.image;
                  _loc14_.offsetX = -20;
                  _loc14_.offsetY = -80;
                  _loc14_.alpha = this.var_414.alpha;
                  _loc14_.visible = true;
               }
               else
               {
                  _loc14_.asset = null;
                  _loc14_.visible = false;
               }
            }
         }
         if(_loc11_ || _loc12_)
         {
            increaseUpdateId();
            --this.var_1297;
            ++this.var_612;
            --this.var_1296;
            if(!(this.var_1296 <= 0 || _loc8_))
            {
               return;
            }
            this.var_66.updateAnimationByFrames(1);
            this.var_1296 = const_1118;
            this.var_953 = this.var_66.isAnimating();
            _loc15_ = this.var_66.getCanvasOffsets();
            if(_loc15_ == null || _loc15_.length < 3)
            {
               _loc15_ = const_1607;
            }
            _loc16_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc16_ = Math.min(_loc7_ / 2.75,0);
            }
            _loc14_ = getSprite(this.const_1119);
            if(_loc14_)
            {
               _loc19_ = this.var_66.getImage(AvatarSetType.const_41,false);
               if(_loc19_ != null)
               {
                  _loc14_.asset = _loc19_;
               }
               if(_loc7_ < 48)
               {
                  _loc14_.offsetX = -16 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + 8 + _loc15_[1] + _loc16_;
               }
               else
               {
                  _loc14_.offsetX = -32 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + 16 + _loc15_[1] + _loc16_;
               }
            }
            _loc17_ = this.const_1606;
            for each(_loc18_ in this.var_66.getSprites())
            {
               _loc14_ = getSprite(_loc17_);
               if(_loc14_ != null)
               {
                  _loc20_ = this.var_66.getLayerData(_loc18_);
                  _loc21_ = 0;
                  _loc22_ = _loc18_.getDirectionOffsetX(this.var_66.getDirection());
                  _loc23_ = _loc18_.getDirectionOffsetY(this.var_66.getDirection());
                  _loc24_ = _loc18_.getDirectionOffsetZ(this.var_66.getDirection());
                  _loc25_ = 0;
                  if(_loc18_.hasDirections)
                  {
                     _loc25_ = this.var_66.getDirection();
                  }
                  if(_loc20_ != null)
                  {
                     _loc21_ = _loc20_.animationFrame;
                     _loc22_ += _loc20_.dx;
                     _loc23_ += _loc20_.dy;
                     _loc25_ += _loc20_.directionOffset;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  if(_loc25_ < 0)
                  {
                     _loc25_ += 8;
                  }
                  if(_loc25_ > 7)
                  {
                     _loc25_ -= 8;
                  }
                  _loc26_ = this.var_66.getScale() + "_" + _loc18_.member + "_" + _loc25_ + "_" + _loc21_;
                  _loc27_ = this.var_66.getAsset(_loc26_);
                  if(_loc27_ != null)
                  {
                     _loc14_.asset = _loc27_.content as BitmapData;
                     _loc14_.offsetX = -1 * _loc27_.offset.x - _loc7_ / 2 + _loc22_;
                     _loc14_.offsetY = -1 * _loc27_.offset.y + _loc23_;
                     _loc14_.relativeDepth = -0.01 - 0.1 * _loc17_ * _loc24_;
                     if(_loc18_.ink == 33)
                     {
                        _loc14_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc14_.blendMode = BlendMode.NORMAL;
                     }
                     _loc17_++;
                  }
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_425,this.var_298,this.var_1608);
         if(this.var_1591 != null && this.var_1591 != "")
         {
            param1.appendAction(AvatarAction.const_380,this.var_1591);
         }
         if(this.var_2034 || this.var_1609)
         {
            param1.appendAction(AvatarAction.const_598);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + this.const_1606;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function imageReady() : void
      {
         this.var_2008 = true;
      }
      
      public function petImageReady(param1:String) : void
      {
         this.resetAvatarImages();
      }
   }
}
