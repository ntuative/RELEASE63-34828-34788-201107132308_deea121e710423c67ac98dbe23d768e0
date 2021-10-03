package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2377:int = 0;
      
      private var var_1508:String = "";
      
      private var var_1863:String = "";
      
      private var var_2476:String = "";
      
      private var var_2477:String = "";
      
      private var var_1825:int = 0;
      
      private var var_2480:int = 0;
      
      private var var_2479:int = 0;
      
      private var var_1507:int = 0;
      
      private var var_2478:int = 0;
      
      private var var_1509:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2377 = param1;
         this.var_1508 = param2;
         this.var_1863 = param3;
         this.var_2476 = param4;
         this.var_2477 = param5;
         if(param6)
         {
            this.var_1825 = 1;
         }
         else
         {
            this.var_1825 = 0;
         }
         this.var_2480 = param7;
         this.var_2479 = param8;
         this.var_1507 = param9;
         this.var_2478 = param10;
         this.var_1509 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2377,this.var_1508,this.var_1863,this.var_2476,this.var_2477,this.var_1825,this.var_2480,this.var_2479,this.var_1507,this.var_2478,this.var_1509];
      }
   }
}
