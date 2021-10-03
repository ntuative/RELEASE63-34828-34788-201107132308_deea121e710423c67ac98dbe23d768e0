package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1799:int;
      
      private var var_982:int = 1;
      
      private var var_1485:int;
      
      private var var_566:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1800:Boolean = false;
      
      private var var_754:BitmapData;
      
      private var var_2423:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1799;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_982;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_566;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1800;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_754;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_754;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_566)
         {
            _loc1_ = this.var_1485 - (new Date().valueOf() - this.var_2423.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1485;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1799 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1485 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1800 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_754 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_982 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_566)
         {
            this.var_2423 = new Date();
         }
         this.var_566 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_982;
         if(this.var_982 < 0)
         {
            this.var_982 = 0;
         }
         this.var_1485 = this.var_1799;
         this.var_566 = false;
         this.var_1800 = false;
      }
   }
}
