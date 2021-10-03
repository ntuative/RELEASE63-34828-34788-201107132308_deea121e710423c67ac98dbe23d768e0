package com.sulake.habbo.room.events
{
   public class RoomEngineSoundMachineEvent extends RoomEngineObjectEvent
   {
      
      public static const const_1017:String = "ROSM_SOUND_MACHINE_INIT";
      
      public static const const_842:String = "ROSM_SOUND_MACHINE_SWITCHED_ON";
      
      public static const const_848:String = "ROSM_SOUND_MACHINE_SWITCHED_OFF";
      
      public static const const_1010:String = "ROSM_SOUND_MACHINE_DISPOSE";
      
      public static const const_919:String = "ROSM_JUKEBOX_INIT";
      
      public static const const_1905:String = "ROSM_JUKEBOX_SWITCHED_ON";
      
      public static const const_1815:String = "ROSM_JUKEBOX_SWITCHED_OFF";
      
      public static const const_311:String = "ROSM_JUKEBOX_DISPOSE";
       
      
      public function RoomEngineSoundMachineEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
