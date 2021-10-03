package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1138:int;
      
      private var var_874:Boolean;
      
      private var var_1970:Boolean;
      
      private var _figure:String;
      
      private var var_1671:int;
      
      private var var_1760:String;
      
      private var var_1759:String;
      
      private var var_1761:String;
      
      private var var_2578:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1138 = param1.readInteger();
         this.var_874 = param1.readBoolean();
         this.var_1970 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1671 = param1.readInteger();
         this.var_1760 = param1.readString();
         this.var_1759 = param1.readString();
         this.var_1761 = param1.readString();
         this.var_2578 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1138;
      }
      
      public function get online() : Boolean
      {
         return this.var_874;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1970;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1671;
      }
      
      public function get motto() : String
      {
         return this.var_1760;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1759;
      }
      
      public function get realName() : String
      {
         return this.var_1761;
      }
      
      public function get facebookId() : String
      {
         return this.var_2578;
      }
   }
}
