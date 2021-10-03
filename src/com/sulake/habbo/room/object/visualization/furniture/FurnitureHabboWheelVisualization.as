package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1120:int = 10;
      
      private static const const_707:int = 20;
      
      private static const const_1616:int = 31;
      
      private static const const_1615:int = 32;
       
      
      private var var_344:Array;
      
      private var var_840:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_344 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
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
         if(param1 > 0 && param1 <= const_1120)
         {
            if(this.var_840)
            {
               this.var_840 = false;
               this.var_344 = new Array();
               this.var_344.push(const_1120 + param1);
               this.var_344.push(const_707 + param1);
               this.var_344.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
