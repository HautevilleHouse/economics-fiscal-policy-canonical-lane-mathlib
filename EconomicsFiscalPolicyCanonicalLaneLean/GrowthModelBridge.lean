import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFiscalPolicyCanonicalLaneLean.OptimalTaxation

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  laborSupply : Prop
  technologicalProgress : Prop
  steadyStateGrowth : Prop

structure FiscalGrowthModelPackage where
  growthModel : GrowthModelPackage
  fiscalPolicy : FiscalPolicyPackage
  governmentSpendingMultiplier : ℝ
  debtToGDPRatio : Prop
  fiscalSustainability : Prop

structure FiscalGrowthModelEvidence (G : FiscalGrowthModelPackage) where
  steadyStateGrowthClosed : G.growthModel.steadyStateGrowth
  governmentSpendingMultiplierClosed : True
  fiscalSustainabilityClosed : G.fiscalSustainability

def FiscalGrowthModelClosed (G : FiscalGrowthModelPackage) : Prop :=
  G.growthModel.steadyStateGrowth ∧ G.fiscalSustainability

theorem fiscal_growth_model_closed_from_evidence (G : FiscalGrowthModelPackage) (E : FiscalGrowthModelEvidence G) : FiscalGrowthModelClosed G := by
  exact And.intro E.steadyStateGrowthClosed E.fiscalSustainabilityClosed

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse