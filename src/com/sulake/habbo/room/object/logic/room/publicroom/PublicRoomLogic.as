package com.sulake.habbo.room.object.logic.room.publicroom
{
   import com.sulake.habbo.room.RoomVariableEnum;
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.messages.RoomObjectRoomAdUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.room.RoomLogic;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class PublicRoomLogic extends RoomLogic
   {
       
      
      private var var_792:Boolean = false;
      
      private var var_1528:int = 0;
      
      public function PublicRoomLogic()
      {
         super();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectRoomAdEvent.const_226,RoomObjectRoomAdEvent.const_345,RoomObjectRoomAdEvent.const_346];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function initialize(param1:XML) : void
      {
         super.initialize(param1);
         if(param1 == null || object == null)
         {
            return;
         }
         var _loc2_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.setString(RoomObjectVariableEnum.const_418,"");
         _loc2_.setString(RoomObjectVariableEnum.const_927,"");
         _loc2_.setNumber(RoomObjectVariableEnum.const_608,Number(false));
         this.var_792 = true;
      }
      
      override public function update(param1:int) : void
      {
         super.update(param1);
         if(this.var_1528 > 0 && param1 > this.var_1528)
         {
            this.adDelayTimeout();
            this.var_1528 = 0;
         }
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         if(param1 == null || object == null)
         {
            return;
         }
         var _loc2_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:RoomObjectRoomAdUpdateMessage = param1 as RoomObjectRoomAdUpdateMessage;
         if(_loc3_ != null)
         {
            switch(_loc3_.type)
            {
               case RoomObjectRoomAdUpdateMessage.const_1257:
                  _loc2_.setString(RoomObjectVariableEnum.const_418,_loc3_.asset);
                  _loc2_.setString(RoomObjectVariableEnum.const_927,_loc3_.clickUrl);
                  _loc2_.setNumber(RoomObjectVariableEnum.const_608,Number(true));
                  this.var_1528 = getTimer() + _loc2_.getNumber(RoomVariableEnum.const_1225);
            }
         }
      }
      
      public function adDelayTimeout() : void
      {
         if(object == null)
         {
            return;
         }
         var _loc1_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.setNumber(RoomObjectVariableEnum.const_608,Number(false));
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc7_:* = null;
         super.mouseEvent(param1,param2);
         var _loc3_:RoomSpriteMouseEvent = param1;
         if(_loc3_ == null)
         {
            return;
         }
         if(object == null || param1 == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:int = object.getId();
         var _loc6_:String = object.getType();
         switch(_loc3_.type)
         {
            case MouseEvent.CLICK:
               if(_loc3_.spriteTag == RoomObjectVariableEnum.const_627)
               {
                  _loc7_ = _loc4_.getString(RoomObjectVariableEnum.const_927);
                  if(_loc7_ != null && _loc7_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_226,_loc5_,_loc6_,_loc7_));
                     HabboWebTools.openWebPage(_loc7_);
                  }
               }
               break;
            case MouseEvent.ROLL_OVER:
               if(_loc3_.spriteTag == RoomObjectVariableEnum.const_627)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_345,_loc5_,_loc6_));
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(_loc3_.spriteTag == RoomObjectVariableEnum.const_627)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_346,_loc5_,_loc6_));
               }
         }
      }
   }
}
