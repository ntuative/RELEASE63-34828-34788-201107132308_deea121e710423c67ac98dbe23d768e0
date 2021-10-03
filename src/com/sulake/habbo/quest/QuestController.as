package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_519:QuestsList;
      
      private var var_438:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_369:QuestTracker;
      
      private var var_619:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
         this.var_369 = new QuestTracker(this.var_49);
         this.var_519 = new QuestsList(this.var_49);
         this.var_438 = new QuestDetails(this.var_49);
         this._questCompleted = new QuestCompleted(this.var_49);
         this.var_619 = new NextQuestTimer(this.var_49);
      }
      
      public function onToolbarClick() : void
      {
         this.var_519.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_519.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_369.onQuest(param1);
         this.var_438.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_619.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_369.onQuestCompleted(param1);
         this.var_438.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_369.onQuestCancelled();
         this.var_438.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_619.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_369.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_519.onRoomExit();
         this.var_369.onRoomExit();
         this.var_438.onRoomExit();
         this.var_619.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_369.update(param1);
         this.var_619.update(param1);
         this.var_519.update(param1);
         this.var_438.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         if(this.var_519)
         {
            this.var_519.dispose();
            this.var_519 = null;
         }
         if(this.var_369)
         {
            this.var_369.dispose();
            this.var_369 = null;
         }
         if(this.var_438)
         {
            this.var_438.dispose();
            this.var_438 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_619)
         {
            this.var_619.dispose();
            this.var_619 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_519;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_438;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_369;
      }
   }
}
