package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2343:int;
      
      private var var_1648:String;
      
      private var var_2877:int;
      
      private var var_2871:int;
      
      private var _category:int;
      
      private var var_2254:String;
      
      private var var_1647:int;
      
      private var var_2872:int;
      
      private var var_2873:int;
      
      private var var_2875:int;
      
      private var var_2874:int;
      
      private var var_2876:Boolean;
      
      private var var_3124:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2343 = param1;
         this.var_1648 = param2;
         this.var_2877 = param3;
         this.var_2871 = param4;
         this._category = param5;
         this.var_2254 = param6;
         this.var_1647 = param7;
         this.var_2872 = param8;
         this.var_2873 = param9;
         this.var_2875 = param10;
         this.var_2874 = param11;
         this.var_2876 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2343;
      }
      
      public function get itemType() : String
      {
         return this.var_1648;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2877;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2871;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2254;
      }
      
      public function get extra() : int
      {
         return this.var_1647;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2872;
      }
      
      public function get creationDay() : int
      {
         return this.var_2873;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2875;
      }
      
      public function get creationYear() : int
      {
         return this.var_2874;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2876;
      }
      
      public function get songID() : int
      {
         return this.var_1647;
      }
   }
}
