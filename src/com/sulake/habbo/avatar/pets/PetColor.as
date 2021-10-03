package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1848:uint;
      
      private var var_1847:uint;
      
      private var _b:uint;
      
      private var var_819:ColorTransform;
      
      private var var_2093:Number;
      
      private var var_2092:Number;
      
      private var var_2094:Number;
      
      private var var_2515:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1848 = this._rgb >> 16 & 255;
         this.var_1847 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_2093 = this.var_1848 / 255 * 1;
         this.var_2092 = this.var_1847 / 255 * 1;
         this.var_2094 = this._b / 255 * 1;
         this.var_819 = new ColorTransform(this.var_2093,this.var_2092,this.var_2094);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1848;
      }
      
      public function get g() : uint
      {
         return this.var_1847;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_819;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2515;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2515 = param1;
      }
   }
}
