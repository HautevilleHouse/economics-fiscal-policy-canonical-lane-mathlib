import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalStock : Type v
  laborSupply : Type w
  technologyParameter : Type x
  steadyStateGrowth : Prop
  convergenceCondition : Prop
  steadyStateGrowthTerm : steadyStateGrowth
  convergenceConditionTerm : convergenceCondition

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateGrowthClosed : G.steadyStateGrowth
  convergenceConditionClosed : G.convergenceCondition

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyStateGrowth ∧ G.convergenceCondition

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.steadyStateGrowthClosed E.convergenceConditionClosed

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse