package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_319:int = 0;
      
      private static const const_720:int = 1;
      
      private static const const_721:int = 2;
      
      private static const const_1152:int = 3;
      
      private static const const_1151:int = 4;
      
      private static const const_1149:int = 5;
      
      private static const const_1147:int = 6;
      
      private static const const_1150:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1154:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1153:int = 6;
      
      private static const const_1696:int = 4;
      
      private static const const_723:int = 2;
      
      private static const const_1148:int = 200;
      
      private static const const_318:Array = ["a","b","c","d"];
      
      private static const const_1146:int = 10000;
      
      private static const const_1694:int = 0;
      
      private static const const_722:int = -1;
      
      private static const const_1689:Point = new Point(10,87);
      
      private static const const_1692:int = 162;
      
      private static const const_1691:Number = 0.01;
      
      private static const const_1695:Number = 100;
      
      private static const const_1693:int = 1000;
      
      private static const const_724:String = "quest_tracker";
      
      private static const const_1690:int = 10;
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_231:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_584:Timer;
      
      private var var_898:ProgressBar;
      
      private var var_261:int = 0;
      
      private var var_1116:int = 0;
      
      private var var_1665:int = 0;
      
      private var var_1369:int = -1;
      
      private var var_899:int = -1;
      
      private var var_1115:int = -1;
      
      private var var_1370:int;
      
      private var var_1666:int;
      
      private var var_2953:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_49)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_724);
         }
         this.var_49 = null;
         this.var_231 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_584)
         {
            this.var_584.stop();
            this.var_584 = null;
         }
         if(this.var_898)
         {
            this.var_898.dispose();
            this.var_898 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_231 = param1;
            this.var_1116 = 0;
            this.refreshTrackerDetails();
            this.var_1369 = 0;
            this.var_261 = const_1152;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_231 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_898.refresh(0,100,-1);
            this.var_261 = const_721;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_49.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_584 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_49.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_584 = new Timer(_loc3_ * 1000,1);
            this.var_584.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_584.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_231 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_261 == const_721)
            {
               this.var_261 = const_720;
            }
            this.setupPrompt(this.var_899,const_1696,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_261 = const_720;
            this.setupPrompt(const_1694,const_723,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_49.isQuestWithPrompts(this.var_231))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.var_49.setupPromptFrameImage(this._window,this.var_231,const_318[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_49.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_49,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1153)
         {
            new PendingImage(this.var_49,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_898 = new ProgressBar(this.var_49,IWindowContainer(this._window.findChildByName("content_cont")),const_1692,"quests.tracker.progress",false,const_1689);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1153)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.getPromptFrame(const_318[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_49.localization.registerParameter("quests.tracker.caption","quest_name",this.var_49.getQuestName(this.var_231));
         this._window.findChildByName("desc_txt").caption = this.var_49.getQuestDesc(this.var_231);
         this._window.findChildByName("more_info_txt").visible = this.var_49.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_49.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_231.completedSteps / this.var_231.totalSteps);
         this.var_898.refresh(_loc1_,100,this.var_231.id);
         this.var_49.setupQuestImage(this._window,this.var_231);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.questController.questDetails.showDetails(this.var_231);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_898.updateView();
         switch(this.var_261)
         {
            case const_720:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1691));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_261 = const_319;
                  this._window.x = _loc2_;
               }
               break;
            case const_721:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1695 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_261 = const_319;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1152:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1154[this.var_1369]).visible = true;
               ++this.var_1369;
               if(this.var_1369 >= const_1154.length)
               {
                  this.var_261 = const_1149;
                  this.var_1665 = const_1693;
               }
               break;
            case const_1147:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1370 -= param1;
               this.getPromptFrame(const_318[this.var_1115]).visible = true;
               if(this.var_1370 < 0)
               {
                  this.var_1370 = const_1148;
                  ++this.var_1115;
                  if(this.var_1115 >= const_318.length)
                  {
                     this.var_1115 = 0;
                     --this.var_1666;
                     if(this.var_1666 < 1)
                     {
                        this.setupPrompt(const_1146,const_723,true);
                        this.var_261 = const_319;
                     }
                  }
               }
               break;
            case const_1151:
               if(this.var_1116 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_261 = const_319;
                  this.setupPrompt(const_1146,const_723,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1150[this.var_1116];
                  ++this.var_1116;
               }
               break;
            case const_1149:
               this.var_1665 -= param1;
               if(this.var_1665 < 0)
               {
                  this.var_261 = const_319;
                  this.setWindowVisible(false);
               }
               break;
            case const_319:
               if(this.var_899 != const_722)
               {
                  this.var_899 -= param1;
                  if(this.var_899 < 0)
                  {
                     this.var_899 = const_722;
                     if(this.var_231 != null && this.var_49.isQuestWithPrompts(this.var_231))
                     {
                        if(this.var_2953)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_261 = const_1147;
                           this.var_1115 = 0;
                           this.var_1370 = const_1148;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1690;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_584.reset();
            this.var_584.start();
         }
         else
         {
            this.var_49.questController.questDetails.openForNextQuest = this.var_49.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this.var_49.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_49.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_49.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_49.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_722,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_899 = param1;
         this.var_1666 = param2;
         this.var_2953 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1116 = 0;
         this.var_261 = const_1151;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_724);
         }
         else
         {
            this.var_49.toolbar.extensionView.attachExtension(const_724,this._window);
         }
      }
   }
}
