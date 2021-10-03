package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1962:int;
      
      private var var_1174:int;
      
      private var var_2660:int;
      
      private var var_2659:int;
      
      private var var_2661:int;
      
      private var _energy:int;
      
      private var var_2658:int;
      
      private var _nutrition:int;
      
      private var var_2662:int;
      
      private var var_2328:int;
      
      private var _ownerName:String;
      
      private var var_2309:int;
      
      private var var_565:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1962;
      }
      
      public function get level() : int
      {
         return this.var_1174;
      }
      
      public function get levelMax() : int
      {
         return this.var_2660;
      }
      
      public function get experience() : int
      {
         return this.var_2659;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2661;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2658;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2662;
      }
      
      public function get ownerId() : int
      {
         return this.var_2328;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2309;
      }
      
      public function get age() : int
      {
         return this.var_565;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1962 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1174 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2660 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2659 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2658 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2662 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_565 = param1;
      }
   }
}
