package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1962:int;
      
      private var _name:String;
      
      private var var_1174:int;
      
      private var var_2753:int;
      
      private var var_2659:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2752:int;
      
      private var var_2754:int;
      
      private var var_2755:int;
      
      private var var_2309:int;
      
      private var var_2328:int;
      
      private var _ownerName:String;
      
      private var var_565:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1962;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1174;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2753;
      }
      
      public function get experience() : int
      {
         return this.var_2659;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2752;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2754;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2755;
      }
      
      public function get respect() : int
      {
         return this.var_2309;
      }
      
      public function get ownerId() : int
      {
         return this.var_2328;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_565;
      }
      
      public function flush() : Boolean
      {
         this.var_1962 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1962 = param1.readInteger();
         this._name = param1.readString();
         this.var_1174 = param1.readInteger();
         this.var_2753 = param1.readInteger();
         this.var_2659 = param1.readInteger();
         this.var_2752 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2754 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2755 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2309 = param1.readInteger();
         this.var_2328 = param1.readInteger();
         this.var_565 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
