package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_650:String = "RWUAM_WHISPER_USER";
      
      public static const const_550:String = "RWUAM_IGNORE_USER";
      
      public static const const_609:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_434:String = "RWUAM_KICK_USER";
      
      public static const const_655:String = "RWUAM_BAN_USER";
      
      public static const const_557:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_613:String = "RWUAM_RESPECT_USER";
      
      public static const const_510:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_539:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_641:String = "RWUAM_START_TRADING";
      
      public static const const_809:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_520:String = "RWUAM_KICK_BOT";
      
      public static const const_582:String = "RWUAM_REPORT";
      
      public static const const_621:String = "RWUAM_PICKUP_PET";
      
      public static const const_1942:String = "RWUAM_TRAIN_PET";
      
      public static const const_614:String = " RWUAM_RESPECT_PET";
      
      public static const const_259:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_629:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
