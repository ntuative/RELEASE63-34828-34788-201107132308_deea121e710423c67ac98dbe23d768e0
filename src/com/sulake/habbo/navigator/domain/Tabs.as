package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_371:int = 1;
      
      public static const const_217:int = 2;
      
      public static const const_286:int = 3;
      
      public static const const_340:int = 4;
      
      public static const const_253:int = 5;
      
      public static const const_415:int = 1;
      
      public static const const_740:int = 2;
      
      public static const const_906:int = 3;
      
      public static const const_923:int = 4;
      
      public static const const_272:int = 5;
      
      public static const const_767:int = 6;
      
      public static const const_905:int = 7;
      
      public static const const_422:int = 8;
      
      public static const const_579:int = 9;
      
      public static const const_2303:int = 10;
      
      public static const const_875:int = 11;
      
      public static const const_665:int = 12;
       
      
      private var var_496:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_496 = new Array();
         this.var_496.push(new Tab(this._navigator,const_371,const_665,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_507));
         this.var_496.push(new Tab(this._navigator,const_217,const_415,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_507));
         this.var_496.push(new Tab(this._navigator,const_340,const_875,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1246));
         this.var_496.push(new Tab(this._navigator,const_286,const_272,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_507));
         this.var_496.push(new Tab(this._navigator,const_253,const_422,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1326));
         this.setSelectedTab(const_371);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_340;
      }
      
      public function get tabs() : Array
      {
         return this.var_496;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_496)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_496)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_496)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
