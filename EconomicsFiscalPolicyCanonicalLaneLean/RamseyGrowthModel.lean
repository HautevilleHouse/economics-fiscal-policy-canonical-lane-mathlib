import EconomicsFiscalPolicyCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure RamseyGrowthModelPackage where
  householdSector : Type u
  firmSector : Type v
  governmentPolicy : Type w
  steadyStateExists : Prop
  optimalTaxation : Prop
  transitionDynamics : Prop
  fiscalMultiplier : Prop

structure RamseyGrowthModelEvidence (R : RamseyGrowthModelPackage) where
  steadyStateExistsClosed : R.steadyStateExists
  optimalTaxationClosed : R.optimalTaxation
  transitionDynamicsClosed : R.transitionDynamics
  fiscalMultiplierClosed : R.fiscalMultiplier

def RamseyGrowthModelClosed (R : RamseyGrowthModelPackage) : Prop :=
  R.steadyStateExists ∧ R.optimalTaxation ∧ R.transitionDynamics ∧ R.fiscalMultiplier

theorem ramsey_growth_model_closed_from_evidence (R : RamseyGrowthModelPackage)
    (E : RamseyGrowthModelEvidence R) : RamseyGrowthModelClosed R := by
  exact And.intro E.steadyStateExistsClosed
    (And.intro E.optimalTaxationClosed
      (And.intro E.transitionDynamicsClosed E.fiscalMultiplierClosed))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse