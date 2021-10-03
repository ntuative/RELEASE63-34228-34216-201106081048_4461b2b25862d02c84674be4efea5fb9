package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_978:BigInteger;
      
      private var var_2848:BigInteger;
      
      private var var_2103:BigInteger;
      
      private var var_2896:BigInteger;
      
      private var var_1643:BigInteger;
      
      private var var_2104:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1643 = param1;
         this.var_2104 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1643.toString() + ",generator: " + this.var_2104.toString() + ",secret: " + param1);
         this.var_978 = new BigInteger();
         this.var_978.fromRadix(param1,param2);
         this.var_2848 = this.var_2104.modPow(this.var_978,this.var_1643);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2103 = new BigInteger();
         this.var_2103.fromRadix(param1,param2);
         this.var_2896 = this.var_2103.modPow(this.var_978,this.var_1643);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2848.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2896.toRadix(param1);
      }
   }
}
