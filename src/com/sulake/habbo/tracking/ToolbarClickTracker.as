package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1436:IHabboTracking;
      
      private var var_2181:Boolean = false;
      
      private var var_2786:int = 0;
      
      private var var_2028:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1436 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1436 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2181 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2786 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2181)
         {
            return;
         }
         ++this.var_2028;
         if(this.var_2028 <= this.var_2786)
         {
            this.var_1436.trackGoogle("toolbar",param1);
         }
      }
   }
}
