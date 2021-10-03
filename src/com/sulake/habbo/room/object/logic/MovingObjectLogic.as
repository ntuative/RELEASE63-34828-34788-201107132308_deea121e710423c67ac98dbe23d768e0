package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_954:int = 500;
      
      private static var var_680:Vector3d = new Vector3d();
       
      
      private var var_464:Vector3d;
      
      private var var_106:Vector3d;
      
      private var var_1041:Number = 0.0;
      
      private var _lastUpdateTime:int = 0;
      
      private var var_2648:int;
      
      private var var_1040:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_464 = new Vector3d();
         this.var_106 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this._lastUpdateTime;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_106 = null;
         this.var_464 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_106.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1040 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_106.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2648 = this._lastUpdateTime;
               this.var_464.assign(_loc3_);
               this.var_464.sub(this.var_106);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_1041 != _loc2_.z)
               {
                  this.var_1041 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_827,this.var_1041);
               }
            }
            else if(this.var_1041 != 0)
            {
               this.var_1041 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_827,this.var_1041);
            }
         }
         if(this.var_464.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2648;
            if(_loc4_ == this.var_1040 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_1040)
            {
               _loc4_ = this.var_1040;
            }
            if(this.var_464.length > 0)
            {
               var_680.assign(this.var_464);
               var_680.mul(_loc4_ / Number(this.var_1040));
               var_680.add(this.var_106);
            }
            else
            {
               var_680.assign(this.var_106);
            }
            if(_loc2_ != null)
            {
               var_680.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_680);
            }
            if(_loc4_ == this.var_1040)
            {
               this.var_464.x = 0;
               this.var_464.y = 0;
               this.var_464.z = 0;
            }
         }
         this._lastUpdateTime = param1;
      }
   }
}
