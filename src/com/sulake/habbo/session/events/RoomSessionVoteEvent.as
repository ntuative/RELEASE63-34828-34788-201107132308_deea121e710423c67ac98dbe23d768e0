package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_167:String = "RSPE_VOTE_QUESTION";
      
      public static const const_172:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1274:String = "";
      
      private var var_1450:Array;
      
      private var var_1381:Array;
      
      private var var_2196:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1450 = [];
         this.var_1381 = [];
         super(param1,param2,param7,param8);
         this.var_1274 = param3;
         this.var_1450 = param4;
         this.var_1381 = param5;
         if(this.var_1381 == null)
         {
            this.var_1381 = [];
         }
         this.var_2196 = param6;
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
