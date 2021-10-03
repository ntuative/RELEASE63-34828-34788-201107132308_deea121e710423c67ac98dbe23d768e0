package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1120:int = 20;
      
      private static const const_707:int = 10;
      
      private static const const_1616:int = 31;
      
      private static const const_1615:int = 32;
      
      private static const const_706:int = 30;
       
      
      private var var_344:Array;
      
      private var var_840:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_344 = new Array();
         super();
         super.setAnimation(const_706);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_840)
            {
               this.var_840 = true;
               this.var_344 = new Array();
               this.var_344.push(const_1616);
               this.var_344.push(const_1615);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_707)
         {
            if(this.var_840)
            {
               this.var_840 = false;
               this.var_344 = new Array();
               if(direction == 2)
               {
                  this.var_344.push(const_1120 + 5 - param1);
                  this.var_344.push(const_707 + 5 - param1);
               }
               else
               {
                  this.var_344.push(const_1120 + param1);
                  this.var_344.push(const_707 + param1);
               }
               this.var_344.push(const_706);
               return;
            }
            super.setAnimation(const_706);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_344.length > 0)
            {
               super.setAnimation(this.var_344.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
