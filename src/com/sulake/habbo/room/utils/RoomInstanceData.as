package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_799:TileHeightMap = null;
      
      private var var_1206:LegacyWallGeometry = null;
      
      private var var_1205:RoomCamera = null;
      
      private var var_798:SelectedRoomObjectData = null;
      
      private var var_797:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_540:Map;
      
      private var var_541:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_540 = new Map();
         this.var_541 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1206 = new LegacyWallGeometry();
         this.var_1205 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_799;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_799 != null)
         {
            this.var_799.dispose();
         }
         this.var_799 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1206;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1205;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_798;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_798 != null)
         {
            this.var_798.dispose();
         }
         this.var_798 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_797;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_797 != null)
         {
            this.var_797.dispose();
         }
         this.var_797 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_799 != null)
         {
            this.var_799.dispose();
            this.var_799 = null;
         }
         if(this.var_1206 != null)
         {
            this.var_1206.dispose();
            this.var_1206 = null;
         }
         if(this.var_1205 != null)
         {
            this.var_1205.dispose();
            this.var_1205 = null;
         }
         if(this.var_798 != null)
         {
            this.var_798.dispose();
            this.var_798 = null;
         }
         if(this.var_797 != null)
         {
            this.var_797.dispose();
            this.var_797 = null;
         }
         if(this.var_540 != null)
         {
            this.var_540.dispose();
            this.var_540 = null;
         }
         if(this.var_541 != null)
         {
            this.var_541.dispose();
            this.var_541 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_540.remove(param1.id);
            this.var_540.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_540.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_540.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_540.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_541.remove(param1.id);
            this.var_541.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_541.length > 0)
         {
            return this.getWallItemDataWithId(this.var_541.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_541.remove(param1);
      }
   }
}
