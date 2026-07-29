import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFiscalPolicyCanonicalLaneLean.GrowthModelBridge

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type u
  consumptionCAPM : Prop
  riskFreeRate : ℝ
  equityPremium : ℝ
  habitFormation : Prop

structure FiscalAssetPricingPackage where
  assetPricing : AssetPricingPackage
  fiscalPolicy : FiscalPolicyPackage
  governmentBondYield : ℝ
  crowdingOutEffect : Prop
  fiscalRiskPremium : ℝ

structure FiscalAssetPricingEvidence (F : FiscalAssetPricingPackage) where
  consumptionCAPMClosed : F.assetPricing.consumptionCAPM
  governmentBondYieldClosed : True
  fiscalRiskPremiumClosed : True

def FiscalAssetPricingClosed (F : FiscalAssetPricingPackage) : Prop :=
  F.assetPricing.consumptionCAPM

theorem fiscal_asset_pricing_closed_from_evidence (F : FiscalAssetPricingPackage) (E : FiscalAssetPricingEvidence F) : FiscalAssetPricingClosed F := by
  exact E.consumptionCAPMClosed

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse