import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  stochasticDiscountFactor : Type v
  payoffMatrix : Type w
  noArbitrageCondition : Prop
  riskNeutralPricing : Prop
  completeMarket : Prop
  noArbitrageConditionTerm : noArbitrageCondition
  riskNeutralPricingTerm : riskNeutralPricing
  completeMarketTerm : completeMarket

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageConditionClosed : A.noArbitrageCondition
  riskNeutralPricingClosed : A.riskNeutralPricing
  completeMarketClosed : A.completeMarket

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrageCondition ∧ A.riskNeutralPricing ∧ A.completeMarket

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.noArbitrageConditionClosed (And.intro E.riskNeutralPricingClosed E.completeMarketClosed)

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse