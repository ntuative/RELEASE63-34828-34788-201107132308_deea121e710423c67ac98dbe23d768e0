package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2311:int;
      
      private var var_1648:String;
      
      private var _objId:int;
      
      private var var_1787:int;
      
      private var _category:int;
      
      private var var_2254:String;
      
      private var var_2696:Boolean;
      
      private var var_2698:Boolean;
      
      private var var_2695:Boolean;
      
      private var var_2699:Boolean;
      
      private var var_2697:int;
      
      private var var_1647:int;
      
      private var var_2199:String = "";
      
      private var var_1475:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2311 = param1;
         this.var_1648 = param2;
         this._objId = param3;
         this.var_1787 = param4;
         this._category = param5;
         this.var_2254 = param6;
         this.var_2696 = param7;
         this.var_2698 = param8;
         this.var_2695 = param9;
         this.var_2699 = param10;
         this.var_2697 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2199 = param1;
         this.var_1647 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2311;
      }
      
      public function get itemType() : String
      {
         return this.var_1648;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1787;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2254;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2696;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2698;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2695;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2699;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2697;
      }
      
      public function get slotId() : String
      {
         return this.var_2199;
      }
      
      public function get songId() : int
      {
         return this.var_1475;
      }
      
      public function get extra() : int
      {
         return this.var_1647;
      }
   }
}
