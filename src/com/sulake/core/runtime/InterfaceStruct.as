package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1455:IID;
      
      private var var_1762:String;
      
      private var var_124:IUnknown;
      
      private var var_770:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1455 = param1;
         this.var_1762 = getQualifiedClassName(this.var_1455);
         this.var_124 = param2;
         this.var_770 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1455;
      }
      
      public function get iis() : String
      {
         return this.var_1762;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_124;
      }
      
      public function get references() : uint
      {
         return this.var_770;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_124 == null;
      }
      
      public function dispose() : void
      {
         this.var_1455 = null;
         this.var_1762 = null;
         this.var_124 = null;
         this.var_770 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_770;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_770) : uint(0);
      }
   }
}
