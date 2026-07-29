import EconomicsFiscalPolicyCanonicalLaneLean.RamseyGrowthModel

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure AssetPricingCAPMPackage where
  riskyAssets : Type u
  riskFreeRate : Prop
  marketPortfolio : Type v
  expectedReturns : Prop
  capitalMarketLine : Prop
  securityMarketLine : Prop
  betaPricing : Prop

structure AssetPricingCAPMEvidence (A : AssetPricingCAPMPackage) where
  riskFreeRateClosed : A.riskFreeRate
  expectedReturnsClosed : A.expectedReturns
  capitalMarketLineClosed : A.capitalMarketLine
  securityMarketLineClosed : A.securityMarketLine
  betaPricingClosed : A.betaPricing

def AssetPricingCAPMClosed (A : AssetPricingCAPMPackage) : Prop :=
  A.riskFreeRate ∧ A.expectedReturns ∧ A.capitalMarketLine ∧ A.securityMarketLine ∧ A.betaPricing

theorem asset_pricing_capm_closed_from_evidence (A : AssetPricingCAPMPackage)
    (E : AssetPricingCAPMEvidence A) : AssetPricingCAPMClosed A := by
  exact And.intro E.riskFreeRateClosed
    (And.intro E.expectedReturnsClosed
      (And.intro E.capitalMarketLineClosed
        (And.intro E.securityMarketLineClosed E.betaPricingClosed)))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse