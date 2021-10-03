package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_167:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_172:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1274:String;
      
      private var var_1450:Array;
      
      private var var_1381:Array;
      
      private var var_2196:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1274 = param2;
         this.var_1450 = param3;
         this.var_1381 = param4;
         if(this.var_1381 == null)
         {
            this.var_1381 = [];
         }
         this.var_2196 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1274;
      }
      
      public function get choices() : Array
      {
         return this.var_1450.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1381.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2196;
      }
   }
}
