package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1008:BigInteger;
      
      private var var_2483:BigInteger;
      
      private var var_2167:BigInteger;
      
      private var var_2995:BigInteger;
      
      private var var_1688:BigInteger;
      
      private var var_2166:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1688 = param1;
         this.var_2166 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1688.toString() + ",generator: " + this.var_2166.toString() + ",secret: " + param1);
         this.var_1008 = new BigInteger();
         this.var_1008.fromRadix(param1,param2);
         this.var_2483 = this.var_2166.modPow(this.var_1008,this.var_1688);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2167 = new BigInteger();
         this.var_2167.fromRadix(param1,param2);
         this.var_2995 = this.var_2167.modPow(this.var_1008,this.var_1688);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2483.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2995.toRadix(param1);
      }
   }
}
