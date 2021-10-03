package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_531:WallRasterizer;
      
      private var var_530:FloorRasterizer;
      
      private var var_781:WallAdRasterizer;
      
      private var var_529:LandscapeRasterizer;
      
      private var var_782:PlaneMaskManager;
      
      private var var_792:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_531 = new WallRasterizer();
         this.var_530 = new FloorRasterizer();
         this.var_781 = new WallAdRasterizer();
         this.var_529 = new LandscapeRasterizer();
         this.var_782 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_792;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_530;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_531;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_781;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_529;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_782;
      }
      
      public function dispose() : void
      {
         if(this.var_531 != null)
         {
            this.var_531.dispose();
            this.var_531 = null;
         }
         if(this.var_530 != null)
         {
            this.var_530.dispose();
            this.var_530 = null;
         }
         if(this.var_781 != null)
         {
            this.var_781.dispose();
            this.var_781 = null;
         }
         if(this.var_529 != null)
         {
            this.var_529.dispose();
            this.var_529 = null;
         }
         if(this.var_782 != null)
         {
            this.var_782.dispose();
            this.var_782 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_531 != null)
         {
            this.var_531.clearCache();
         }
         if(this.var_530 != null)
         {
            this.var_530.clearCache();
         }
         if(this.var_529 != null)
         {
            this.var_529.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_531.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_530.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_781.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_529.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_782.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_792)
         {
            return;
         }
         this.var_531.initializeAssetCollection(param1);
         this.var_530.initializeAssetCollection(param1);
         this.var_781.initializeAssetCollection(param1);
         this.var_529.initializeAssetCollection(param1);
         this.var_782.initializeAssetCollection(param1);
         this.var_792 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
