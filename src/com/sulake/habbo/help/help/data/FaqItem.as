package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_2198:int;
      
      private var var_2797:String;
      
      private var var_2197:String;
      
      private var _index:int;
      
      private var _category:FaqCategory;
      
      private var var_2796:Boolean = false;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         this.var_2198 = param1;
         this.var_2797 = param2;
         this._index = param3;
         this._category = param4;
      }
      
      public function get questionId() : int
      {
         return this.var_2198;
      }
      
      public function get questionText() : String
      {
         return this.var_2797;
      }
      
      public function get answerText() : String
      {
         return this.var_2197;
      }
      
      public function get hasAnswer() : Boolean
      {
         return this.var_2796;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get category() : FaqCategory
      {
         return this._category;
      }
      
      public function set answerText(param1:String) : void
      {
         this.var_2197 = param1;
         this.var_2796 = true;
      }
   }
}
