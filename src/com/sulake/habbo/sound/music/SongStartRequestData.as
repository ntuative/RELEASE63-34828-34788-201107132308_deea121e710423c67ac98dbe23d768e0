package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1475:int;
      
      private var var_1726:Number;
      
      private var var_2288:Number;
      
      private var var_2290:int;
      
      private var var_2291:Number;
      
      private var var_2289:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1475 = param1;
         this.var_1726 = param2;
         this.var_2288 = param3;
         this.var_2291 = param4;
         this.var_2289 = param5;
         this.var_2290 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1475;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1726 < 0)
         {
            return 0;
         }
         return this.var_1726 + (getTimer() - this.var_2290) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2288;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2291;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2289;
      }
   }
}
