package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1699:String = "pricing_model_unknown";
      
      public static const const_401:String = "pricing_model_single";
      
      public static const const_402:String = "pricing_model_multi";
      
      public static const const_621:String = "pricing_model_bundle";
      
      public static const const_1780:String = "price_type_none";
      
      public static const const_964:String = "price_type_credits";
      
      public static const const_1158:String = "price_type_activitypoints";
      
      public static const const_1365:String = "price_type_credits_and_activitypoints";
       
      
      private var var_735:String;
      
      private var var_1129:String;
      
      private var var_1135:int;
      
      private var var_1681:String;
      
      private var var_1130:int;
      
      private var var_1131:int;
      
      private var var_1682:int;
      
      private var var_392:ICatalogPage;
      
      private var var_597:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2224:int = 0;
      
      private var var_2223:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1135 = param1;
         this.var_1681 = param2;
         this.var_1130 = param3;
         this.var_1131 = param4;
         this.var_1682 = param5;
         this.var_392 = param8;
         this.var_2224 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2224;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_392;
      }
      
      public function get offerId() : int
      {
         return this.var_1135;
      }
      
      public function get localizationId() : String
      {
         return this.var_1681;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1130;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1131;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1682;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_597;
      }
      
      public function get pricingModel() : String
      {
         return this.var_735;
      }
      
      public function get priceType() : String
      {
         return this.var_1129;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2223;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2223 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1135 = 0;
         this.var_1681 = "";
         this.var_1130 = 0;
         this.var_1131 = 0;
         this.var_1682 = 0;
         this.var_392 = null;
         if(this.var_597 != null)
         {
            this.var_597.dispose();
            this.var_597 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_735)
         {
            case const_401:
               this.var_597 = new SingleProductContainer(this,param1);
               break;
            case const_402:
               this.var_597 = new MultiProductContainer(this,param1);
               break;
            case const_621:
               this.var_597 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_735);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_735 = const_401;
            }
            else
            {
               this.var_735 = const_402;
            }
         }
         else if(param1.length > 1)
         {
            this.var_735 = const_621;
         }
         else
         {
            this.var_735 = const_1699;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1130 > 0 && this.var_1131 > 0)
         {
            this.var_1129 = const_1365;
         }
         else if(this.var_1130 > 0)
         {
            this.var_1129 = const_964;
         }
         else if(this.var_1131 > 0)
         {
            this.var_1129 = const_1158;
         }
         else
         {
            this.var_1129 = const_1780;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_392.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_597.products)
         {
            _loc4_ = this.var_392.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
